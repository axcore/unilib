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
minetest.register_craftitem("basic_materials:chainlink_steel", {
	description = S("Chainlinks (steel)"),
	groups = { chainlinks = 1 },
	inventory_image = "basic_materials_chainlink_steel.png"
})
register_craft({
	output = "basic_materials:chainlink_steel 12",
	recipe = {
		{"", materials.steel_ingot, materials.steel_ingot},
		{materials.steel_ingot, "", materials.steel_ingot},
		{materials.steel_ingot, materials.steel_ingot, ""},
	},
})
]]--
