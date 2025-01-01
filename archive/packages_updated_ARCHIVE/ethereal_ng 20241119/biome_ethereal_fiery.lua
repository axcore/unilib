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
register_biome(ethereal.fiery, {
	name = "fiery",
	heat_point = old and 75 or 80, humidity_point = 10,
	y_min = 5, y_max = 20,
	node_top = "ethereal:fiery_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.fiery, {
	name = "fiery_beach",
	heat_point = old and 75 or 80, humidity_point = 10,
	y_min = 1, y_max = 4,
	node_top = "default:desert_sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.fiery, {
	name = "fiery_ocean",
	heat_point = old and 75 or 80, humidity_point = 10,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.fiery, {
	name = "fiery_under",
	heat_point = old and 75 or 80, humidity_point = 10,
	y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:lava_source"}})
]]--
