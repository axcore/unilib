---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng (20241119 update)
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_abm({
	label = "Slime mold spread",
	nodenames = {"ethereal:slime_mold"},
	neighbors = {"ethereal:spore_grass", "ethereal:fire_flower"},
	interval = 15,
	chance = 4,
	catch_up = false,

	action = function(pos, node)

		if minetest.find_node_near(pos, 1, {"ethereal:fire_flower"}) then

			minetest.sound_play("fire_extinguish_flame",
					{pos = pos, gain = 0.05, max_hear_distance = 3}, true)

			minetest.remove_node(pos) ; return
		end

		local near = minetest.find_node_near(pos, 1, {"ethereal:spore_grass"})

		if near then

			minetest.sound_play("default_gravel_dug",
					{pos = near, gain = 0.3, max_hear_distance = 3}, true)

			minetest.set_node(near, {name = "ethereal:slime_mold"})
		end
	end
})
]]--
