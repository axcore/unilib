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
register_decoration((minetest.registered_nodes["default:blueberry_bush_leaves"] and 1), {
	name = "default:blueberry_bush",
	place_on = {"default:dirt_with_coniferous_litter", "default:dirt_with_snow",
			"ethereal:cold_dirt"},
	sidelen = 16,
	noise_params = {
		offset = -0.004, scale = 0.01, spread = {x = 100, y = 100, z = 100},
		seed = 697, octaves = 3, persist = 0.7},
	biomes = {"coniferous_forest", "taiga", "snowy_grassland"},
	schematic = dpath .. "blueberry_bush.mts", place_offset_y = 1})
]]--
