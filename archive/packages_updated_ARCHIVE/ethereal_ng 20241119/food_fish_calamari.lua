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
minetest.register_craftitem("ethereal:calamari_raw", {
	description = S("Raw Calamari"),
	inventory_image = "ethereal_calamari_raw.png",
	on_use = minetest.item_eat(-2)
})
ethereal.add_eatable("ethereal:calamari_raw", -2)

minetest.register_craft({
	output = "ethereal:calamari_raw 2",
	recipe = {
		{"farming:cutting_board", "ethereal:fish_squid"},
	},
	replacements = {{"farming:cutting_board", "farming:cutting_board"}}
})

minetest.register_craftitem("ethereal:calamari_cooked", {
	description = S("Calamari"),
	inventory_image = "ethereal_calamari_cooked.png",
	on_use = minetest.item_eat(5)
})
ethereal.add_eatable("ethereal:calamari_cooked", 5)

minetest.register_craft({
	output = "ethereal:calamari_cooked",
	recipe = {
		{"farming:skillet", "ethereal:calamari_raw", "farming:flour"},
	},
	replacements = {{"farming:skillet", "farming:skillet"}}
})
]]--
