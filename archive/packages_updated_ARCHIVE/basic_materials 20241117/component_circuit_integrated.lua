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
minetest.register_craftitem("basic_materials:ic", {
	description = S("Simple Integrated Circuit"),
	inventory_image = "basic_materials_ic.png",
})
register_craft( {
	output = "basic_materials:ic 4",
	recipe = {
		{"basic_materials:silicon", "basic_materials:silicon"},
		{"basic_materials:silicon", materials.copper_ingot},
	},
})
]]--
