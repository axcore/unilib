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
register_decoration((minetest.registered_nodes["default:pine_bush"] and 1), {
	name = "default:pine_bush",
	place_on = {"default:dirt_with_snow", "default:cold_dirt"},
	sidelen = 16, y_min = 4, y_max = 120,
	noise_params = {
		offset = -0.004, scale = 0.01, spread = {x = 100, y = 100, z = 100},
		seed = 137, octaves = 3, persist = 0.7},
	biomes = {"taiga", "snowy_grassland"},
	schematic = dpath .. "pine_bush.mts"})
]]--
