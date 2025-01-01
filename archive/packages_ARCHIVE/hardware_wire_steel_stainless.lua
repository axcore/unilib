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
minetest.register_craftitem("basic_materials:stainless_steel_wire", {
	description = S("Spool of stainless steel wire"),
	groups = { wire = 1 },
	inventory_image = "basic_materials_stainless_steel_wire.png"
})
if materials.stainless_steel_ingot then
	register_craft( {
		output = "basic_materials:stainless_steel_wire 2",
		type = "shapeless",
		recipe = {
			materials.stainless_steel_ingot,
			"basic_materials:empty_spool",
			"basic_materials:empty_spool",
		},
	})
end
]]--
