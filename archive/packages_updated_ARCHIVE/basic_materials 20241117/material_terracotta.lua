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
minetest.register_craftitem("basic_materials:terracotta_base", {
	description = S("Uncooked Terracotta Base"),
	inventory_image = "basic_materials_terracotta_base.png",
})
register_craft( {
	type = "shapeless",
	output = "basic_materials:terracotta_base 8",
	recipe = {
		materials.water_bucket,
		materials.clay_lump,
		materials.gravel,
	},
	replacements = {{materials.water_bucket, materials.empty_bucket}},
})
]]--
