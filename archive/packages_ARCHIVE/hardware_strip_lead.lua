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
minetest.register_craftitem("basic_materials:lead_strip", {
	description = S("Lead Strip"),
	groups = { strip = 1 },
	inventory_image = "basic_materials_lead_strip.png"
})
if materials.lead_ingot then
	register_craft( {
		output = "basic_materials:lead_strip 12",
		recipe = {
			{"", materials.lead_ingot, ""},
			{materials.lead_ingot, "", ""},
		},
	})
end
]]--
