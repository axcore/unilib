---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cropocalypse
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_cropocalypse_flower_lily_chocolate = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.cropocalypse.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_cropocalypse_flower_lily_chocolate.init()

    return {
        description = "Chocolate lily as decoration",
        depends = "flower_lily_chocolate",
        at_least_one = {"biome_default_forest_coniferous", "biome_default_forest_deciduous"},
    }

end

function unilib.pkg.deco_cropocalypse_flower_lily_chocolate.post()

    unilib.register_decoration_now("cropocalypse_flower_lily_chocolate", nil, {
        -- From cropocalypse/decorative_plants.lua
        -- Completes decoration in package "flower_lily_chocolate"
        biomes = {"default_forest_coniferous", "default_forest_deciduous"},
        place_on = {"group:sand", "group:soil"},
        y_max = unilib.y_max,
        y_min = 1,
    })

end
