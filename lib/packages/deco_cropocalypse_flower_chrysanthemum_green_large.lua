---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cropocalypse
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_cropocalypse_flower_chrysanthemum_green_large = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.cropocalypse.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_cropocalypse_flower_chrysanthemum_green_large.init()

    return {
        description = "Large green chrysanthemum as decoration",
        depends = {"dirt_ordinary", "flower_chrysanthemum_green_large"},
        at_least_one = {"biome_default_forest_deciduous", "biome_default_grassland"},
    }

end

function unilib.pkg.deco_cropocalypse_flower_chrysanthemum_green_large.post()

    unilib.register_decoration_now("cropocalypse_flower_chrysanthemum_green_large", nil, {
        -- Original to unilib, adapted from the equivalent decoration in the "flowers" mod
        -- Completes decoration in package "flower_chrysanthemum_green_large"
        biomes = {"default_forest_deciduous", "default_grassland"},
        place_on = "unilib:dirt_ordinary_with_turf",
        y_max = unilib.y_max,
        y_min = 1,
    })

end
