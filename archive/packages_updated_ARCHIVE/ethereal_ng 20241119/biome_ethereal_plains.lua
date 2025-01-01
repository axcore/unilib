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
register_biome(ethereal.plains, {
	name = "plains",
	heat_point = old and 65 or 74, humidity_point = old and 25 or 23,
	y_min = 3, y_max = 25,
	node_top = "ethereal:dry_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3,
	node_dungeon_alt = "",
	node_dungeon = "ethereal:dry_dirt",
	node_dungeon_stair = "stairs:stair_dry_dirt"})

register_biome(ethereal.plains, {
	name = "plains_ocean",
	heat_point = old and 65 or 74, humidity_point = old and 25 or 23,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})
]]--
