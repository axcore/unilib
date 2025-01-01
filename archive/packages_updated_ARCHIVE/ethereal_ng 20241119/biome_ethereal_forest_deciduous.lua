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
register_biome(ethereal.grassy, {
	name = "deciduous_forest",
	heat_point = old and 13 or 60, humidity_point = old and 40 or 68,
	y_min = 3, y_max = 91,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.grassy, {
	name = "deciduous_forest_ocean",
	heat_point = old and 13 or 60, humidity_point = old and 40 or 68,
	y_min = -31000, y_max = 3,
	node_top = "default:sand", depth_top = 2,
	node_filler = "default:gravel", depth_filler = 1})

register_biome(ethereal.grassy, {
	name = "deciduous_forest_under",
	heat_point = old and 13 or 60, humidity_point = old and 40 or 68,
	y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})
]]--
