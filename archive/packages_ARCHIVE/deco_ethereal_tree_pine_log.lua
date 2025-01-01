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
	register_decoration(ethereal.snowy, {
		name = "default:pine_log",
		place_on = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
		fill_ratio = 0.0018, y_min = 4, y_max = 100,
		biomes = {"taiga", "coniferous_forest"},
		schematic = dpath .. "pine_log.mts", place_offset_y = 1,
		flags = "place_center_x",
		rotation = "random",
		spawn_by = {"default:dirt_with_snow", "default:dirt_with_coniferous_litter"},
		num_spawn_by = 8})
]]--
