---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    snow
-- Code:    GPL 3.0
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
--Spread moss to cobble.
minetest.register_abm({
	nodenames = {"default:cobble"},
	neighbors = {"snow:moss"},
	interval = 20,
	chance = 6,
	catch_up = false,
	action = function(pos, node)
		node.name = "default:mossycobble"
		minetest.add_node(pos, node)
	end,
})
]]--
