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
minetest.register_node("ethereal:slime_mold", {
	description = S("Slime Mold"),
	drawtype = "raillike",
	paramtype = "light",
	tiles = {"ethereal_slime_mold.png"},
	inventory_image = "ethereal_slime_mold.png",
	wield_image = "ethereal_slime_mold.png",
	use_texture_alpha = "clip",
	walkable = false,
	buildable_to = true,
	floodable = true,
	drop = {},
	groups = {crumbly = 3, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed", fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	}
})

minetest.register_node("ethereal:slime_block", {
	description = S("Slime Block"),
	tiles = {"ethereal_slime_block.png"},
	inventory_image = minetest.inventorycube("ethereal_slime_block.png"),
	groups = {crumbly = 3, bouncy = 100, fall_damage_add_percent = -100, disable_jump = 1},
	sounds = default.node_sound_leaves_defaults()
})
minetest.register_craft({
	output = "ethereal:slime_block",
	recipe = {
		{"ethereal:slime_mold", "ethereal:slime_mold", "ethereal:slime_mold"},
		{"ethereal:slime_mold", "ethereal:fire_dust", "ethereal:slime_mold"},
		{"ethereal:slime_mold", "ethereal:slime_mold", "ethereal:slime_mold"}
	}
})

register_decoration(ethereal.mushroom, {
	place_on = {"default:sand"},
	fill_ratio = 0.1, y_min = 2, y_max = 6,
	biomes = {"mushroom_ocean"},
	decoration = "ethereal:slime_mold"})
]]--
