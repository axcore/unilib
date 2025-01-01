---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    forest
-- Code:    unknown
-- Media:   unknown
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_abm({
	nodenames = {"group:oil"},
	neighbors = {"group:igniter"},
	chance = 10,
	interval = 2,
	action = function(pos)
		minetest.set_node(pos, {name = "fire:basic_flame"})
		minetest.sound_play("default_cool_lava", {pos = pos,  gain = 0.25})
	end,
})
]]--
