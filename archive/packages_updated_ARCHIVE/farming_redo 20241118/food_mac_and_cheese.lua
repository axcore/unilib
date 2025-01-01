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
minetest.register_craftitem("farming:mac_and_cheese", {
	description = S("Mac & Cheese"),
	inventory_image = "farming_mac_and_cheese.png",
	on_use = minetest.item_eat(6, a.bowl),
	groups = {compostability = 65}
})
farming.add_eatable("farming:mac_and_cheese", 6)

minetest.register_craft({
	output = "farming:mac_and_cheese",
	recipe = {
		{"group:food_pasta", "group:food_cheese", "group:food_bowl"}
	}
})
]]--
