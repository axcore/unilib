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
minetest.register_craftitem("ethereal:fish_n_chips", {
	description = S("Fish & Chips"),
	inventory_image = "ethereal_fish_chips.png",
	on_use = minetest.item_eat(6)
})
ethereal.add_eatable("ethereal:fish_n_chips", 4)

minetest.register_craft({
	output = "ethereal:fish_n_chips",
	recipe = {
		{"farming:baking_tray", "group:ethereal_fish", "group:food_potato"}
	},
	replacements = {{"farming:baking_tray", "farming:baking_tray"}}
})
]]--
