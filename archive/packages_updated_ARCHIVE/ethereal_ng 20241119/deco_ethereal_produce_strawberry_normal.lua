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
-- farming redo check, salt crystal if found, strawberry if not
if minetest.get_modpath("farming") and farming.mod and farming.mod == "redo" then

	register_decoration(ethereal.glacier, {
		place_on = "default:silver_sand",
		fill_ratio = 0.001, y_min = 4, y_max = 100,
		decoration = "farming:salt_crystal"})
else
	register_decoration(1, {
		place_on = {"default:dirt_with_grass", "ethereal:prairie_dirt"},
		sidelen = 16, y_min = 15, y_max = 55,
		noise_params = {offset = 0, scale = 0.002, spread = {x = 100, y = 100, z = 100},
				seed = 143, octaves = 3, persist = 0.6},
		decoration = "ethereal:strawberry_7"})
end
]]--
