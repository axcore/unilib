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
register_biome(ethereal.grassytwo, {
	name = "grassytwo",
	heat_point = 15, humidity_point = old and 40 or 25,
	y_min = 1, y_max = 91,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.grassytwo, {
	name = "grassytwo_ocean",
	heat_point = 15, humidity_point = old and 40 or 25,
	y_min = -192, y_max = 2,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 2})
]]--
