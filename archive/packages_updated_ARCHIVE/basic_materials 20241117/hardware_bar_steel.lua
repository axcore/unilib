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
minetest.register_craftitem("basic_materials:steel_bar", {
	description = S("Steel Bar"),
	inventory_image = "basic_materials_steel_bar.png",
})
register_craft( {
	output = "basic_materials:steel_bar 6",
	recipe = {
		{"", "", materials.steel_ingot},
		{"", materials.steel_ingot, ""},
		{materials.steel_ingot, "", ""},
	},
})
]]--
