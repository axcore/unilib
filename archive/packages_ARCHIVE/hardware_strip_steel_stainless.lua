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
minetest.register_craftitem("basic_materials:stainless_steel_strip", {
	description = S("Stainless Steel Strip"),
	groups = { strip = 1 },
	inventory_image = "basic_materials_stainless_steel_strip.png"
})
if materials.stainless_steel_ingot then
	register_craft( {
		output = "basic_materials:stainless_steel_strip 12",
		recipe = {
			{"", materials.stainless_steel_ingot, ""},
			{materials.stainless_steel_ingot, "", ""},
		},
	})
end
]]--
