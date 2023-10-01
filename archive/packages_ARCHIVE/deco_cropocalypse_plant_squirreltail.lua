---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cropocalypse
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_decoration({
	name = "cropocalypse:squirrel_tail",
	deco_type = "simple",
	place_on = {"group:soil","group:sand","default:permafrost_with_stones","default:permafrost_with_moss"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.35,
		spread = {x = 10, y = 10, z = 10},
		seed = 8505,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"deciduous_forest","savanna","grassland","cold_desert","tundra"},
	y_max = 31000,
	y_min = 1,
	decoration = "cropocalypse:squirrel_tail",
})
]]--
