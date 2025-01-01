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
minetest.register_node("badlands:red_sandstone", {
	description = "Red Sandstone",
	tiles = {"default_sandstone.png^[colorize:sienna:175^[colorize:red:40"},
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "badlands:red_sandstone",
	recipe = {
		{"badlands:red_sand", "badlands:red_sand"},
		{"badlands:red_sand", "badlands:red_sand"},
	}
})
minetest.register_craft({
	output = "badlands:red_sand 4",
	recipe = {
		{"badlands:red_sandstone"},
	}
})

minetest.register_node("badlands:red_sandstone_block", {
	description = "Red Sandstone Block",
	tiles = {"default_sandstone_block.png^[colorize:sienna:175^[colorize:red:40"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "badlands:red_sandstone_block 9",
	recipe = {
		{"badlands:red_sandstone", "badlands:red_sandstone", "badlands:red_sandstone"},
		{"badlands:red_sandstone", "badlands:red_sandstone", "badlands:red_sandstone"},
		{"badlands:red_sandstone", "badlands:red_sandstone", "badlands:red_sandstone"},
	}
})

minetest.register_node("badlands:red_sandstone_brick", {
	description = "Red Sandstone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_sandstone_brick.png^[colorize:sienna:175^[colorize:red:40"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "badlands:red_sandstone_brick 4",
	recipe = {
		{"badlands:red_sandstone", "badlands:red_sandstone"},
		{"badlands:red_sandstone", "badlands:red_sandstone"},
	}
})
]]--
