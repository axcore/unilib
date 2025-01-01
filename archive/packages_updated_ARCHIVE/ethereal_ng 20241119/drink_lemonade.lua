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
minetest.register_node("ethereal:lemonade", {
	description = S("Lemonade"),
	drawtype = "plantlike",
	visual_scale = 0.5,
	tiles = {"ethereal_lemonade.png"},
	inventory_image = "ethereal_lemonade.png",
	wield_image = "ethereal_lemonade.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed", fixed = {-0.15, -0.5, -0.15, 0.15, 0, 0.15}
	},
	groups = {vessel = 1, dig_immediate = 3, attached_node = 1, drink = 1},
	on_use = minetest.item_eat(5, "vessels:drinking_glass"),
	sounds = default.node_sound_glass_defaults()
})
ethereal.add_eatable("ethereal:lemonade", 5)

minetest.register_craft({
	output = "ethereal:lemonade",
	recipe = {
		{"ethereal:lemon", "group:food_sugar", "group:food_sugar"},
		{"vessels:drinking_glass", "group:water_bucket", ""}
	},
	replacements = {
		{"group:water_bucket", "bucket:bucket_empty"},
	}
})
]]--
