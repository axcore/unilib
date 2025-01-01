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
minetest.register_craftitem("basic_materials:chainlink_brass", {
	description = S("Chainlinks (brass)"),
	groups = { chainlinks = 1 },
	inventory_image = "basic_materials_chainlink_brass.png"
})
register_craft({
	output = "basic_materials:chainlink_brass 12",
	recipe = {
		{"", "basic_materials:brass_ingot", "basic_materials:brass_ingot"},
		{"basic_materials:brass_ingot", "", "basic_materials:brass_ingot"},
		{"basic_materials:brass_ingot", "basic_materials:brass_ingot", ""},
	},
})
]]--
