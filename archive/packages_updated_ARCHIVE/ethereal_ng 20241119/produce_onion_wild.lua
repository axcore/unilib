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
minetest.register_craftitem("ethereal:wild_onion_plant", {
	description = S("Wild Onion"),
	inventory_image = "ethereal_wild_onion.png",
	wield_image = "ethereal_wild_onion.png",
	groups = {food_onion = 1},
	on_use = minetest.item_eat(2),

	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "ethereal:wild_onion_1")
	end
})
ethereal.add_eatable("ethereal:wild_onion_plant", 2)

-- Onion definition
local def = {
	description = S("Wild Onion") .. S(" Crop"),
	drawtype = "plantlike",
	tiles = {"ethereal_wild_onion_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {
		type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
	},
	groups = {
		snappy = 3, flammable = 2, plant = 1, attached_node = 1,
		growing = 1, not_in_creative_inventory = 1
	},
	sounds = default.node_sound_leaves_defaults()
}

--stage 1
minetest.register_node("ethereal:onion_1", table.copy(def))

--stage 2
def.tiles = {"ethereal_wild_onion_2.png"}
minetest.register_node("ethereal:onion_2", table.copy(def))

--stage 3
def.tiles = {"ethereal_wild_onion_3.png"}
minetest.register_node("ethereal:onion_3", table.copy(def))

--stage 4
def.tiles = {"ethereal_wild_onion_4.png"}
def.drop = {
	items = {
		{items = {"ethereal:wild_onion_plant"}, rarity = 1},
		{items = {"ethereal:wild_onion_plant 2"}, rarity = 3},
	}
}
minetest.register_node("ethereal:onion_4", table.copy(def))

--stage 5
def.tiles = {"ethereal_wild_onion_5.png"}
def.groups.growing = nil
def.selection_box = {
	type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -2.5/16, 0.5}
}
def.drop = {
	items = {
		{items = {"ethereal:wild_onion_plant 2"}, rarity = 1},
		{items = {"ethereal:wild_onion_plant 3"}, rarity = 2},
	}
}
minetest.register_node("ethereal:onion_5", table.copy(def))

local abundant = minetest.settings:get_bool("ethereal.abundant_onions") ~= false
register_decoration(1, {
	place_on = {"default:dirt_with_grass", "ethereal:prairie_dirt"},
	fill_ratio = (abundant and 0.025 or 0.005),
	biomes = {"deciduous_forest", "grassytwo", "jumble", "prairie"},
	decoration = "ethereal:onion_4"})
]]--
