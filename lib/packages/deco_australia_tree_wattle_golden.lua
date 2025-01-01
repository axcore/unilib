---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_australia_tree_wattle_golden = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_australia_tree_wattle_golden.init()

    return {
        description = "Golden wattle tree as decoration",
        depends = "tree_wattle_golden",
        optional = {
            "biome_australia_flinders_lofty",
            "biome_australia_great_dividing_range",
            "biome_australia_murray_darling_basin",
            "biome_australia_victorian_forests",
            "dirt_custom_antipodean",
            "dirt_ordinary",
        },
    }

end

function unilib.pkg.deco_australia_tree_wattle_golden.post()

    if unilib.global.pkg_executed_table["biome_australia_flinders_lofty"] ~= nil and (
        unilib.global.pkg_executed_table["dirt_custom_antipodean"] ~= nil or
        unilib.global.pkg_executed_table["dirt_ordinary"] ~= nil
    ) then

        for i = 1, 2 do

            unilib.register_decoration_complete(
                -- From australia/biome_flinders_lofty.lua
                "australia_tree_wattle_golden_in_flinders_" .. i,
                nil,
                {
                    biomes = "australia_flinders_lofty",
                    place_on = {
                        "unilib:dirt_ordinary_with_turf_dry",
                        "unilib:dirt_ordinary_with_turf_flinders_lofty",
                    },
                    y_max = 170,
                    y_min = 36,
                }
            )

        end

    end
    if unilib.global.pkg_executed_table["biome_australia_murray_darling_basin"] ~= nil and (
        unilib.global.pkg_executed_table["dirt_custom_antipodean"] ~= nil or
        unilib.global.pkg_executed_table["dirt_ordinary"] ~= nil
    ) then

        for i = 1, 2 do

            unilib.register_decoration_complete(
                -- From australia/biome_murray_darling_basin.lua
                "australia_tree_wattle_golden_in_murray_" .. i,
                nil,
                {
                    biomes = "australia_murray_darling_basin",
                    place_on = {
                        "unilib:dirt_ordinary_with_turf_dry",
                        "unilib:dirt_ordinary_with_turf_murray_darling_basin",
                    },
                    y_max = 150,
                    y_min = 36,
                }
            )

        end

    end
    if unilib.global.pkg_executed_table["biome_australia_great_dividing_range"] ~= nil and (
        unilib.global.pkg_executed_table["dirt_custom_antipodean"] ~= nil or
        unilib.global.pkg_executed_table["dirt_ordinary"] ~= nil
    ) then

        for i = 1, 2 do

            unilib.register_decoration_complete(
                -- From australia/biome_great_dividing_range.lua
                "australia_tree_wattle_golden_in_range_" .. i,
                nil,
                {
                    biomes = "australia_great_dividing_range",
                    place_on = {
                        "unilib:dirt_ordinary_with_turf",
                        "unilib:dirt_antipodean_with_turf_great_dividing_range",
                    },
                    y_max = 150,
                    y_min = 36,
                }
            )

        end

    end
    if unilib.global.pkg_executed_table["biome_australia_victorian_forests"] ~= nil and (
        unilib.global.pkg_executed_table["dirt_custom_antipodean"] ~= nil or
        unilib.global.pkg_executed_table["dirt_ordinary"] ~= nil
    ) then

        for i = 1, 2 do

            unilib.register_decoration_complete(
                -- From australia/biome_victorian_forests.lua
                "australia_tree_wattle_golden_in_victoria_" .. i,
                nil,
                {
                    biomes = "australia_victorian_forests",
                    place_on = {
                        "unilib:dirt_ordinary_with_turf",
                        "unilib:dirt_antipodean_dark_with_turf_victorian_forests",
                    },
                    y_max = 150,
                    y_min = 36,
                }
            )

        end

    end

end
