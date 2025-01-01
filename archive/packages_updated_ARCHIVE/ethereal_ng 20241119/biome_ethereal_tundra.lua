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
register_biome(ethereal.tundra, {
	name = "tundra_highland",
	heat_point = 0, humidity_point = 40, y_max = 180, y_min = 47,
	node_dust = "default:snow",
	node_riverbed = "default:gravel", depth_riverbed = 2})

register_biome(ethereal.tundra, {
	name = "tundra",
	heat_point = 0, humidity_point = 40, y_max = 46, y_min = 2,
	node_top = "default:permafrost_with_stones", depth_top = 1,
	node_filler = "default:permafrost", depth_filler = 1,
	node_riverbed = "default:gravel", depth_riverbed = 2,
	vertical_blend = 4})

register_biome(ethereal.tundra, {
	name = "tundra_beach",
	heat_point = 0, humidity_point = 40, y_max = 1, y_min = -3,
	node_top = "default:gravel", depth_top = 1,
	node_filler = "default:gravel", depth_filler = 2,
	node_riverbed = "default:gravel", depth_riverbed = 2,
	vertical_blend = 1})

register_biome(ethereal.tundra, {
	name = "tundra_ocean",
	heat_point = 0, humidity_point = 40, y_max = -4, y_min = -112,
	node_top = "default:sand", depth_top = 1,
	node_filler = "default:sand", depth_filler = 3,
	node_riverbed = "default:gravel", depth_riverbed = 2,
	vertical_blend = 1})

register_biome(ethereal.tundra, {
	name = "tundra_under",
	heat_point = 0, humidity_point = 40, y_max = -256, y_min = -31000,
	node_cave_liquid = {"default:water_source", "default:lava_source"}})
]]--
