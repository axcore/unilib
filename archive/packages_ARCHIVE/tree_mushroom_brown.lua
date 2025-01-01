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
minetest.register_node("ethereal:mushroom_brown", {
	description = S("Brown Mushroom Cap"),
	tiles = {"ethereal_mushroom_block_brown.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, leafdecay = 3},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:mushroom_brown_sapling"}, rarity = 15},
			{items = {"ethereal:mushroom_brown"}}
		}
	},
	sounds = default.node_sound_wood_defaults()
})
minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:mushroom_brown",
	burntime = 10
})
minetest.register_craft({
	output = "ethereal:mushroom_brown",
	recipe = {
		{"flowers:mushroom_brown", "flowers:mushroom_brown"},
		{"flowers:mushroom_brown", "flowers:mushroom_brown"}
	}
})

decay({"ethereal:mushroom_trunk"}, {"ethereal:mushroom", "ethereal:mushroom_brown",
		"ethereal:mushroom_pore", "ethereal:lightstring"}, 4)
        
register_sapling("ethereal:mushroom_brown", "Brown Mushroom",
		"ethereal_mushroom_brown_sapling", 1, 11)

register_decoration(ethereal.mushroom, {
	place_on = "ethereal:mushroom_dirt",
	fill_ratio = 0.02, y_min = 26, y_max = 50,
	biomes = {"mushroom"},
	schematic = ethereal.mushroomtwo,
	spawn_by = "ethereal:mushroom_dirt", num_spawn_by = 6,
	rotation = "random"})
]]--
