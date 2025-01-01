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
minetest.register_craftitem("basic_materials:steel_strip", {
	description = S("Steel Strip"),
	groups = { strip = 1 },
	inventory_image = "basic_materials_steel_strip.png"
})
register_craft( {
	output = "basic_materials:steel_strip 12",
	recipe = {
		{"", materials.steel_ingot, ""},
		{materials.steel_ingot, "", ""},
	},
})
]]--
