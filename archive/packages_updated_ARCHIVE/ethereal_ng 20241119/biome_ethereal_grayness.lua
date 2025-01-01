---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
register_biome(ethereal.grayness, {
	name = "grayness",
	heat_point = 15, humidity_point = old and 25 or 30,
	y_min = 2, y_max = 41,
	node_top = "ethereal:gray_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.grayness, {
	name = "grayness_ocean",
	heat_point = 15, humidity_point = old and 25 or 30,
	y_min = -22, y_max = 2,
	node_top = "default:silver_sand", depth_top = 2,
	node_filler = "default:sand", depth_filler = 2,
	node_stone = "ethereal:blue_marble",
	node_dungeon_alt = "",
	node_dungeon = "ethereal:blue_marble",
	node_dungeon_stair = "stairs:stair_blue_marble"})

register_biome(ethereal.grayness, {
	name = "grayness_under",
	heat_point = 15, humidity_point = old and 25 or 30,
	y_min = -31000, y_max = -23,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})
]]--
