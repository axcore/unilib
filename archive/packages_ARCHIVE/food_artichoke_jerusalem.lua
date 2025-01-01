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
minetest.register_craftitem("farming:jerusalem_artichokes", {
	description = S("Jerusalem Artichokes"),
	inventory_image = "farming_jerusalem_artichokes.png",
	on_use = minetest.item_eat(11, a.bowl)
})
farming.add_eatable("ethereal:jerusalem_artichokes", 11)

minetest.register_craft({
	output = "farming:jerusalem_artichokes",
	recipe = {
		{"group:food_artichoke", "group:food_garlic_clove", "group:food_artichoke"},
		{"group:food_soy", "group:food_salt", "group:food_soy"},
		{"group:food_butter", "group:food_skillet", "group:food_bowl"}
	},
	replacements = {{"group:food_skillet", "farming:skillet"}}
})
]]--
