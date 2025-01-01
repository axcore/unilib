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
register_biome(ethereal.desert, {
	name = "desert",
	heat_point = old and 35 or 92, humidity_point = old and 20 or 16,
	y_min = 3, y_max = 23,
	node_top = "default:desert_sand", depth_top = 1,
	node_filler = "default:desert_sand", depth_filler = 3,
	node_stone = "default:desert_stone",
	node_dungeon_alt = "default:desert_cobble",
	node_dungeon = "default:desert_stone",
	node_dungeon_stair = "stairs:stair_desert_stone"})

register_biome(ethereal.desert, {
	name = "desert_ocean",
	heat_point = old and 35 or 92, humidity_point = old and 20 or 16,
	y_min = -192, y_max = 3,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2,
	node_stone = "default:desert_stone",
	node_dungeon_alt = "default:desert_cobble",
	node_dungeon = "default:desert_stone",
	node_dungeon_stair = "stairs:stair_desert_stone"})

register_biome(ethereal.desert, {
	name = "desert_under",
	heat_point = old and 35 or 92, humidity_point = old and 20 or 16,
	y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})
]]--
