---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng (20241119 update)
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("ethereal:basandra_bush_stem", {
	description = S("Basandra Bush Stem"),
	drawtype = "plantlike",
	visual_scale = 1.41,
	walkable = false,
	damage_per_second = 2,
	tiles = {"ethereal_basandra_bush_stem.png"},
	inventory_image = "ethereal_basandra_bush_stem.png",
	wield_image = "ethereal_basandra_bush_stem.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed", fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.5, 7 / 16},
	}
})

add_wood("ethereal:basandra_wood", {
	description = S("Basandra Wood"),
	tiles = {"ethereal_basandra_bush_wood.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1},
	sounds = default.node_sound_wood_defaults()
})
minetest.register_craft({
	output = "ethereal:basandra_wood 2",
	recipe = {{"ethereal:basandra_bush_stem"}}
})

minetest.register_node("ethereal:basandra_bush_leaves", {
	description = S("Basandra Bush Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"ethereal_basandra_bush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:basandra_bush_sapling"}, rarity = 5},
			{items = {"ethereal:basandra_bush_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("ethereal:basandra_bush_sapling", {
	description = S("Basandra Bush Sapling"),
	drawtype = "plantlike",
	tiles = {"ethereal_basandra_bush_sapling.png"},
	inventory_image = "ethereal_basandra_bush_sapling.png",
	wield_image = "ethereal_basandra_bush_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed", fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, attached_node = 1, ethereal_sapling = 1,
			sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
	grown_height = 2,

	on_place = function(itemstack, placer, pointed_thing)
		return prepare_on_place(itemstack, placer, pointed_thing,
				"ethereal:basandra_bush_sapling", 1, 2)
	end
})

register_decoration(ethereal.fiery, {
	place_on = "ethereal:fiery_dirt",
	fill_ratio = 0.03,
	biomes = {"fiery"},
	schematic = ethereal.basandrabush})
]]--
