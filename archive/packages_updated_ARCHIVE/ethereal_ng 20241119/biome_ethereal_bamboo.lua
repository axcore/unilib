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
register_biome(ethereal.bamboo, {
	name = "bamboo",
	heat_point = 45, humidity_point = old and 75 or 45,
	y_min = 3, y_max = 70,
	node_top = "ethereal:bamboo_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.bamboo, {
	name = "bamboo_ocean",
	heat_point = 45, humidity_point = old and 75 or 45,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})
]]--
