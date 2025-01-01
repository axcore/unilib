---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_tool("ethereal:pick_crystal", {
	description = S("Crystal Pickaxe"),
	inventory_image = "ethereal_crystal_pick.png",
	wield_image = "ethereal_crystal_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 3,
		groupcaps={
			cracky = {
				times = {[1] = 1.8, [2] = 0.8, [3] = 0.40}, uses = 40, maxlevel = 3
			}
		},
		damage_groups = {fleshy = 6}
	},
	groups = {pickaxe = 1},
	sound = {breaks = "default_tool_breaks"}
})
minetest.register_craft({
	output = "ethereal:pick_crystal",
	recipe = {
		{"ethereal:crystal_ingot", "ethereal:crystal_ingot", "ethereal:crystal_ingot"},
		{"", "default:steel_ingot", ""},
		{"", "default:steel_ingot", ""}
	}
})
]]--
