---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    tnt
-- Code:    MIT
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
if enable_tnt then
	minetest.register_abm({
		label = "TNT ignition",
		nodenames = {"group:tnt", "tnt:gunpowder"},
		neighbors = {"fire:basic_flame", "default:lava_source", "default:lava_flowing"},
		interval = 4,
		chance = 1,
		action = function(pos, node)
			tnt.burn(pos, node.name)
		end,
	})
end
]]--
