---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng
-- Code:    MIT
-- Media:   MIT/CC0
--
-- From:    GLEMr4
-- Code:    LGPL 2.1
-- Media:   unknown
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("ethereal:scorched_tree", {
	description = S("Scorched Tree"),
	tiles = {
		"ethereal_scorched_tree_top.png",
		"ethereal_scorched_tree_top.png",
		"ethereal_scorched_tree.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 1},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})
minetest.register_craft({
	output = "ethereal:scorched_tree 8",
	recipe = {
		{"group:tree", "group:tree", "group:tree"},
		{"group:tree", "default:torch", "group:tree"},
		{"group:tree", "group:tree", "group:tree"}
	}
})

add_fence("scorched", "scorched_tree", "Scorched", "ethereal_scorched_tree")

register_decoration(ethereal.plains, {
	place_on = "ethereal:dry_dirt",
	fill_ratio = 0.006,
	biomes = {"plains"},
	decoration = "ethereal:scorched_tree", height_max = 6})
]]--
