---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- fertiliser.lua
--      Shared functions for fertiliser
---------------------------------------------------------------------------------------------------

local S = unilib.intllib

-- Table used in calls to check_soil(), so that calculations for each node only need to be
--      performed once
local fertilise_table = {}

---------------------------------------------------------------------------------------------------
-- Local functions
---------------------------------------------------------------------------------------------------

local function particle_effect(pos)

    -- Adapted from bonemeal/init.lua
    -- Shows particles when fertiliser is applied to something suitable (whether growth occurs on
    --      not)

    minetest.add_particlespawner({
        amount = 4,
        time = 0.15,
        minpos = pos,
        maxpos = pos,
        minvel = {x = -1, y = 2, z = -1},
        maxvel = {x = 1, y = 4, z = 1},
        minacc = {x = -1, y = -1, z = -1},
        maxacc = {x = 1, y = 1, z = 1},
        minexptime = 1,
        maxexptime = 1,
        minsize = 1,
        maxsize = 3,
        texture = "unilib_item_fertiliser_particle.png"
    })

end

local function check_soil(pos, nodename, strength)

    -- Adapted from bonemeal/init.lua
    -- When fertiliser is used directly on dirt/soil/sand, grow grass/flowers/plants/crops/produce
    --      in appropriate quantities

    -- Set the bounds of the area, according to fertiliser strength
    local side = strength - 1
    local tall = math.max(strength - 2, 0)

    -- Within that area, only place decorations on the same type of surface (any kind of soil any
    --      kind of sand, or the exact same node)
    local group_table = (
        minetest.registered_items[nodename] and
        minetest.registered_items[nodename].groups
    ) or {}

    local ground

    if group_table.soil then
        ground = {"group:soil"}
    elseif group_table.sand then
        ground = {"group:sand"}
    else
        ground = {nodename}
    end

    -- A list of nodes on which a decoration can be placed. Each item on the list is a table in
    --      the form {x, y, z}
    local dirt_list = minetest.find_nodes_in_area_under_air(
        {x = pos.x - side, y = pos.y - tall, z = pos.z - side},
        {x = pos.x + side, y = pos.y + tall, z = pos.z + side},
        ground
    )

    -- Search decorations, looking for decorations which are allowed to grow on "nodename" (unlike
    --      the original mod, there is not a fixed list of suitable decorations)
    -- Split the decorations into three lists: common, uncommon and rare
    local common_list = {}
    local uncommon_list = {}
    local rare_list = {}

    if fertilise_table[nodename] == nil then

        -- Performing this calculation for the first time with nodename
        local biome_table = minetest.get_biome_data(pos)
        local biome_name = minetest.get_biome_name(biome_table.biome)
        for _, def_table in pairs(minetest.registered_decorations) do

            if def_table.deco_type == "simple" and
            def_table.spawn_by == nil and (
                def_table.biomes == nil or
                unilib.is_value_scalar_or_in_list(biome_name, def_table.biomes)
            ) and (
                def_table.place_on == nil or
                def_table.place_on == nodename
            ) and (
                def_table.y_min == nil
                or def_table.y_min <= pos.y
            ) and (
                def_table.y_max == nil
                or def_table.y_max >= pos.y
            ) then

                category = unilib.get_first_component(def_table.decoration)
                if category == "grass" then
                    table.insert(common_list, def_table.decoration)
                elseif category == "flower" or category == "plant" then
                    table.insert(uncommon_list, def_table.decoration)
                elseif category == "crop" or category == "produce" then
                    table.insert(rare_list, def_table.decoration)
                end

            end

        end

        -- Store the results, so this calculation only has to be done once
        fertilise_table[nodename] = {
            common_list = common_list,
            uncommon_list = uncommon_list,
            rare_list = rare_list,
        }

    else

        -- We have already perfomed this calculation with nodename
        mini_table = fertilise_table[nodename]
        common_list = mini_table.common_list
        uncommon_list = mini_table.uncommon_list
        rare_list = mini_table.rare_list

    end

    -- Walk dirt_list, randomly placing decorations in available positions
    -- (The original code used math.random(5) and no "uncommon_list")
    for _, this_pos in pairs(dirt_list) do

        local placeable = ""
        local rand = math.random(10)

        if rand == 1 then

            if #rare_list > 0 then

                local drare = #rare_list or 1
                placeable = rare_list[math.random(drare)] or ""

            end

        elseif rand <= 3 then

            if #uncommon_list > 0 then

                local drare = #uncommon_list or 1
                placeable = uncommon_list[math.random(drare)] or ""

            end

        elseif rand <= 6 then

            if #common_list > 0 then

                local dcommon = #common_list or 1
                placeable = common_list[math.random(dcommon)] or ""

            end

        end

        -- (The decoration is placed on the soil, not inside it)
        local above_pos = this_pos
        above_pos.y = above_pos.y + 1

        if placeable ~= "" then

            -- get crop param2 value
            local this_def_table = minetest.registered_nodes[placeable]
            this_def_table = this_def_table and this_def_table.place_param2

            -- if param2 not preset then get from existing node
            if not this_def_table then

                local node = minetest.get_node_or_nil(above_pos)
                this_def_table = node and node.param2 or 0

            end

            minetest.set_node(above_pos, {name = placeable, param2 = this_def_table})

        end

        particle_effect(above_pos)

    end

