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
minetest.register_node("farming:mayonnaise", {
	description = S("Mayonnaise"),
	drawtype = "plantlike",
	tiles = {"farming_mayo.png"},
	inventory_image = "farming_mayo.png",
	wield_image = "farming_mayo.png",
	paramtype = "light",
	is_ground_content = false,
	walkable = false,
	on_use = minetest.item_eat(3),
	selection_box = {
		type = "fixed",
		fixed = {-0.25, -0.5, -0.25, 0.25, 0.45, 0.25}
	},
	groups = {
		compostability = 65, food_mayonnaise = 1, vessel = 1, dig_immediate = 3,
		attached_node = 1, handy = 1
	},
	sounds = farming.node_sound_glass_defaults()
})
farming.add_eatable("farming:mayonnaise", 3)

minetest.register_craft({
	output = "farming:mayonnaise",
	recipe = {
		{"group:food_olive_oil", "group:food_lemon"},
		{"group:food_egg", "farming:salt"}
	},
	replacements = {{"farming:olive_oil", a.glass_bottle}}
})
]]--
