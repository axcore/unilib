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
register_decoration(ethereal.sandstone, {
	place_on = {"default:sandstone"},
	fill_ratio = 0.002,
	biomes = {"sandstone_desert"},
	decoration = "default:cactus", height_max = 2})

register_decoration(ethereal.desert, {
	place_on = {"default:desert_sand"},
	fill_ratio = 0.005,
	biomes = {"desert"},
	decoration = "default:cactus", height_max = 4})

register_decoration(ethereal.desert, {
	place_on = {"default:desert_sand"},
	y_min = 5, y_max = 100,
	noise_params = {
		offset = -0.0005, scale = 0.0015, spread = {x = 200, y = 200, z = 200},
		seed = 230, octaves = 3, persist = 0.6},
	biomes = {"desert"},
	schematic = dpath .. "large_cactus.mts",
	flags = "place_center_x",
	rotation = "random"})
]]--
