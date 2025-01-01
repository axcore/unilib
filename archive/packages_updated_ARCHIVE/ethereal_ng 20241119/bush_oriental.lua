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
minetest.register_node("ethereal:bush", {
	description = S("Bush"),
	tiles = {"ethereal_bush.png"},
	walkable = true,
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults()
})
minetest.register_craft({
	output = "ethereal:bush",
	recipe = {
		{"group:leaves", "group:leaves", "group:leaves"},
		{"group:leaves", "ethereal:bamboo_leaves", "group:leaves"},
		{"group:leaves", "group:leaves", "group:leaves"}
	}
})
minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:bush",
	burntime = 1
})

register_decoration(ethereal.bamboo, {
	place_on = "ethereal:bamboo_dirt",
	fill_ratio = 0.08, y_min = 35, y_max = 70,
	biomes = {"bamboo"},
	schematic = ethereal.bush,
	spawn_by = "ethereal:bamboo_dirt", num_spawn_by = 6})
]]--
