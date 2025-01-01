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
minetest.register_craftitem("basic_materials:aluminum_strip", {
	description = S("Aluminum Strip"),
	groups = { strip = 1 },
	inventory_image = "basic_materials_aluminum_strip.png"
})
if materials.aluminum_ingot then
	register_craft( {
		output = "basic_materials:aluminum_strip 12",
		recipe = {
			{"", materials.aluminum_ingot, ""},
			{materials.aluminum_ingot, "", ""},
		},
	})
end
]]--
