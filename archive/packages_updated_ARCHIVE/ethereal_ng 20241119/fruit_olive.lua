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
minetest.register_node("ethereal:olive", {
	description = S("Olive"),
	drawtype = "plantlike",
	tiles = {"ethereal_olive.png"},
	inventory_image = "ethereal_olive_fruit.png",
	wield_image = "ethereal_olive_fruit.png",
	visual_scale = 0.2,
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed", fixed = {-0.1, -0.5, -0.1, 0.1, -0.3, 0.1}
	},
	groups = {fleshy = 3, dig_immediate = 3, leafdecay = 3, leafdecay_drop = 1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),
	place_param2 = 1
})
ethereal.add_eatable("ethereal:olive", 1)
]]--
