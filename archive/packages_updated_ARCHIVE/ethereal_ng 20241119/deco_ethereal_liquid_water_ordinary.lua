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
register_decoration(1, {
	place_on = {"default:dirt_with_grass"},
	sidelen = 4, fill_ratio = 0.01, y_min = 1, y_max = 2,
	biomes = {"swamp"},
	flags = "force_placement",
	decoration = "default:water_source", place_offset_y = -1,
	spawn_by = "default:dirt_with_grass", num_spawn_by = 8})

register_decoration(1, {
	place_on = {"default:dirt_with_grass"},
	sidelen = 4, fill_ratio = 0.1, y_min = 1, y_max = 2,
	biomes = {"swamp"},
	flags = "force_placement",
	decoration = "default:water_source", place_offset_y = -1,
	spawn_by = {"default:dirt_with_grass", "default:water_source"}, num_spawn_by = 8})
]]--
