---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    basic_materials
-- Code:    LGPL 3.0
-- Media:   CC-by-SA 4.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_craftitem("basic_materials:motor", {
	description = S("Simple Motor"),
	inventory_image = "basic_materials_motor.png",
})
register_craft( {
	output = "basic_materials:motor 2",
	recipe = {
		{materials.mese_crystal_fragment, "basic_materials:copper_wire", "basic_materials:plastic_sheet"},
		{materials.copper_ingot, materials.steel_ingot, materials.steel_ingot},
		{materials.mese_crystal_fragment, "basic_materials:copper_wire", "basic_materials:plastic_sheet"}
	},
	replacements = {
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
		{"basic_materials:copper_wire", "basic_materials:empty_spool"},
	}
})
]]--
