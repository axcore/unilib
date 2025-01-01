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
minetest.register_node("ethereal:bamboo", {
	description = S("Bamboo"),
	drawtype = "plantlike",
	tiles = {"ethereal_bamboo_trunk.png"},
	inventory_image = "ethereal_bamboo_trunk.png",
	wield_image = "ethereal_bamboo_trunk.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	selection_box = {
		type = "fixed", fixed = {-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	},
	collision_box = {
		type = "fixed", fixed = {-0.15, -0.5, -0.15, 0.15, 0.5, 0.15}
	},
	groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end
})
minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bamboo",
	burntime = 2
})

minetest.register_node("ethereal:bamboo_block", {
	description = S("Bamboo Block"),
	tiles = {"ethereal_bamboo_floor.png"},
	paramtype = "light",
	groups = {snappy = 3, choppy = 3 , flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults()
})
minetest.register_craft({
	output = "ethereal:bamboo_block",
	recipe = {
		{"ethereal:bamboo", "ethereal:bamboo", "ethereal:bamboo"},
		{"ethereal:bamboo", "ethereal:bamboo", "ethereal:bamboo"},
		{"ethereal:bamboo", "ethereal:bamboo", "ethereal:bamboo"}
	}
})
do_stair(
	"Bamboo", "bamboo_wood", "ethereal:bamboo_block",
	{snappy = 3, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	{"ethereal_bamboo_floor.png"},
	default.node_sound_wood_defaults())
        
minetest.register_node("ethereal:bamboo_leaves", {
	description = S("Bamboo Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_bamboo_leaves.png"},
	inventory_image = "ethereal_bamboo_leaves.png",
	wield_image = "ethereal_bamboo_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:bamboo_sprout"}, rarity = 10},
			{items = {"ethereal:bamboo_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})
decay({"ethereal:bamboo"}, {"ethereal:bamboo_leaves"}, 3)

minetest.register_craft({
	output = "default:paper 6",
	recipe = {
		{"ethereal:bamboo", "ethereal:bamboo"},
		{"ethereal:bamboo", "ethereal:bamboo"},
		{"ethereal:bamboo", "ethereal:bamboo"}
	}
})

minetest.register_node("ethereal:bamboo_sprout", {
	description = S("Bamboo Sprout"),
	drawtype = "plantlike",
	tiles = {"ethereal_bamboo_sprout.png"},
	inventory_image = "ethereal_bamboo_sprout.png",
	wield_image = "ethereal_bamboo_sprout.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {
		food_bamboo_sprout = 1, snappy = 3, attached_node = 1, flammable = 2,
		dig_immediate = 3, ethereal_sapling = 1, sapling = 1,
	},
	sounds = default.node_sound_defaults(),
	selection_box = {
		type = "fixed", fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, -0.1, 3 / 16}
	},
	on_use = minetest.item_eat(2),
	grown_height = 11,

	on_place = function(itemstack, placer, pointed_thing)
		return prepare_on_place(itemstack, placer, pointed_thing,
				"ethereal:bamboo_sprout", 1, 18)
	end
})

function ethereal.grow_bamboo_tree(pos)
	add_tree(pos, ethereal.bambootree)
end

register_decoration(ethereal.bamboo, {
	place_on = "ethereal:bamboo_dirt",
	fill_ratio = 0.025, y_min = 36, y_max = 70,
	biomes = {"bamboo"},
	schematic = ethereal.bambootree})
]]--
