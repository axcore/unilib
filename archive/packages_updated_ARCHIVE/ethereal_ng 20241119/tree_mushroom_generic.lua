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
minetest.register_node("ethereal:mushroom_trunk", {
	description = S("Mushroom"),
	tiles = {
		"ethereal_mushroom_trunk_top.png",
		"ethereal_mushroom_trunk_top.png",
		"ethereal_mushroom_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})
do_stair(
	"Mushroom Trunk", "mushroom_trunk", "ethereal:mushroom_trunk",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	{"ethereal_mushroom_trunk.png"},
	default.node_sound_wood_defaults())

minetest.register_node("ethereal:mushroom_pore", {
	description = S("Mushroom Pore"),
	tiles = {"ethereal_mushroom_pore.png"},
	groups = {
		snappy = 3, cracky = 3, choppy = 3, oddly_breakable_by_hand = 3,
		flammable = 2, disable_jump = 1, fall_damage_add_percent = -100,
		leafdecay = 3
	},
	sounds = default.node_sound_dirt_defaults()
})
minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:mushroom_pore",
	burntime = 3
})

decay({"ethereal:mushroom_trunk"}, {"ethereal:mushroom", "ethereal:mushroom_brown",
		"ethereal:mushroom_pore", "ethereal:lightstring"}, 4)

add_fence("mushroom", "mushroom_trunk", "Mushroom", "ethereal_mushroom_trunk")
]]--
