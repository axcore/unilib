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
register_biome(1, {
	name = "grassland",
	heat_point = old and 45 or 50, humidity_point = old and 65 or 35,
	y_min = 3, y_max = 71,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(1, {
	name = "grassland_ocean",
	heat_point = old and 45 or 50, humidity_point = old and 65 or 35,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3})

register_biome(1, {
	name = "grassland_under",
	node_cave_liquid = {"default:water_source", "default:lava_source"},
	heat_point = old and 45 or 50, humidity_point = old and 65 or 35,
	y_min = -31000, y_max = -256})
]]--
