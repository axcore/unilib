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
	register_decoration(ethereal.plains, {
		name = "ethereal:scorched_log",
		place_on = {"ethereal:dry_dirt"},
		fill_ratio = 0.0018, y_min = 4, y_max = 100,
		biomes = {"plains"},
		schematic = {
			size = {x = 3, y = 1, z = 1},
			data = {
				{name = "ethereal:scorched_tree", param1 = 201, param2 = 16},
				{name = "ethereal:scorched_tree", param1 = 255, param2 = 16},
				{name = "ethereal:scorched_tree", param1 = 255, param2 = 16}
			}
		}, place_offset_y = 1,
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "ethereal:dry_dirt", num_spawn_by = 8})
]]--
