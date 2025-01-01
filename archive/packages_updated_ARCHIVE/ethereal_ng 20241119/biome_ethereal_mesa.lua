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
register_biome(ethereal.mesa, {
	name = "mesa",
	heat_point = 25, humidity_point = old and 28 or 10,
	y_min = 18, y_max = 71,
	node_top = old and "default:dirt_with_dry_grass" or "bakedclay:orange", depth_top = 1,
	node_filler = "bakedclay:orange", depth_filler = 15,
	node_riverbed = "default:desert_sand", depth_riverbed = 2,
	node_dungeon_alt = "default:desert_sandstone",
	node_dungeon = "default:desert_sandstone_brick",
	node_dungeon_stair = "stairs:stair_desert_sandstone_brick"})

register_biome(ethereal.mesa, {
	name = "mesa_redwood",
	heat_point = 25, humidity_point = old and 28 or 10,
	y_min = 11, y_max = 17,
	node_top = "default:dirt_with_dry_grass", depth_top = 1,
	node_filler = "bakedclay:orange", depth_filler = 15,
	node_riverbed = "default:desert_sand", depth_riverbed = 2,
	node_dungeon_alt = "",
	node_dungeon = "default:desert_sandstone",
	node_dungeon_stair = "stairs:stair_desert_sandstone"})

register_biome(ethereal.mesa, {
	name = "mesa_beach",
	heat_point = 25, humidity_point = old and 28 or 10,
	y_min = -1, y_max = 10,
	node_top = "default:desert_sand", depth_top = 1,
	node_filler = "bakedclay:orange", depth_filler = 2,
	node_riverbed = "default:desert_sand", depth_riverbed = 2,
	node_dungeon_alt = "",
	node_dungeon = "default:desert_sandstone",
	node_dungeon_stair = "stairs:stair_desert_sandstone"})

register_biome(ethereal.mesa, {
	name = "mesa_ocean",
	heat_point = 25, humidity_point = old and 28 or 10,
	y_min = -192, y_max = -2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})
]]--
