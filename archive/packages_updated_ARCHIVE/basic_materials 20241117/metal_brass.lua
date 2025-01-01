---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    basic_materials
-- Code:    LGPL 3.0
-- Media:   CC-by-SA 4.0
--
-- From:    technic
-- Code:    LGPL 2.0
-- Media:   unknown
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
register_dust("Brass",           "basic_materials:brass_ingot")

minetest.register_craftitem("basic_materials:brass_ingot", {
	description = S("Brass Ingot"),
	inventory_image = "basic_materials_brass_ingot.png",
})
if materials.silver_ingot then

	register_craft( {
		type = "shapeless",
		output = "basic_materials:brass_ingot 3",
		recipe = {
			materials.copper_ingot,
			materials.copper_ingot,
			materials.silver_ingot,
		},
	})
end
-- Without moreores, there still should be a way to create brass.
register_craft( {
	output = "basic_materials:brass_ingot 9",
	recipe = {
		{materials.copper_ingot, materials.tin_ingot, materials.copper_ingot},
		{materials.gold_ingot, materials.copper_ingot, materials.tin_ingot},
		{materials.copper_ingot, materials.tin_ingot, materials.copper_ingot},
	},
})
register_craft( {
	type = "shapeless",
	output = "basic_materials:brass_ingot 9",
	recipe = {"basic_materials:brass_block"},
})


minetest.register_node("basic_materials:brass_block", {
	description = S("Brass Block"),
	tiles = { "basic_materials_brass_block.png" },
	is_ground_content = false,
	groups = {cracky=1, dig_stone = 1, pickaxey=5},
	_mcl_hardness=1.6,
	sounds = sound_api.node_sound_metal_defaults()
})
register_craft( {
	output = "basic_materials:brass_block",
	recipe = {
		{"basic_materials:brass_ingot", "basic_materials:brass_ingot", "basic_materials:brass_ingot"},
		{"basic_materials:brass_ingot", "basic_materials:brass_ingot", "basic_materials:brass_ingot"},
		{"basic_materials:brass_ingot", "basic_materials:brass_ingot", "basic_materials:brass_ingot"},
	},
})
]]--
