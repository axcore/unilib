---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    xtraores/xtraores_rainbow
-- Code:    unknown
-- Media:   unknown
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("xtraores_rainbow:rainbow", {
	description = "Rainbow Block",
	tiles = {"xtraores_rainbow_block.png"},
	light_source = default.LIGHT_MAX - 1,
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_craft({
	output = "xtraores_rainbow:rainbow 8",
	recipe = {
		{"xtraores:adamantite_ingot", "xtraores:rarium_ingot", "xtraores:platinum_ingot"},
		{"xtraores:cobalt_ingot", "default:glass", "xtraores:osmium_ingot"},
		{"default:diamond", "default:mese_crystal", "default:copper_ingot"},
	}
})
]]--
