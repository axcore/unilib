---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    farming_redo (20241118 update)
-- Code:    MIT
-- Media:   CC BY-SA 3.0/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_craftitem("farming:butter_vegan", {
	description = S("Vegan Butter"),
	inventory_image = "farming_vegan_butter.png",
	groups = {food_butter = 1}
})
minetest.register_craft({
	output = "farming:butter_vegan",
	recipe = {
		{"farming:soy_milk", "farming:sunflower_oil", "farming:soy_milk"},
		{"group:food_salt", a.dye_yellow, "farming:mixing_bowl"}
	},
	replacements = {
		{"farming:soy_milk", a.drinking_glass .. " 2"},
		{"farming:sunflower_oil", a.glass_bottle},
		{"farming:mixing_bowl", "farming:mixing_bowl"}
	}
})
]]--
