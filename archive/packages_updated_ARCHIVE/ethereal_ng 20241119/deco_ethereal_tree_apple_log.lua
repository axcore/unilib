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
	register_decoration(ethereal.prairie, {
		name = "default:apple_log",
		place_on = {"default:dirt_with_grass", "ethereal:prairie_dirt"},
		sidelen = 16, fill_ratio = 0.001,
		biomes = {"deciduous_forest", "jumble", "swamp", "prairie"},
		schematic = dpath .. "apple_log.mts", place_offset_y = 1,
		flags = "place_center_x",
		rotation = "random",
		spawn_by = {"default:dirt_with_grass", "ethereal:prairie_dirt"}, num_spawn_by = 8})
]]--
