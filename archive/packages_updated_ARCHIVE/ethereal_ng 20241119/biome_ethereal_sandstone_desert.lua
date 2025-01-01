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
register_biome(ethereal.sandstone, {
	name = "sandstone_desert",
	heat_point = old and 50 or 60, humidity_point = old and 20 or 0,
	y_min = 3, y_max = 23,
	node_top = "default:sandstone", depth_top = 1,
	node_filler = "default:sandstone", depth_filler = 1,
	node_stone = "default:sandstone",
	node_dungeon_alt = "",
	node_dungeon = "default:sandstone",
	node_dungeon_stair = "stairs:stair_sandstone"})

register_biome(ethereal.sandstone, {
	name = "sandstone_desert_ocean",
	heat_point = old and 50 or 60, humidity_point = old and 20 or 0,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2,
	node_stone = "default:sandstone",
	node_dungeon_alt = "",
	node_dungeon = "default:sandstone",
	node_dungeon_stair = "stairs:stair_sandstone"})

register_biome(ethereal.sandstone, {
	name = "sandstone_desert_under",
	heat_point = old and 50 or 60, humidity_point = old and 20 or 0,
	y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})
]]--
