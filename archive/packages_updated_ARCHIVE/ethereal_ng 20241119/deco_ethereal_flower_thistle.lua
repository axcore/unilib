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
	place_on = {"ethereal:prairie_dirt", "default:dirt_with_grass",
			"ethereal:grove_dirt", "ethereal:bamboo_dirt"},
	sidelen = 16, y_min = 15, y_max = 90,
	noise_params = {offset = 0, scale = 0.004, spread = {x = 100, y = 100, z = 100},
			seed = 7134, octaves = 3, persist = 0.6},
	decoration = "bakedclay:thistle"})
]]--
