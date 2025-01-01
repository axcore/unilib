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
	register_decoration(ethereal.grove, {
		name = "ethereal:banana_log",
		place_on = {"ethereal:grove_dirt"},
		fill_ratio = 0.0018, y_min = 4, y_max = 100,
		biomes = {"grove"},
		schematic = {
			size = {x = 3, y = 1, z = 1},
			data = {
				{name = "ethereal:banana_trunk", param1 = 255, param2 = 16},
				{name = "ethereal:banana_trunk", param1 = 255, param2 = 16},
				{name = "ethereal:banana_trunk", param1 = 201, param2 = 16}
			}
		}, place_offset_y = 1,
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "ethereal:grove_dirt", num_spawn_by = 8})
]]--
