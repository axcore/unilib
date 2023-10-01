---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cucina_vegana
-- Code:    LGPL3.0
-- Media:   LGPL3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.peanut_scale,
		spread = {x = 70, y = 70, z = 70},
		seed = 62164,
		octaves = 3,
		persist = 0.6
	},
	y_min = 20,
	y_max = 150,
	decoration = "cucina_vegana:wild_peanut",
})
]]--
