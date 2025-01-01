---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng (20241119 update)
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
	register_biome(ethereal.cold_desert, {
		name = "c",
		heat_point = 20, humidity_point = 85, y_min = 4, y_max = 100,
		node_top = "default:silver_sand", depth_top = 1,
		node_filler = "default:silver_sand", depth_filler = 1,
		node_riverbed = "default:silver_sand", depth_riverbed = 2})

	register_biome(ethereal.cold_desert, {
		name = "cold_desert_ocean",
		heat_point = 20, humidity_point = 85, y_min = -255, y_max = 3,
		node_top = "default:sand", depth_top = 1,
		node_filler = "default:sand", depth_filler = 3,
		node_cave_liquid = "default:water_source",
		vertical_blend = 1})

	register_biome(ethereal.cold_desert, {
		name = "cold_desert_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		heat_point = 20, humidity_point = 85, y_min = -31000, y_max = -256})
]]--
