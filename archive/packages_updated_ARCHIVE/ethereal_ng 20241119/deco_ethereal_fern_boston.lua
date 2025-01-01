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
	place_on = {"default:dirt_with_grass", "ethereal:grove_dirt"},
	fill_ratio = 0.1,
	biomes = {"swamp", "grove"},
	decoration = "ethereal:fern"})

register_decoration(ethereal.frost, { -- chance of something edible so high up
	place_on = {"ethereal:crystal_dirt"},
	fill_ratio = 0.001, y_min = 1025, y_max = 1750,
	biomes = {"frost_floatland"},
	decoration = "ethereal:fern"})
]]--
