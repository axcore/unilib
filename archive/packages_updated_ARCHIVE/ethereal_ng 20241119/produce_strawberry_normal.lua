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
minetest.register_craftitem("ethereal:strawberry", {
	description = S("Strawberry"),
	inventory_image = "ethereal_strawberry.png",
	wield_image = "ethereal_strawberry.png",
	groups = {food_strawberry = 1, food_berry = 1},
	on_use = minetest.item_eat(1),

	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "ethereal:strawberry_1")
	end
})
ethereal.add_eatable("ethereal:strawberry", 1)

-- Strawberry definition
local def = {
	description = S("Strawberry") .. S(" Crop"),
	drawtype = "plantlike",
	tiles = {"ethereal_strawberry_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	waving = 1,
	walkable = false,
	buildable_to = true,
	drop = "",
	selection_box = {
		type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
	},
	groups = {
		snappy = 3, flammable = 2, plant = 1, attached_node = 1,
		not_in_creative_inventory = 1, growing = 1
	},
	sounds = default.node_sound_leaves_defaults()
}

--stage 1

minetest.register_node("ethereal:strawberry_1", table.copy(def))

-- stage 2

def.tiles = {"ethereal_strawberry_2.png"}
minetest.register_node("ethereal:strawberry_2", table.copy(def))

-- stage 3

def.tiles = {"ethereal_strawberry_3.png"}
minetest.register_node("ethereal:strawberry_3", table.copy(def))

-- stage 4

def.tiles = {"ethereal_strawberry_4.png"}
minetest.register_node("ethereal:strawberry_4", table.copy(def))

-- stage 5

def.tiles = {"ethereal_strawberry_5.png"}
minetest.register_node("ethereal:strawberry_5", table.copy(def))

-- stage 6

def.tiles = {"ethereal_strawberry_6.png"}
def.drop = {
	items = {
		{items = {"ethereal:strawberry 1"}, rarity = 2},
		{items = {"ethereal:strawberry 2"}, rarity = 3}
	}
}
minetest.register_node("ethereal:strawberry_6", table.copy(def))

-- stage 7

def.tiles = {"ethereal_strawberry_7.png"}
def.drop = {
	items = {
		{items = {"ethereal:strawberry 1"}, rarity = 1},
		{items = {"ethereal:strawberry 1"}, rarity = 3}
	}
}
minetest.register_node("ethereal:strawberry_7", table.copy(def))

-- stage 8 (final)

def.tiles = {"ethereal_strawberry_8.png"}
def.groups.growing = nil
def.selection_box = {
	type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -2.5/16, 0.5}
}
def.drop = {
	items = {
		{items = {"ethereal:strawberry 2"}, rarity = 1},
		{items = {"ethereal:strawberry 3"}, rarity = 3}
	}
}
minetest.register_node("ethereal:strawberry_8", table.copy(def))

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
