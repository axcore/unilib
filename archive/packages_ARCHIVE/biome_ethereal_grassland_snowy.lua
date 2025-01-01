---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng (20241119 update)
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
	register_biome(ethereal.snowy_grassland, {
		name = "snowy_grassland",
		heat_point = 15, humidity_point = 58, y_min = 3, y_max = 30,
		node_top = "ethereal:cold_dirt", depth_top = 1,
		node_filler = "default:dirt", depth_filler = 3})

	register_biome(ethereal.snowy_grassland, {
		name = "snowy_grassland_ocean",
		node_dust = "default:snow",
		heat_point = 15, humidity_point = 58, y_min = -192, y_max = 2,
		node_top = "default:sand", depth_top = 1,
		node_filler = "default:sand", depth_filler = 3,
		vertical_blend = 1})
]]--