end

local function check_sapling(pos, nodename)

    -- Adapted from bonemeal/init.lua
    -- Check for tree/bush growth when pointing at saplings
    -- This code has been tested with both schematic-based trees and L-system trees

    -- On what is the sapling placed?
    local under = minetest.get_node({
        x = pos.x,
        y = pos.y - 1,
        z = pos.z
    })

    if unilib.can_grow_sapling(pos, nodename) then

        -- At the moment, only tree and bush saplings exist
        category = unilib.get_first_component(nodename)
        if category == "tree" then

            particle_effect(pos)
            unilib.grow_tree_sapling(pos, nodename)
            return true

        elseif category == "bush" then

            particle_effect(pos)
            unilib.grow_bush_sapling(pos, nodename)
            return true

        end

    end

end

local function check_crops(pos, full_name, strength)

    -- Adapted from bonemeal/init.lua
    -- Check for crop/produce growth when pointing at them

    local data_table = unilib.grow_stage_table[full_name]
    if data_table == nil or (data_table.mode ~= "crop" and data_table.mode ~= "produce") then
        return
    end

    -- Increase the growth stage of the crop/produce by "strength"
    local new_name = data_table.base_name .. "_" ..
            math.min(data_table.stage + strength, data_table.max)

    -- Check for the place_param setting
    local def_table = minetest.registered_nodes[new_name]
    local place_param2 = def_table and def_table.place_param2 or 0
    minetest.set_node(pos, {name = new_name, param2 = place_param2})
        article_effect(pos)

    return true

end

---------------------------------------------------------------------------------------------------
-- Shared functions
---------------------------------------------------------------------------------------------------

function unilib.register_special_fertilise(full_name, func)

    -- Original to unilib
    -- Any items (cactus, papyrus etc) that require special code when a fertiliser (bonemeal, etc)
    --      is used on them should call this function
    --
    -- Args:
    --      full_name (str): e.g. "unilib:plant_cactus_ordinary"
    --      func (function): The function to call

    unilib.special_fertiliser_table[full_name] = func

end

function unilib.use_fertiliser(pos, strength, node)

    -- Adapted from bonemeal/init.lua, bonemeal:on_use()

    -- Get node at which we're pointing
    local node = node or minetest.get_node(pos)
    if node.name == "ignore" then
        return
    end

    -- Make sure strength is between 1 and 4
    -- N.B. No code adapted from the bonemeal mod (or from any other mod) uses strength 4
    strength = strength or 1
    strength = math.max(strength, 1)
    strength = math.min(strength, 4)

    -- Items for which special functions exist (cactus, papyrus, etc)
    if unilib.special_fertiliser_table[node.name] ~= nil then

        unilib.special_fertiliser_table[node.name](pos, node)
        particle_effect(pos)
        return true

    end

    -- When fertiliser is used directly on dirt/soil/sand, grow grass/flowers/plants/crops/produce
    --      in appropriate quantities
    if minetest.get_item_group(node.name, "soil") > 0
    or minetest.get_item_group(node.name, "sand") > 0
    or minetest.get_item_group(node.name, "can_bonemeal") > 0 then

        check_soil(pos, node.name, strength)
        return true

    end

    -- Check for tree/bush growth when pointing at saplings
    if minetest.get_item_group(node.name, "sapling") > 0 then

        if math.random(5 - strength) == 1 then

            check_sapling(pos, node.name)
            return true

        else

            return

        end

    end

    -- Light check depending on strength (strength of 4 = no light needed)
    if (minetest.get_node_light(pos) or 0) < (12 - (strength * 3)) then
        return
    end

    -- Check for crop/produce growth when pointing at them
    if check_crops(pos, node.name, strength) then
        return true
    end

end
