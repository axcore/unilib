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
local abundant = minetest.settings:get_bool("ethereal.abundant_onions") ~= false
register_decoration(1, {
	place_on = {"default:dirt_with_grass", "ethereal:prairie_dirt"},
	fill_ratio = (abundant and 0.025 or 0.005),
	biomes = {"deciduous_forest", "grassytwo", "jumble", "prairie"},
	decoration = "ethereal:onion_4"})
]]--
