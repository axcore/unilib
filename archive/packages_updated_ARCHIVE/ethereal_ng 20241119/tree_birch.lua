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
minetest.register_node("ethereal:birch_trunk", {
	description = S("Birch Trunk"),
	tiles = {
		"moretrees_birch_trunk_top.png",
		"moretrees_birch_trunk_top.png",
		"moretrees_birch_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

add_wood("ethereal:birch_wood", {
	description = S("Birch Wood"),
	tiles = {"moretrees_birch_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir"
})
minetest.register_craft({
	output = "ethereal:birch_wood 4",
	recipe = {{"ethereal:birch_trunk"}}
})
do_stair(
	"Birch Wood", "birch_wood", "ethereal:birch_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"moretrees_birch_wood.png"},
	default.node_sound_wood_defaults())
    
minetest.register_node("ethereal:birch_leaves", {
	description = S("Birch Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"moretrees_birch_leaves.png"},
	inventory_image = "moretrees_birch_leaves.png",
	wield_image = "moretrees_birch_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:birch_sapling"}, rarity = 20},
			{items = {"ethereal:birch_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})
decay({"ethereal:birch_trunk"}, {"ethereal:birch_leaves"}, 3)

register_sapling("ethereal:birch", "Birch", "moretrees_birch_sapling", 2, 7)

function ethereal.grow_birch_tree(pos)
	add_tree(pos, ethereal.birchtree)
end

add_fence("birch", "birch_wood", "Birch", "moretrees_birch_wood")

register_decoration(ethereal.grassytwo, {
	place_on = "default:dirt_with_grass",
	fill_ratio = 0.02, y_min = 50, y_max = 100,
	biomes = {"grassytwo"},
	schematic = ethereal.birchtree})
]]--
