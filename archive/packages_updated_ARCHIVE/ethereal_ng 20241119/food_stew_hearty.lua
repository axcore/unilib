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
minetest.register_craftitem("ethereal:hearty_stew", {
	description = S("Hearty Stew"),
	inventory_image = "ethereal_hearty_stew.png",
	wield_image = "ethereal_hearty_stew.png",
	on_use = minetest.item_eat(10, bowl)
})
ethereal.add_eatable("ethereal:hearty_stew", 10)

minetest.register_craft({
	output = "ethereal:hearty_stew",
	recipe = {
		{"group:food_onion","flowers:mushroom_brown", "group:food_tuber"},
		{"","flowers:mushroom_brown", ""},
		{"","group:food_bowl", ""}
	}
})

if fredo then

	minetest.register_craft({
		output = "ethereal:hearty_stew",
		recipe = {
			{"group:food_onion","flowers:mushroom_brown", "group:food_beans"},
			{"","flowers:mushroom_brown", ""},
			{"","group:food_bowl", ""}
		}
	})
end
]]--
