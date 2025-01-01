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
register_biome(ethereal.mushroom, {
	name = "mushroom",
	heat_point = 45, humidity_point = old and 55 or 82,
	y_min = 4, y_max = 50,
	node_top = "ethereal:mushroom_dirt", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.mushroom, {
	name = "mushroom_ocean",
	heat_point = 45, humidity_point = old and 55 or 82,
	y_min = -255, y_max = 5,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2,
	vertical_blend = 1})
]]--
