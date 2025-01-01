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
minetest.register_craftitem("basic_materials:carbon_steel_bar", {
	description = S("Carbon Steel Bar"),
	inventory_image = "basic_materials_carbon_steel_bar.png",
})
if materials.carbon_steel_ingot then
	register_craft( {
		output = "basic_materials:carbon_steel_bar 6",
		recipe = {
			{"", "", materials.carbon_steel_ingot},
			{"", materials.carbon_steel_ingot, ""},
			{materials.carbon_steel_ingot, "", ""},
		},
	})
end
]]--
