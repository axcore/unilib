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
minetest.register_node("ethereal:banana_trunk", {
	description = S("Banana Trunk"),
	tiles = {
		"ethereal_banana_trunk_top.png",
		"ethereal_banana_trunk_top.png",
		"ethereal_banana_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

add_wood("ethereal:banana_wood", {
	description = S("Banana Wood"),
	tiles = {"ethereal_banana_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir"
})
minetest.register_craft({
	output = "ethereal:banana_wood 4",
	recipe = {{"ethereal:banana_trunk"}}
})
do_stair(
	"Banana Wood", "banana_wood", "ethereal:banana_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"ethereal_banana_wood.png"},
	default.node_sound_wood_defaults())
    
minetest.register_node("ethereal:bananaleaves", {
	description = S("Banana Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_banana_leaf.png"},
	inventory_image = "ethereal_banana_leaf.png",
	wield_image = "ethereal_banana_leaf.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:banana_tree_sapling"}, rarity = 10},
			{items = {"ethereal:bananaleaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})
decay({"ethereal:banana_trunk"}, {"ethereal:bananaleaves", "ethereal:banana",
		"ethereal:banana_bunch"}, 3)

register_sapling("ethereal:banana_tree", "Banana", "ethereal_banana_tree_sapling", 3, 8)

function ethereal.grow_banana_tree(pos)

	if math.random(2) == 1 and minetest.find_node_near(pos, 1, {"farming:soil_wet"}) then

		add_tree(pos, ethereal.bananatree,
				{{"ethereal:banana", "ethereal:banana_bunch"}})
	else
		add_tree(pos, ethereal.bananatree)
	end
end

add_fence("banana", "banana_wood", "Banana Wood", "ethereal_banana_wood")

register_decoration(ethereal.grove, {
	place_on = "ethereal:grove_dirt",
	fill_ratio = 0.015,
	biomes = {"grove"},
	schematic = ethereal.bananatree})
]]--
