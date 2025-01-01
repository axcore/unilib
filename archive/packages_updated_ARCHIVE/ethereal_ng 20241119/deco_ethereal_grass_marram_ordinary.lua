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
	place_on = {"default:sand"},
	sidelen = 4, y_min = 3, y_max = 6,
	noise_params = {offset = -0.7, scale = 3.0, spread = {x = 16, y = 16, z = 16},
			seed = 513337, octaves = 1, persist = 0.0, flags = "absvalue, eased"},
	biomes = {"coniferous_forest_dunes", "grassland_ocean"},
	decoration = {"default:marram_grass_1", "default:marram_grass_2",
			"default:marram_grass_3"}})
]]--
