---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cool_trees/pomegranate
-- Code:    GPLv3
-- Media:   GPLv3
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("pomegranate:trunk", {
	description = S("Pomegranate Tree Trunk"),
	tiles = {
		"pomegranate_trunk_top.png",
		"pomegranate_trunk_top.png",
		"pomegranate_trunk.png"
	},
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
})
minetest.register_craft({
	type = "fuel",
	recipe = "pomegranate:trunk",
	burntime = 30,
})

minetest.register_node("pomegranate:wood", {
	description = S("Pomegranate Tree Wood"),
	tiles = {"pomegranate_wood.png"},
	is_ground_content = false,
	groups = {wood = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_craft({
	output = "pomegranate:wood 4",
	recipe = {{"pomegranate:trunk"}}
})
minetest.register_craft({
	type = "fuel",
	recipe = "pomegranate:wood",
	burntime = 7,
})
if minetest.get_modpath("stairs") ~= nil then
	stairs.register_stair_and_slab(
		"pomegranate_trunk",
		"pomegranate:trunk",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"pomegranate_wood.png"},
		S("Pomegranate Tree Stair"),
		S("Pomegranate Tree Slab"),
		default.node_sound_wood_defaults()
	)
end
if minetest.get_modpath("moreblocks") then
	stairsplus:register_all("pomegranate", "wood", "pomegranate:wood", {
		description = "Pomegranate Tree",
		tiles = {"pomegranate_wood.png"},
		groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 3},
		sounds = default.node_sound_wood_defaults(),
	})
end

minetest.register_node("pomegranate:leaves", {
	description = S("Pomegranate Tree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"pomegranate_leaves.png"},
	paramtype = "light",
	walkable = true,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"pomegranate:sapling"}, rarity = 10},
			{items = {"pomegranate:leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves,
})
default.register_leafdecay({
	trunks = {"pomegranate:trunk"},
	leaves = {"pomegranate:leaves"},
	radius = 3,
})

minetest.register_node("pomegranate:sapling", {
	description = S("Pomegranate Tree Sapling"),
	drawtype = "plantlike",
	tiles = {"pomegranate_sapling.png"},
	inventory_image = "pomegranate_sapling.png",
	wield_image = "pomegranate_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_new_pomegranate_tree,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(2400,4800))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"pomegranate:sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -2, y = 1, z = -2},
			{x = 2, y = 6, z = 2},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})
local function grow_new_pomegranate_tree(pos)
	if not default.can_grow(pos) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
	minetest.remove_node(pos)
	minetest.place_schematic({x = pos.x-1, y = pos.y, z = pos.z-1}, modpath.."/schematics/pomegranate.mts", "0", nil, false)
end
if minetest.global_exists("flowerpot") then
	flowerpot.register_node("pomegranate:sapling")
end

if minetest.settings:get_bool("cool_fences", true) then
	local fence = {
		description = S("Pomegranate Tree Wood Fence"),
		texture =  "pomegranate_wood.png",
		material = "pomegranate:wood",
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		sounds = default.node_sound_wood_defaults(),
	}
	default.register_fence("pomegranate:fence", table.copy(fence))
	fence.description = S("Pomegranate Tree Fence Rail")
	default.register_fence_rail("pomegranate:fence_rail", table.copy(fence))

	if minetest.get_modpath("doors") ~= nil then
		fence.description = S("Pomegranate Tree Fence Gate")
		doors.register_fencegate("pomegranate:gate", table.copy(fence))
	end
end

if mg_name ~= "v6" and mg_name ~= "singlenode" then
	minetest.register_decoration({
	name = "pomegranate:pomegranate_tree",
		deco_type = "schematic",
		place_on = {"default:dry_dirt"},
		sidelen = 16,
		noise_params = {
			offset = 0.0005,
			scale = 0.00004,
			spread = {x = 250, y = 250, z = 250},
			seed = 978,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 80,
		schematic = modpath.."/schematics/pomegranate.mts",
		flags = "place_center_x, place_center_z,  force_placement",
		rotation = "random",
	})
end
]]--
