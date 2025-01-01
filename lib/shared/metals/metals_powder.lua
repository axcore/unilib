---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- metals_powder.lua
--      API functions for metal powders
---------------------------------------------------------------------------------------------------

local S = unilib.intllib

---------------------------------------------------------------------------------------------------
-- API functions for metal powders
---------------------------------------------------------------------------------------------------

function unilib.metals._register_metal_powder(data_table)

    -- Adapted from technic/technic/machines/register/grinder_recipes.lua and xtraores/init.lua
    -- Creates a metal powder item (the equivalent to dust in technic's original code)
    -- If technic is available, additional recipes are provided (for example, to grind lumps/ingots
    --      into powder)
    -- Note that metal samples can't be ground into powder; neither can metal chunks (the equivalent
    --      of crystals)
    --
    -- data_table compulsory fields:
    --      part_name (str): e.g. "planexium"
    --      orig_name (str): e.g. "xtraores:platinum_dust"
    --
    -- data_table optional fields:
    --      replace_mode (str): e.g. "defer"
    --      description (str): e.g. "Planexium Powder"
    --      ingot_time (int): Grinding time for converting ingots into powder, in seconds
    --      lump_time (int): Grinding time for converting lumps into powder, in seconds
    --      no_lump_flag (bool): If true, there is no lump, only an ingot
    --
    -- Return values:
    --      The full_name of the new craftitem, or nil if technic is not available

    local part_name = data_table.part_name
    local orig_name = data_table.orig_name

    local replace_mode = data_table.replace_mode or unilib.default_replace_mode
    local description = data_table.description or S("Metal Powder")
    local ingot_time = data_table.ingot_time or 3
    local lump_time = data_table.lump_time or 3
    local no_lump_flag = data_table.no_lump_flag or false

    local full_name = "unilib:metal_" .. part_name .. "_powder"

    unilib.register_craftitem(full_name, orig_name, replace_mode, {
        description = description,
        inventory_image = "unilib_metal_" .. part_name .. "_powder.png",
    })
    unilib.register_craft({
        type = "cooking",
        output = "unilib:metal_" .. part_name .. "_ingot",
        recipe = "unilib:metal_" .. part_name .. "_powder",
    })

    if unilib.setting.technic_update_flag then

        if not no_lump_flag then

            technic.register_grinder_recipe({
                output = "unilib:metal_" .. part_name .. "_powder " ..
                        tostring(unilib.setting.technic_grind_metal_ratio),
                input = {"unilib:metal_" .. part_name .. "_lump"},
                time = lump_time,
            })

        end
        technic.register_grinder_recipe({
            output = "unilib:metal_" .. part_name .. "_powder",
            input = {"unilib:metal_" .. part_name .. "_ingot"},
            time = ingot_time,
        })

    end

    return full_name

end

function unilib.metals._register_metal_powder_from_mineral(data_table)

    -- Original to unilib
    -- Creates a metal powder item (the equivalent to dust in technic's original code)
    -- If technic is not available, the powder is exactly like that generated by a call to
    --      unilib.register_metal_powder()
    -- If technic is available, the powder is created by grinding a mineral lump (e.g. bauxite >
    --      aluminium powder > aluminium ingot)
    --
    -- data_table compulsory fields:
    --      orig_name (str): e.g. "fakemod:aluminium_dust"
    --      metal_part_name (str): e.g. "aluminium", from unilib:metal_aluminium_ingot
    --      mineral_part_name (str or list): e.g. "bauxite", from unilib:mineral_bauxite_lump. Use
    --          a list when several mineral lumps make the same metal powder (as in the
    --          "metal_copper_rare" package)
    --
    -- data_table optional fields:
    --      replace_mode (str): e.g. "defer"
    --      description (str): e.g. "Aluminium Powder"
    --      ingot_time (int): Grinding time for converting ingots into powder, in seconds
    --      lump_time (int): Grinding time for converting lumps into powder, in seconds
    --
    -- Return values:
    --      The full_name of the new craftitem, or nil if technic is not available

    local orig_name = data_table.orig_name
    local metal_part_name = data_table.metal_part_name
    local mineral_part_name = data_table.mineral_part_name

    local replace_mode = data_table.replace_mode or unilib.default_replace_mode
    local description = data_table.description or S("Metal Powder")
    local ingot_time = data_table.ingot_time or 3
    local lump_time = data_table.lump_time or 3

    local full_name = "unilib:metal_" .. metal_part_name .. "_powder"

    unilib.register_craftitem(full_name, orig_name, replace_mode, {
        description = description,
        inventory_image = "unilib_metal_" .. metal_part_name .. "_powder.png",
    })
    unilib.register_craft({
        type = "cooking",
        output = "unilib:metal_" .. metal_part_name .. "_ingot",
        recipe = "unilib:metal_" .. metal_part_name .. "_powder",
    })

    if unilib.technic_update_flag then

        local mineral_part_name_list = unilib.utils.convert_to_list(mineral_part_name)
        for _, this_mineral_part_name in ipairs(mineral_part_name_list) do

            technic.register_grinder_recipe({
                output = full_name .. " " .. tostring(unilib.setting.technic_grind_mineral_ratio),
                input = {"unilib:mineral_" .. this_mineral_part_name .. "_lump"},
                time = lump_time,
            })

        end
        technic.register_grinder_recipe({
            output = "unilib:metal_" .. metal_part_name .. "_powder",
            input = {"unilib:metal_" .. metal_part_name .. "_ingot"},
            time = ingot_time,
        })

    end

    return full_name

end
