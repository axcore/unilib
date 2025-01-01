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
register_biome(ethereal.alpine, {
	name = "taiga",
	heat_point = old and 10 or 25, humidity_point = old and 40 or 70,
	y_min = 4, y_max = 140,
	node_top = "default:dirt_with_snow", depth_top = 1,
	node_filler = "default:dirt", depth_filler = 2})

register_biome(ethereal.alpine, {
	name = "taiga_ocean",
	heat_point = old and 10 or 25, humidity_point = old and 40 or 70,
	y_min = -255, y_max = 3,
	node_dust = "default:snow",
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3,
	node_cave_liquid = "default:water_source",
	vertical_blend = 1})

register_biome(ethereal.alpine, {
	name = "taiga_under",
	heat_point = old and 10 or 25, humidity_point = old and 40 or 70,
	y_min = -31000, y_max = -256,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})
]]--
