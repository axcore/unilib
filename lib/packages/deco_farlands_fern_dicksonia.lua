---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    farlands
-- Code:    LGPL 2.1
-- Media:   CC-BY-SA 3.0 UNPORTED
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_farlands_fern_dicksonia = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.farlands.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_farlands_fern_dicksonia.init()

    return {
        description = "Dicksonia as decoration",
        depends = {
            "biome_farlands_rainforest",
            "dirt_ordinary_with_turf_forest",
            "fern_dicksonia",
        },
    }

end

function unilib.pkg.deco_farlands_fern_dicksonia.post()

    unilib.register_decoration_now("farlands_fern_dicksonia", nil, {
        -- From farlands, mapgen/mapgen.lua
        -- Completes decoration in package "fern_dicksonia"
        biomes = "farlands_rainforest",
        place_on = "unilib:dirt_ordinary_with_turf_forest",
    })

end

