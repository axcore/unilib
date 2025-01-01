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
minetest.register_node("xtraores_rainbow:glass", {
	description = "Rainbow Glass",
	drawtype = "glasslike",
	tiles = {"xtraores_window.png"},
	paramtype = "light",
	use_texture_alpha = true,
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = default.LIGHT_MAX,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})
minetest.register_craft({
	output = "xtraores_rainbow:glass 8",
	recipe = {
		{"", "default:glass", ""},
		{"default:glass", "xtraores_rainbow:rainbow", "default:glass"},
		{"", "default:glass", ""},
	}
})
]]--
