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
minetest.register_node("ethereal:spore_grass", {
	description = S("Spore Grass"),
	drawtype = "plantlike",
	tiles = {"ethereal_spore_grass.png"},
	inventory_image = "ethereal_spore_grass.png",
	wield_image = "ethereal_spore_grass.png",
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	groups = {snappy = 3, flora = 1, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed", fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 4 / 16, 5 / 16}
	}
})

register_decoration(ethereal.mushroom, {
	place_on = {"ethereal:mushroom_dirt"},
	fill_ratio = 0.1,
	biomes = {"mushroom"},
	decoration = "ethereal:spore_grass"})
]]--
