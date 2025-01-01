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
	register_decoration(ethereal.savanna, {
		name = "default:acacia_log",
		deco_type = "schematic",
		place_on = {"default:dry_dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0, scale = 0.001, spread = {x = 250, y = 250, z = 250},
			seed = 2, octaves = 3, persist = 0.66},
		biomes = {"savanna"},
		schematic = dpath .. "acacia_log.mts", place_offset_y = 1,
		flags = "place_center_x",
		rotation = "random",
		spawn_by = "default:dry_dirt_with_dry_grass", num_spawn_by = 8})
]]--
