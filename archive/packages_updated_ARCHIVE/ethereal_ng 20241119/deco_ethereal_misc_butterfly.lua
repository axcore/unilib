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
if minetest.get_modpath("butterflies") then

	register_decoration(1, {
		name = "butterflies:butterfly",
		place_on = {"default:dirt_with_grass", "ethereal:prairie_dirt"},
		fill_ratio = 0.005, y_min = 1, y_max = 200,
		biomes = {"deciduous_forest", "grassytwo", "prairie", "jumble"},
		decoration = {"butterflies:butterfly_white", "butterflies:butterfly_red",
				"butterflies:butterfly_violet"}, place_offset_y = 2,
		spawn_by = "group:flower", num_spawn_by = 1})

	-- restart butterfly timers
	minetest.register_lbm({
		name = ":butterflies:butterfly_timer",
		nodenames = {
			"butterflies:butterfly_white", "butterflies:butterfly_red",
			"butterflies:butterfly_violet"
		},
		run_at_every_load = true,

		action = function(pos) minetest.get_node_timer(pos):start(5) end
	})
end
]]--
