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
						{items = {"cucina_vegana:seed_" .. pname .. " 2"}},
						{items = {"cucina_vegana:" .. pname .. ""}},
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
		place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = cucina_vegana.plant_settings.sunflower_scale,
			spread = {x = 10, y = 10, z = 10},
			seed = 8756,
			octaves = 3,
			persist = 0.6
		},
		y_min = 0,
		y_max = 150,
		decoration = "cucina_vegana:wild_sunflower",
    })
]]--