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
register_biome(ethereal.frost, {
	name = "frost_floatland",
	heat_point = old and 10 or 5, humidity_point = old and 40 or 60,
	y_min = 1025, y_max = 1750,
	node_top = "ethereal:crystal_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 2})

register_biome(ethereal.frost, {
	name = "frost",
	heat_point = old and 10 or 5, humidity_point = old and 40 or 60,
	y_min = 2, y_max = 71,
	node_top = "ethereal:crystal_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.frost, {
	name = "frost_ocean",
	heat_point = old and 10 or 5, humidity_point = old and 40 or 60,
	y_min = -192, y_max = 1,
	node_top = "default:silver_sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3})
]]--
