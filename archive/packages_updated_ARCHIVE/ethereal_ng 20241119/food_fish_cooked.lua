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
minetest.register_craftitem(":ethereal:fish_cooked", {
	description = S("Cooked Fish"),
	inventory_image = "ethereal_fish_cooked.png",
	wield_image = "ethereal_fish_cooked.png",
	groups = {food_fish = 1},
	on_use = minetest.item_eat(5)
})
ethereal.add_eatable("ethereal:fish_cooked", 5)

minetest.register_craft({
	type = "cooking",
	output = "ethereal:fish_cooked",
	recipe = "group:ethereal_fish",
	cooktime = 8
})
]]--
