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
minetest.register_node("ethereal:olive_trunk", {
	description = S("Olive Trunk"),
	tiles = {
		"ethereal_olive_trunk_top.png",
		"ethereal_olive_trunk_top.png",
		"ethereal_olive_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

add_wood("ethereal:olive_wood", {
	description = S("Olive Wood"),
	tiles = {"ethereal_olive_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir"
})
minetest.register_craft({
	output = "ethereal:olive_wood 4",
	recipe = {{"ethereal:olive_trunk"}}
})
do_stair(
	"Olive Wood", "olive_wood", "ethereal:olive_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"ethereal_olive_wood.png"},
	default.node_sound_wood_defaults())
    
minetest.register_node("ethereal:olive_leaves", {
	description = S("Olive Tree Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_olive_leaves.png"},
	inventory_image = "ethereal_olive_leaves.png",
	wield_image = "ethereal_olive_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:olive_tree_sapling"}, rarity = 25},
			{items = {"ethereal:olive_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})
decay({"ethereal:olive_trunk"}, {"ethereal:olive_leaves", "ethereal:olive"}, 3)

register_sapling("ethereal:olive_tree", "Olive", "ethereal_olive_tree_sapling", 3, 10)

function ethereal.grow_olive_tree(pos)
	add_tree(pos, ethereal.olivetree)
end

add_fence("olive", "olive_wood", "Olive", "ethereal_olive_wood")

register_decoration(ethereal.mediterranean, {
	place_on = "ethereal:grove_dirt",
	fill_ratio = 0.004, y_min = 5, y_max = 45,
	biomes = {"mediterranean"},
	schematic = ethereal.olivetree})
]]--
