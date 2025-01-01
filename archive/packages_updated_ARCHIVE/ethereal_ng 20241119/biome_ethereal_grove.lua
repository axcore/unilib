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
register_biome(ethereal.grove, {
	name = "grove",
	heat_point = old and 45 or 40, humidity_point = old and 35 or 25,
	y_min = 3, y_max = 23,
	node_top = "ethereal:grove_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.grove, {
	name = "grove_ocean",
	heat_point = old and 45 or 40, humidity_point = old and 35 or 25,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})
]]--
