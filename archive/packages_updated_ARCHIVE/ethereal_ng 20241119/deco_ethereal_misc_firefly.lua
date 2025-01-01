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
if minetest.get_modpath("fireflies") then

	register_decoration(1, {
		name = "fireflies:firefly_low",
		place_on = {"default:dirt_with_grass", "default:dirt_with_coniferous_litter",
				"default:dirt_with_rainforest_litter", "default:dirt",
				"ethereal:prairie_dirt"},
		fill_ratio = 0.0005, y_min = -1, y_max = 200,
		biomes = {"deciduous_forest", "grassytwo", "coniferous_forest", "rainforest",
				"swamp"},
		decoration = "fireflies:hidden_firefly", place_offset_y = 2})

	-- restart firefly timers
	minetest.register_lbm({
		name = ":fireflies:firefly_timer",
		nodenames = {"fireflies:firefly", "fireflies:hidden_firefly"},
		run_at_every_load = true,

		action = function(pos) minetest.get_node_timer(pos):start(5) end
	})
end
]]--
