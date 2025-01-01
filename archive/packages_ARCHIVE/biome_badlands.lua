---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    badlands
-- Code:    LGPL-3.0
-- Media:   LGPL-3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_biome({
	name = "badlands",
	node_stone = "default:stone",
	node_riverbed = "default:sand",
	depth_riverbed = 2,
	node_dungeon = "bakedclay:orange",
	node_dungeon_stair = "stairs:stair_bakedclay_orange",
	y_max = 31000,
	y_min = 30,
	heat_point = 83,
	humidity_point = 2,
})

minetest.register_biome({
	name = "badlands_plains",
	node_top = "badlands:red_sand",
	depth_top = 1,
	node_filler = "badlands:red_sand",
	depth_filler = 1,
	node_stone = "default:stone",
	node_riverbed = "default:sand",
	depth_riverbed = 2,
	node_dungeon = "bakedclay:orange",
	node_dungeon_stair = "stairs:stair_bakedclay_orange",
	y_max = 30,
	y_min = -255,
	vertical_blend = 2,
	heat_point = 83,
	humidity_point = 2,
})
]]--
