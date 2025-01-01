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
minetest.register_node("ethereal:lemon", {
	description = S("Lemon"),
	drawtype = "plantlike",
	tiles = {"ethereal_lemon.png"},
	inventory_image = "ethereal_lemon_fruit.png",
	wield_image = "ethereal_lemon_fruit.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed", fixed = {-0.27, -0.37, -0.27, 0.27, 0.44, 0.27}
	},
	groups = {
		food_lemon = 1, fleshy = 3, dig_immediate = 3, leafdecay = 3, leafdecay_drop = 1
	},
	drop = "ethereal:lemon",
	on_use = minetest.item_eat(3),
	sounds = default.node_sound_leaves_defaults(),
	place_param2 = 1
})
ethereal.add_eatable("ethereal:lemon", 3)
]]--
