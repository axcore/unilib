---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    default
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
--
-- From:    mtg_plus
-- Code:    MIT
-- Media:   CC-BY-SA 3.0/CC-BY 3.0/MIT
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("default:papyrus", {
	description = S("Papyrus"),
	drawtype = "plantlike",
	tiles = {"default_papyrus.png"},
	inventory_image = "default_papyrus.png",
	wield_image = "default_papyrus.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.5, 6 / 16},
	},
	groups = {snappy = 3, flammable = 2},
	sounds = default.node_sound_leaves_defaults(),

	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})
minetest.register_craft({
	type = "fuel",
	recipe = "default:papyrus",
	burntime = 3,
})

-- Dirt version for rainforest swamp
minetest.register_decoration({
    name = "default:papyrus_on_dirt",
    deco_type = "schematic",
    place_on = {"default:dirt"},
    sidelen = 16,
    noise_params = {
        offset = -0.3,
        scale = 0.7,
        spread = {x = 200, y = 200, z = 200},
        seed = 354,
        octaves = 3,
        persist = 0.7
    },
    biomes = {"rainforest_swamp"},
    y_max = 0,
    y_min = 0,
    schematic = minetest.get_modpath("default") .. "/schematics/papyrus_on_dirt.mts",
})

-- Dry dirt version for savanna shore
minetest.register_decoration({
    name = "default:papyrus_on_dry_dirt",
    deco_type = "schematic",
    place_on = {"default:dry_dirt"},
    sidelen = 16,
    noise_params = {
        offset = -0.3,
        scale = 0.7,
        spread = {x = 200, y = 200, z = 200},
        seed = 354,
        octaves = 3,
        persist = 0.7
    },
    biomes = {"savanna_shore"},
    y_max = 0,
    y_min = 0,
    schematic = minetest.get_modpath("default") ..
        "/schematics/papyrus_on_dry_dirt.mts",
})
]]--

--[[
minetest.register_node("mtg_plus:papyrus_block", {
	description = S("Papyrus Block"),
	_doc_items_longdesc = build,
	tiles = {"mtg_plus_papyrus_block_y.png","mtg_plus_papyrus_block_y.png","mtg_plus_papyrus_block_side2.png","mtg_plus_papyrus_block_side2.png","mtg_plus_papyrus_block_side.png","mtg_plus_papyrus_block_side.png"},
	groups = {snappy = 2, choppy = 2, flammable = 3},
	is_ground_content = false,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_craft({
	output = "mtg_plus:papyrus_block",
	recipe = { { "default:papyrus", "default:papyrus", "default:papyrus", },
	{ "default:papyrus", "default:papyrus", "default:papyrus", },
	{ "default:papyrus", "default:papyrus", "default:papyrus", } }
})
minetest.register_craft({
	output = "default:papyrus 9",
	recipe = { { "mtg_plus:papyrus_block" } }
})
minetest.register_craft({
	type = "fuel",
	recipe = "mtg_plus:papyrus_block",
	burntime = 9,
})
]]--
