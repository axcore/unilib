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
minetest.register_craftitem("ethereal:fish_shrimp_cooked", {
	description = S("Boiled Shrimp"),
	inventory_image = "ethereal_fish_shrimp_cooked.png",
	on_use = minetest.item_eat(2)
})
ethereal.add_eatable("ethereal:fish_shrimp_cooked", 2)

minetest.register_craft({
	output = "ethereal:fish_shrimp_cooked 5",
	recipe = {
		{"ethereal:fish_shrimp", "ethereal:fish_shrimp", "ethereal:fish_shrimp"},
		{"ethereal:fish_shrimp", "group:water_bucket", "ethereal:fish_shrimp"},
		{"", "ethereal:fire_dust", ""}
	},
	replacements = {{"group:water_bucket", "bucket:bucket_empty"}}
})
]]--
