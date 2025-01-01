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
register_decoration(1, {
	place_on = {"default:dirt_with_dry_grass", "default:dry_dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.004, scale = 0.01, spread = {x = 100, y = 100, z = 100},
		seed = 90155, octaves = 3, persist = 0.7},
	biomes = {"savanna", "mesa"},
	schematic = dpath .. "acacia_bush.mts"})
]]--
