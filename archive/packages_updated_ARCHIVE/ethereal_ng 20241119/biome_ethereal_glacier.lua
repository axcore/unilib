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
register_biome(ethereal.glacier, {
	name = "glacier",
	heat_point = 0, humidity_point = old and 50 or 73,
	y_min = -8, y_max = 31000,
	node_dust = "default:snowblock",
	node_top = "default:snowblock", depth_top = 1,
	node_filler = "default:snowblock", depth_filler = 3,
	node_stone = "default:ice",
	node_water_top = "default:ice", depth_water_top = 10,
	node_river_water = "default:ice",
	node_riverbed = "default:gravel", depth_riverbed = 2,
	node_dungeon = "ethereal:icebrick", node_dungeon_alt = "default:ice",
	node_dungeon_stair = "stairs:stair_ice"})

register_biome(ethereal.glacier, {
	name = "glacier_ocean",
	heat_point = 0, humidity_point = old and 50 or 73,
	y_min = -112, y_max = -9,
	node_dust = "default:snowblock",
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3})

register_biome(ethereal.glacier, {
	name = "glacier_under",
	heat_point = 0, humidity_point = old and 50 or 73,
	y_max = -256, y_min = -31000,
	node_cave_liquid = {"default:water_source", "default:lava_source"},
	node_dungeon = "default:cobble",
	node_dungeon_alt = "default:mossycobble",
	node_dungeon_stair = "stairs:stair_cobble"})
]]--
