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
	sidelen = 16, y_min = 0, y_max = 0,
	noise_params = {
		offset = -0.12, scale = 0.3, spread = {x = 200, y = 200, z = 200},
		seed = 33, octaves = 3, persist = 0.7},
	biomes = {"desert_ocean", "plains_ocean", "mesa_ocean", "grove_ocean",
			"deciduous_forest_ocean", "swamp_ocean"},
	schematic = ethereal.waterlily,
	rotation = "random"})
]]--
