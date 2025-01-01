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
-- Tundra patchy snow
register_decoration(ethereal.tundra, {
	place_on = {"default:permafrost_with_moss", "default:permafrost_with_stones",
			"default:stone", "default:gravel"},
	sidelen = 4, y_min = 1, y_max = 50,
	noise_params = {offset = 0, scale = 1.0, spread = {x = 100, y = 100, z = 100},
			seed = 172555, octaves = 3, persist = 1.0},
	biomes = {"tundra", "tundra_beach"},
	decoration = "default:snow"})
]]--
