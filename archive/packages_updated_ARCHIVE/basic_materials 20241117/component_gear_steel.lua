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
    local c_ingot = "unilib:metal_steel_ingot"

minetest.register_craftitem("basic_materials:gear_steel", {
	description = S("Steel gear"),
	inventory_image = "basic_materials_gear_steel.png"
})
register_craft( {
	output = "basic_materials:gear_steel 6",
	recipe = {
		{"", materials.steel_ingot, ""},
		{materials.steel_ingot,"basic_materials:chainlink_steel", materials.steel_ingot},
		{"", materials.steel_ingot, ""}
	},
})
]]--
