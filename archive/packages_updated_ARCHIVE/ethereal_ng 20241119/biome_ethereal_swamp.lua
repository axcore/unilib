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
register_biome(ethereal.swamp, {
	name = "swamp",
	heat_point = 80, humidity_point = 90, y_min = 1, y_max = 7,
	node_top = "default:dirt_with_grass", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 3})

register_biome(ethereal.quicksand, {
	name = "swamp_beach",
	heat_point = 80, humidity_point = 90, y_min = -1, y_max = 0,
	node_top = "ethereal:quicksand2", depth_top = 3,
	node_filler = "default:clay", depth_filler = 2,
	vertical_blend = 1})

register_biome(ethereal.swamp, {
	name = "swamp_ocean",
	heat_point = 80, humidity_point = 90, y_min = -192, y_max = -1,
	node_top = "default:sand", depth_top = 2,
	node_filler = "default:clay", depth_filler = 2,
	vertical_blend = 2})
]]--
