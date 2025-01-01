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
register_biome(ethereal.savanna, {
	name = "savanna",
	heat_point = old and 55 or 89, humidity_point = old and 25 or 42,
	y_min = 3, y_max = 50,
	node_top = "default:dry_dirt_with_dry_grass", depth_top = 1,
	node_filler = "default:dry_dirt", depth_filler = 3})

register_biome(ethereal.savanna, {
	name = "savanna_ocean",
	heat_point = old and 55 or 89, humidity_point = old and 25 or 42,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})

register_biome(ethereal.savanna, {
	name = "savanna_under",
	heat_point = old and 55 or 89, humidity_point = old and 25 or 42,
	y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})
]]--
