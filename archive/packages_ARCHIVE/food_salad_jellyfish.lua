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
minetest.register_craftitem("ethereal:jellyfish_salad", {
	description = S("Jellyfish Salad"),
	inventory_image = "ethereal_jellyfish_salad.png",
	on_use = minetest.item_eat(6)
})
ethereal.add_eatable("ethereal:jellyfish_salad", 4)

minetest.register_craft({
	output = "ethereal:jellyfish_salad",
	recipe = {
		{"farming:cutting_board", "ethereal:fish_jellyfish", "group:food_onion"},
	},
	replacements = {{"farming:cutting_board", "farming:cutting_board"}}
})
]]--
