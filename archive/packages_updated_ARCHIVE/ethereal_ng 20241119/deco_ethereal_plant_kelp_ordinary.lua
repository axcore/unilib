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
	name = "default:kelp",
	place_on = {"default:sand"},
	sidelen = 16, y_min = -10, y_max = -5,
	noise_params = {offset = -0.04, scale = 0.1, spread = {x = 200, y = 200, z = 200},
			seed = 87112, octaves = 3, persist = 0.7},
	biomes = {"frost_ocean", "deciduous_forest_ocean", "sandstone_ocean", "swamp_ocean",
			"snowy_grasland_ocean"},
	flags = "force_placement",
	decoration = "default:sand_with_kelp", place_offset_y = -1,
	param2 = 48, param2_max = 96})
]]--
