---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_australia_tree_paperbark_swamp = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_australia_tree_paperbark_swamp.init()

    return {
        description = "Swamp paperbark tree as decoration",
        depends = {"biome_australia_jarrah_karri_forests", "tree_paperbark_swamp"},
        at_least_one = {"dirt_custom_antipodean", "dirt_ordinary"},
    }

end

function unilib.pkg.deco_australia_tree_paperbark_swamp.post()

    for i = 1, 2 do

        unilib.register_decoration_complete(
            -- From australia/biome_jarrah_karri_forests.lua
            "australia_tree_paperbark_swamp_in_forests_" .. i,
            nil,
            {
                biomes = "australia_jarrah_karri_forests",
                place_on = {
                    "unilib:dirt_ordinary_with_turf",
                    "unilib:dirt_antipodean_dark_with_turf_jarrah_karri_forests",
                },
                y_max = 25,
                y_min = 7,
            }
        )

    end

end
