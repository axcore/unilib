---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    badlands
-- Code:    LGPL-3.0
-- Media:   LGPL-3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_ore({
	ore_type        = "stratum",
	ore             = "bakedclay:orange",
	wherein         = {"default:stone", "default:silver_sandstone", "default:dirt", "default:silver_sand", "default:stone_with_coal", "default:gravel"},
	clust_scarcity  = 1,
	y_max           = 31000,
	y_min           = -10,
	fill_ratio = 10,
	biomes = {"badlands", "badlands_plains"},
})

for i = 0, 4 do

    minetest.register_ore({
        ore_type        = "stratum",
        ore             = "bakedclay:natural",
        wherein         = {"bakedclay:orange"},
        clust_scarcity  = 1,
        y_max           = 31000,
        y_min           = -10,
        noise_params    = {
            offset = 28 + i * 50,
            scale = 16,
            spread = {x = 128, y = 128, z = 128},
            seed = 90122,
            octaves = 1,
        },
        stratum_thickness = 2,
        biomes = {"badlands", "badlands_plains"},
    })

    minetest.register_ore({
        ore_type        = "stratum",
        ore             = "bakedclay:red",
        wherein         = {"bakedclay:orange"},
        clust_scarcity  = 1,
        y_max           = 31000,
        y_min           = -10,
        noise_params    = {
            offset = 23 + i * 8,
            scale = 16,
            spread = {x = 128, y = 128, z = 128},
            seed = 90122,
            octaves = 1,
        },
        stratum_thickness = 2,
        biomes = {"badlands", "badlands_plains"},
    })

    minetest.register_ore({
        ore_type        = "stratum",
        ore             = "bakedclay:yellow",
        wherein         = {"bakedclay:orange"},
        clust_scarcity  = 1,
        y_max           = 31000,
        y_min           = -10,
        noise_params    = {
            offset = 19 + i * 16,
            scale = 16,
            spread = {x = 128, y = 128, z = 128},
            seed = 90122,
            octaves = 1,
        },
        stratum_thickness = 1,
        biomes = {"badlands", "badlands_plains"},
    })

    minetest.register_ore({
        ore_type        = "stratum",
        ore             = "bakedclay:brown",
        wherein         = {"bakedclay:orange"},
        clust_scarcity  = 1,
        y_max           = 31000,
        y_min           = -10,
        noise_params    = {
            offset = 17 + i * 5,
            scale = 16,
            spread = {x = 128, y = 128, z = 128},
            seed = 90122,
            octaves = 1,
        },
        stratum_thickness = 1,
        biomes = {"badlands", "badlands_plains"},
    })

    minetest.register_ore({
        ore_type        = "stratum",
        ore             = "bakedclay:dark_grey",
        wherein         = {"bakedclay:orange"},
        clust_scarcity  = 1,
        y_max           = 31000,
        y_min           = -10,
        noise_params    = {
            offset = 16 + i * 12,
            scale = 16,
            spread = {x = 128, y = 128, z = 128},
            seed = 90122,
            octaves = 1,
        },
        stratum_thickness = 1,
        biomes = {"badlands", "badlands_plains"},
    })

    minetest.register_ore({
        ore_type        = "stratum",
        ore             = "bakedclay:grey",
        wherein         = {"bakedclay:orange"},
        clust_scarcity  = 1,
        y_max           = 31000,
        y_min           = -10,
        noise_params    = {
            offset = 14 + i * 30,
            scale = 16,
            spread = {x = 128, y = 128, z = 128},
            seed = 90122,
            octaves = 1,
        },
        stratum_thickness = 1,
        biomes = {"badlands", "badlands_plains"},
    })

end
]]--
