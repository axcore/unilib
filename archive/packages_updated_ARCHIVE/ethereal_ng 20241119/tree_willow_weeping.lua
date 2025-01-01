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
minetest.register_node("ethereal:willow_trunk", {
	description = S("Willow Trunk"),
	tiles = {
		"ethereal_willow_trunk_top.png",
		"ethereal_willow_trunk_top.png",
		"ethereal_willow_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})

add_wood("ethereal:willow_wood", {
	description = S("Willow Wood"),
	tiles = {"ethereal_willow_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir"
})
minetest.register_craft({
	output = "ethereal:willow_wood 4",
	recipe = {{"ethereal:willow_trunk"}}
})
do_stair(
	"Willow Wood", "willow_wood", "ethereal:willow_wood",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"ethereal_willow_wood.png"},
	default.node_sound_wood_defaults())
    
minetest.register_node("ethereal:willow_twig", {
	description = S("Willow Twig"),
	drawtype = "plantlike",
	tiles = {"ethereal_willow_twig.png"},
	inventory_image = "ethereal_willow_twig.png",
	wield_image = "ethereal_willow_twig.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	visual_scale = 1.4,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:willow_sapling"}, rarity = 50},
			{items = {"ethereal:willow_twig"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})
decay({"ethereal:willow_trunk"}, {"ethereal:willow_twig"}, 3)

register_sapling("ethereal:willow", "Willow", "ethereal_willow_sapling", 5, 14)

function ethereal.grow_willow_tree(pos)
	add_tree(pos, ethereal.willow)
end

add_fence("willow", "willow_wood", "Willow", "ethereal_willow_wood")

register_decoration(ethereal.grayness, {
	place_on = "ethereal:gray_dirt",
	fill_ratio = 0.02,
	biomes = {"grayness"},
	schematic = ethereal.willow,
	spawn_by = "ethereal:gray_dirt", num_spawn_by = 6})
]]--
