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
register_decoration(ethereal.snowy, {
	place_on = {"default:dirt_with_coniferous_litter"},
	fill_ratio = 0.8, y_min = 20, y_max = 140,
	biomes = {"coniferous_forest"},
	decoration = "default:snow"})

register_decoration(ethereal.alpine, {
	place_on = {"default:dirt_with_snow"},
	fill_ratio = 0.8, y_min = 40, y_max = 140,
	biomes = {"taiga"},
	decoration = "default:snow"})

register_decoration(1, {
	place_on = {"ethereal:cold_dirt"},
	fill_ratio = 0.8, y_min = 2, y_max = 40,
	biomes = {"snowy_grassland"},
	decoration = "default:snow"})
]]--
