---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cropocalypse
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_cropocalypse_mushroom_button_wild = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.cropocalypse.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_cropocalypse_mushroom_button_wild.init()

    return {
        description = "Wild button mushroom as decoration",
        depends = {"biome_default_forest_coniferous", "dirt_ordinary", "mushroom_button_wild"},
    }

end

function unilib.pkg.deco_cropocalypse_mushroom_button_wild.post()

    unilib.register_decoration_complete("cropocalypse_mushroom_button_wild", nil, {
        -- From cropocalypse/plants.lua
        -- Completes decoration in package "mushroom_button_wild"
        biomes = "default_forest_coniferous",
        place_on = "unilib:dirt_ordinary_with_litter_coniferous",
        y_max = unilib.constant.y_max,
        y_min = 1,
    })

end
