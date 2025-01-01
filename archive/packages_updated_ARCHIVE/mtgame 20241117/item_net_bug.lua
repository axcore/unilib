---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    fireflies
-- Code:    MIT
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_tool("fireflies:bug_net", {
	description = S("Bug Net"),
	inventory_image = "fireflies_bugnet.png",
	pointabilities = {nodes = {["group:catchable"] = true}},
	tool_capabilities = {
		groupcaps = {
			catchable = { maxlevel = 1, uses = 256, times = { [1] = 0, [2] = 0, [3] = 0 } }
		},
	},
})
minetest.register_craft( {
	output = "fireflies:bug_net",
	recipe = {
		{"farming:string", "farming:string"},
		{"farming:string", "farming:string"},
		{"group:stick", ""}
	}
})
]]--
