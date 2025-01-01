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
-- flowers
register_decoration(ethereal.grassy, {
	place_on = {"default:dirt_with_grass", "ethereal:grove_dirt"},
	fill_ratio = 0.025,
	biomes = {"deciduous_forest", "grassytwo", "mediterranean"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow",
			"flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola"}})

-- prairie flowers
register_decoration(ethereal.prairie, {
	place_on = {"ethereal:prairie_dirt"},
	fill_ratio = 0.035,
	biomes = {"prairie"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow",
			"flowers:geranium", "flowers:rose", "flowers:tulip",
			"flowers:viola", "flowers:chrysanthemum_green",
			"flowers:tulip_black"}})
]]--
