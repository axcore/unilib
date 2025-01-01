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
minetest.register_craftitem("basic_materials:wet_cement", {
	description = S("Wet Cement"),
	inventory_image = "basic_materials_wet_cement.png",
})
register_craft({
	type = "shapeless",
	output = "basic_materials:wet_cement 3",
	recipe = {
		materials.dirt,
		materials.dye_dark_grey,
		materials.dye_dark_grey,
		materials.dye_dark_grey,
		materials.water_bucket
	},
	replacements = {{materials.water_bucket, materials.empty_bucket}},
})

minetest.register_node("basic_materials:cement_block", {
	description = S("Cement"),
	tiles = {"basic_materials_cement_block.png"},
	is_ground_content = false,
	groups = {cracky=2, dig_stone = 1, pickaxey=5},
	_mcl_hardness=1.6,
	sounds = sound_api.node_sound_stone_defaults(),
})
minetest.register_craft({
	type = "cooking",
	output = "basic_materials:cement_block",
	recipe = "basic_materials:wet_cement",
	cooktime = 8
})
]]--
