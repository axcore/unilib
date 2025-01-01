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
minetest.register_node("ethereal:mushroom", {
	description = S("Mushroom Cap"),
	tiles = {"ethereal_mushroom_block.png"},
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, leafdecay = 3},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:mushroom_sapling"}, rarity = 20},
			{items = {"ethereal:mushroom"}}
		}
	},
	sounds = default.node_sound_wood_defaults()
})
minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:mushroom",
	burntime = 10
})
minetest.register_craft({
	output = "ethereal:mushroom",
	recipe = {
		{"flowers:mushroom_red", "flowers:mushroom_red"},
		{"flowers:mushroom_red", "flowers:mushroom_red"}
	}
})
do_stair(
	"Mushroom Top", "mushroom", "ethereal:mushroom",
	{choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	{"ethereal_mushroom_block.png"},
	default.node_sound_wood_defaults())

register_sapling("ethereal:mushroom", "Mushroom", "ethereal_mushroom_sapling", 4, 11)

function ethereal.grow_mushroom_tree(pos)
	add_tree(pos, ethereal.mushroomone)
end

register_decoration(ethereal.mushroom, {
	place_on = "ethereal:mushroom_dirt",
	fill_ratio = 0.018, sidelen = 8, y_min = 3, y_max = 25,
	biomes = {"mushroom"},
	schematic = ethereal.mushroomone,
	spawn_by = "ethereal:mushroom_dirt", num_spawn_by = 8})
]]--
