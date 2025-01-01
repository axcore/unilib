---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    farming_redo
-- Code:    MIT
-- Media:   CC BY-SA 3.0/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
-- Just in case a growing type or added node is missed (also catches existing
-- nodes added to map before timers were incorporated).
minetest.register_abm({
	nodenames = {"group:growing"},
	interval = 300,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		farming.handle_growth(pos, node)
	end
})
]]--
