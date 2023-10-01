---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_australia_tree_merbau = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_australia_tree_merbau.init()

    return {
        description = "Merbau tree as decoration",
        depends = {"biome_australia_far_north_queensland", "dirt_ordinary", "tree_merbau"},
    }

end

function unilib.pkg.deco_australia_tree_merbau.post()

    for i = 1, 5 do

        unilib.register_decoration_now("australia_tree_merbau_in_queensland_" .. i, nil, {
            -- From australia/biome_far_north_queensland.lua
            biomes = "australia_far_north_queensland",
            place_on = "unilib:dirt_ordinary_with_turf",
            y_max = 25,
            y_min = 6,
        })

    end

end
