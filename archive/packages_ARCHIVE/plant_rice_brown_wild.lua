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
minetest.register_node("cucina_vegana:wild_" .. pname, {
	description = S("Wild") .. " " .. dname,
	paramtype = "light",
	walkable = false,
	drop = {
			items = {
					{items = {"cucina_vegana:seed_" .. pname .. " 3"}},
					{items = {"cucina_vegana:" .. pname}},
				}
			},
	drawtype = "plantlike",
	paramtype2 = "facedir",
	tiles = {"cucina_vegana_" .. pname .. "_" .. step .. ".png"},
	sunlight_propagates = true,
	groups = {snappy = 3, dig_immediate=1, flammable=2, plant=1, attached_node = 1, growing = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5}, -- side f
			},
	},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter", "default:dirt", "default:dirt_with_grass"},
	spawn_by = {"default:water_source", "default:river_water_source",
                "default:water_flowing", "default:river_water_flowing", "default:papyrus", "default:jungletree"},
	--biomes = {"rainforest", "rainforest_swamp", "rainforest_ocean",
    --          "grassland_ocean", "deciduous_forest_shore", "deciduous_forest_ocean", "coniferous_forest_ocean"},
	sidelen = 32,
	noise_params = {
		offset = 0,
		scale = cucina_vegana.plant_settings.rice_scale,
		spread = {x = 40, y = 40, z = 40},
		seed = 56814,
		octaves = 3,
		persist = 0.6
	},
	y_min = -5,
	y_max = 50,
	decoration = "cucina_vegana:wild_rice",
})
]]--
