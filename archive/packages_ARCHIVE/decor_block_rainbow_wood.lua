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
minetest.register_node("xtraores_rainbow:wood", {
	description = "Rainbow Planks",
	tiles = {"xtraores_wood.png"},
	light_source = default.LIGHT_MAX - 1,
	is_ground_content = true,
	groups = {choppy=3, oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_craft({
	output = "xtraores_rainbow:wood 5",
	recipe = {
		{"", "default:wood", ""},
		{"default:wood", "xtraores_rainbow:rainbow", "default:wood"},
		{"", "default:wood", ""},
	}
})
]]--
