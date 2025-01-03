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
	place_on = {"ethereal:jungle_dirt", "default:dirt_with_rainforest_litter"},
	sidelen = 16, y_min = 1, y_max = 90,
	noise_params = {offset = 0, scale = 0.01, spread = {x = 100, y = 100, z = 100},
			seed = 7135, octaves = 3, persist = 0.6},
	decoration = "bakedclay:lazarus",
	spawn_by = "default:jungletree", num_spawn_by = 1})
]]--
