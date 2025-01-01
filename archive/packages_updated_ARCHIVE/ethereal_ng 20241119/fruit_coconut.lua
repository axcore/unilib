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
minetest.register_node("ethereal:coconut", {
	description = S("Coconut"),
	drawtype = "plantlike",
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
	tiles = {"moretrees_coconut.png"},
	inventory_image = "moretrees_coconut.png",
	wield_image = "moretrees_coconut.png",
	selection_box = {
		type = "fixed", fixed = {-0.31, -0.43, -0.31, 0.31, 0.44, 0.31}
	},
	groups = {
		food_coconut = 1, snappy = cgrp[1], oddly_breakable_by_hand = cgrp[2],
		cracky = cgrp[1], choppy = cgrp[1], flammable = 1,
		leafdecay = 3, leafdecay_drop = 1
	},
	drop = cdrp,
	sounds = default.node_sound_wood_defaults(),
	place_param2 = 1
})

minetest.register_craftitem("ethereal:coconut_slice", {
	description = S("Coconut Slice"),
	inventory_image = "moretrees_coconut_slice.png",
	wield_image = "moretrees_coconut_slice.png",
	groups = {food_coconut_slice = 1},
	on_use = minetest.item_eat(1)
})
ethereal.add_eatable("ethereal:coconut_slice", 1)

minetest.register_craft({
	output = "ethereal:coconut",
	recipe = {
		{"ethereal:coconut_slice", "ethereal:coconut_slice"},
		{"ethereal:coconut_slice", "ethereal:coconut_slice"}
	}
})
]]--
