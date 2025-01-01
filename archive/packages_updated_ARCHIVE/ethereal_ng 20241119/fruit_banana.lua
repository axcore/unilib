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
minetest.register_node("ethereal:banana", {
	description = S("Banana"),
	drawtype = "torchlike",
	tiles = {"ethereal_banana_single.png"},
	inventory_image = "ethereal_banana_single.png",
	wield_image = "ethereal_banana_single.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed", fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		food_banana = 1, fleshy = 3, dig_immediate = 3, leafdecay = 1, leafdecay_drop = 1
	},
	drop = "ethereal:banana",
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
	place_param2 = 1
})
ethereal.add_eatable("ethereal:banana", 2)

minetest.register_node("ethereal:banana_bunch", {
	description = S("Banana Bunch"),
	drawtype = "torchlike",
	tiles = {"ethereal_banana_bunch.png"},
	inventory_image = "ethereal_banana_bunch.png",
	wield_image = "ethereal_banana_bunch.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed", fixed = {-0.31, -0.5, -0.31, 0.31, 0.5, 0.31}
	},
	groups = {
		fleshy = 3, dig_immediate = 3, leafdecay = 1, leafdecay_drop = 1
	},
	drop = "ethereal:banana_bunch",
	on_use = minetest.item_eat(6),
	sounds = default.node_sound_leaves_defaults(),
	place_param2 = 1
})
ethereal.add_eatable("ethereal:banana_bunch", 6)

minetest.register_craft({
	output = "ethereal:banana_bunch",
	recipe = {{"ethereal:banana", "ethereal:banana", "ethereal:banana"}}
})
minetest.register_craft({
	output = "ethereal:banana 3",
	recipe = {{"ethereal:banana_bunch"}}
})
]]--
