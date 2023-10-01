---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    better_farming
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_decoration({
	name = "better_farming:jute_3",
	deco_type = "simple",
	place_on = {"default:dirt_with_coniferous_litter"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.1,
		spread = {x = 50, y = 50, z = 50},
		seed = 4025,
		octaves = 3,
		persist = 1.1
	},
	biomes = {"coniferous_forest"},
	y_max = 31000,
	y_min = 1,
	decoration = "better_farming:jute_3",
	param2 = 3,
})
]]--
