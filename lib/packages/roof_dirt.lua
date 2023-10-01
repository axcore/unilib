---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    earthbuild
-- Code:    GPLv3
-- Media:   CC BY-SA 3.0 Unported
---------------------------------------------------------------------------------------------------

unilib.pkg.roof_dirt = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.earthbuild.add_mode

---------------------------------------------------------------------------------------------------
-- Local functions
---------------------------------------------------------------------------------------------------

local function do_register(data_table)

    -- Adapted from earthbuild/roofing.lua
    -- Creates a roofing item post based on a tree type
    --
    -- data_table compulsory fields:
    --      part_name (str): e.g. "aspen", a key in unilib.tree_table
    --      orig_name (str): e.g. "earthbuild:aspen_wood_supported_rammed_earth"
    --
    -- data_table optional fields:
    --      description (str): e.g. "Aspen Wood"
    --      ingredient (str): e.g. "unilib:tree_aspen_wood"
    --
    -- Return values:
    --      The full_name of the new node

    local part_name = data_table.part_name
    local orig_name = data_table.orig_name

    local replace_mode = data_table.replace_mode or unilib.default_replace_mode
    local description = data_table.description or S("Wood")
    local ingredient = data_table.ingredient or "unilib:tree_" .. part_name .. "_wood"

    local full_name = "unilib:roof_dirt_with_wood_" .. part_name

    unilib.register_node(full_name, orig_name, replace_mode, {
        description = unilib.brackets(S("Dirt Roofing"), description),
        tiles = {
            "unilib_dirt_rammed_top.png",
            "unilib_tree_" .. part_name .. "_wood.png",
            "unilib_roof_dirt_with_wood_" .. part_name .. ".png",
            "unilib_roof_dirt_with_wood_" .. part_name .. ".png",
            "unilib_roof_dirt_with_wood_" .. part_name .. ".png",
            "unilib_roof_dirt_with_wood_" .. part_name .. ".png",
        },
        groups = {choppy = 2, cracky = 3, crumbly = 1, flammable = 1},
        sounds = unilib.sound_table.dirt,

        drawtype = "normal",
        paramtype = "light",
    })
    unilib.register_craft({
        output = full_name .. " 3",
        recipe = {
            {"unilib:dirt_rammed", "unilib:dirt_rammed", "unilib:dirt_rammed"},
            {ingredient, "", ""},
            {"", "", ""},
        },
    })

end

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.roof_dirt.init()

    return {
        description = "Supported dirt roofing set",
        notes = "This package creates roofing items from a limited range of super trees",
        depends = "dirt_rammed",
    }

end

function unilib.pkg.roof_dirt.post()

    local tree_list = {
        -- minetest_game trees
        {
            part_name = "acacia",
            orig_name = "earthbuild:acacia_wood_supported_rammed_earth",
        },
        {
            part_name = "apple",
            orig_name = "earthbuild:supported_rammed_earth",
        },
        {
            part_name = "aspen",
            orig_name = "earthbuild:aspen_wood_supported_rammed_earth",
        },
        {
            part_name = "jungle",
            orig_name = "earthbuild:junglewood_supported_rammed_earth",
        },
        {
            part_name = "pine",
            orig_name = "earthbuild:pine_wood_supported_rammed_earth",
        },
    }

    for _, mini_table in pairs(tree_list) do

        local data_table = unilib.tree_table[mini_table.part_name]
        local ingredient = "unilib:tree_" .. mini_table.part_name .. "_wood"

        if unilib.super_tree_table[mini_table.part_name] ~= nil and
                unilib.pkg_executed_table["tree_" .. mini_table.part_name] ~= nil and
                minetest.registered_nodes[ingredient] ~= nil then

            do_register({
                part_name = mini_table.part_name,
                orig_name = mini_table.orig_name,

                replace_mode = mode,
                description = S("supported with @1", data_table.description),
                ingredient = ingredient,
            })

        end

    end

end
