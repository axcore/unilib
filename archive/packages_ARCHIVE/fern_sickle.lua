---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("australia:small_fern", {
	description = "Pellaea falcata: Sickle Fern",
	inventory_image = "aus_fern.png",
	drawtype = "plantlike",
	visual_scale = 1,
	paramtype = "light",
	tiles = {"aus_fern.png"},
	walkable = false,
	buildable_to = true,
	groups = {snappy=3,flammable=2,attached_node=1,not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -1/2, -7/16, 7/16, 0, 7/16},
	},
	drop = "australia:small_fern",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.008,
		spread = {x = 200, y = 200, z = 200},
		seed = 81,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"tasmania"},
	y_min = 36,
	y_max = 140,
	decoration = "australia:small_fern",
})
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.007,
		spread = {x = 200, y = 200, z = 200},
		seed = 81,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"victorian_forests"},
	y_min = 36,
	y_max = 140,
	decoration = "australia:small_fern",
})
]]--
