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
	place_on = {"default:dirt_with_grass", "default:sand"},
	sidelen = 16, y_min = 1, y_max = 15,
	noise_params = {offset = 0, scale = 0.009, spread = {x = 100, y = 100, z = 100},
			seed = 7136, octaves = 3, persist = 0.6},
	decoration = "bakedclay:mannagrass",
	spawn_by = "group:water", num_spawn_by = 1})
end
]]--
