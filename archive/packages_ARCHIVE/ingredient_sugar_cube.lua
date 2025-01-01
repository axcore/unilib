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
minetest.register_node("farming:sugar_cube", {
	description = S("Sugar Cube"),
	tiles = {"farming_sugar_cube.png"},
	groups = {shovely = 1, handy = 1, crumbly = 2},
	is_ground_content = false,
	floodable = true,
	sounds = farming.node_sound_gravel_defaults(),
	_mcl_hardness = 0.8,
	_mcl_blast_resistance = 1
})
minetest.register_craft({
	output = "farming:sugar_cube",
	recipe = {
		{a.sugar, a.sugar, a.sugar},
		{a.sugar, a.sugar, a.sugar},
		{a.sugar, a.sugar, a.sugar}
	}
})
minetest.register_craft({
	output = a.sugar .. " 9",
	recipe = {{"farming:sugar_cube"}}
})
]]--
