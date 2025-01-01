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
register_biome(ethereal.junglee, {
	name = "rainforest",
	heat_point = old and 30 or 86, humidity_point = old and 60 or 65,
	y_min = 1, y_max = 71,
	node_top = "default:dirt_with_rainforest_litter", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.junglee, {
	name = "rainforest_ocean",
	heat_point = old and 30 or 86, humidity_point = old and 60 or 65,
	y_min = -192, y_max = 0,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.junglee, {
	name = "rainforest_under",
	heat_point = old and 30 or 86, humidity_point = old and 60 or 65,
	y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})
]]--
