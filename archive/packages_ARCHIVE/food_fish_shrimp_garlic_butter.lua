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
minetest.register_craftitem("ethereal:garlic_shrimp", {
	description = S("Garlic Butter Shrimp"),
	inventory_image = "ethereal_garlic_butter_shrimp.png",
	on_use = minetest.item_eat(6)
})
ethereal.add_eatable("ethereal:garlic_shrimp", 6)

minetest.register_craft({
	output = "ethereal:garlic_shrimp",
	recipe = {
		{"farming:skillet", "ethereal:fish_shrimp", "ethereal:fish_shrimp"},
		{"group:food_butter", "group:food_garlic_clove", "ethereal:lemon"}
	},
	replacements = {{"farming:skillet", "farming:skillet"}}
})
]]--
