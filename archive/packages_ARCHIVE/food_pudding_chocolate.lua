---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    pie
-- Code:    MIT
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
pie.register_pie("choc", "Chocolate Cake")
minetest.register_craft({
	output = "pie:choc_0",
	recipe = {
		{i_cocoa, i_milk, i_cocoa},
		{i_sugar, i_egg, i_sugar},
		{i_wheat, i_flour, i_wheat}
	},
	replacements = replace_these
})
]]--