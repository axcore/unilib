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
register_biome(ethereal.prairie, {
	name = "prairie",
	heat_point = old and 20 or 30, humidity_point = old and 40 or 35,
	y_min = 3, y_max = 26,
	node_top = "ethereal:prairie_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.prairie, {
	name = "prairie_ocean",
	heat_point = old and 20 or 30, humidity_point = old and 40 or 35,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})
]]--
