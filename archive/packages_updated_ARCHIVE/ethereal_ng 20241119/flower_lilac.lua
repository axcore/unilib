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
minetest.register_node("ethereal:lilac", {
	description = S("Lilac"),
	drawtype = "plantlike",
	visual_scale = 1.9,
	tiles = {"ethereal_lilac.png"},
	inventory_image = "ethereal_lilac.png",
	wield_image = "ethereal_lilac.png",
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed", fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 0.67, 5 / 16}
	}
})
minetest.register_craft({
	output = "dye:magenta 2",
	recipe = {{"ethereal:lilac"}}
})

register_decoration(ethereal.bamboo, {
	place_on = {"ethereal:bamboo_dirt"},
	fill_ratio = 0.025, y_min = 3, y_max = 35,
	biomes = {"bamboo"},
	decoration = "ethereal:lilac"})
]]--
