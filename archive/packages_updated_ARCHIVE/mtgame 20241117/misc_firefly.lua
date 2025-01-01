---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    fireflies
-- Code:    MIT
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
-- Legacy compatibility, when pointabilities don't exist, pointable is set to true.
local pointable_compat = not minetest.features.item_specific_pointabilities

minetest.register_node("fireflies:firefly", {
	description = S("Firefly"),
	drawtype = "plantlike",
	tiles = {{
		name = "fireflies_firefly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 1.5
		},
	}},
	inventory_image = "fireflies_firefly.png",
	wield_image =  "fireflies_firefly.png",
	waving = 1,
	paramtype = "light",
	sunlight_propagates = true,
	buildable_to = true,
	walkable = false,
	pointable = pointable_compat,
	groups = {catchable = 1},
	selection_box = {
		type = "fixed",
		fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	},
	light_source = 6,
	floodable = true,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(1)
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) > 11 then
			minetest.set_node(pos, {name = "fireflies:hidden_firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

minetest.register_node("fireflies:hidden_firefly", {
	description = S("Hidden Firefly"),
	drawtype = "airlike",
	inventory_image = "fireflies_firefly.png^default_invisible_node_overlay.png",
	wield_image =  "fireflies_firefly.png^default_invisible_node_overlay.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	groups = {not_in_creative_inventory = 1},
	floodable = true,
	on_construct = function(pos)
		minetest.get_node_timer(pos):start(1)
	end,
	on_timer = function(pos, elapsed)
		if minetest.get_node_light(pos) <= 11 then
			minetest.set_node(pos, {name = "fireflies:firefly"})
		end
		minetest.get_node_timer(pos):start(30)
	end
})

-- register fireflies as decorations
if minetest.get_mapgen_setting("mg_name") == "v6" then

	minetest.register_decoration({
		name = "fireflies:firefly_low",
		deco_type = "simple",
		place_on = "default:dirt_with_grass",
		place_offset_y = 2,
		sidelen = 80,
		fill_ratio = 0.0002,
		y_max = 31000,
		y_min = 1,
		decoration = "fireflies:hidden_firefly",
	})

	minetest.register_decoration({
		name = "fireflies:firefly_high",
		deco_type = "simple",
		place_on = "default:dirt_with_grass",
		place_offset_y = 3,
		sidelen = 80,
		fill_ratio = 0.0002,
		y_max = 31000,
		y_min = 1,
		decoration = "fireflies:hidden_firefly",
	})

else

	minetest.register_decoration({
		name = "fireflies:firefly_low",
		deco_type = "simple",
		place_on = {
			"default:dirt_with_grass",
			"default:dirt_with_coniferous_litter",
			"default:dirt_with_rainforest_litter",
			"default:dirt"
		},
		place_offset_y = 2,
		sidelen = 80,
		fill_ratio = 0.0005,
		biomes = {
			"deciduous_forest",
			"coniferous_forest",
			"rainforest",
			"rainforest_swamp"
		},
		y_max = 31000,
		y_min = -1,
		decoration = "fireflies:hidden_firefly",
	})

	minetest.register_decoration({
		name = "fireflies:firefly_high",
		deco_type = "simple",
		place_on = {
			"default:dirt_with_grass",
			"default:dirt_with_coniferous_litter",
			"default:dirt_with_rainforest_litter",
			"default:dirt"
		},
		place_offset_y = 3,
		sidelen = 80,
		fill_ratio = 0.0005,
		biomes = {
			"deciduous_forest",
			"coniferous_forest",
			"rainforest",
			"rainforest_swamp"
		},
		y_max = 31000,
		y_min = -1,
		decoration = "fireflies:hidden_firefly",
	})

end

-- get decoration IDs
local firefly_low = minetest.get_decoration_id("fireflies:firefly_low")
local firefly_high = minetest.get_decoration_id("fireflies:firefly_high")

minetest.set_gen_notify({decoration = true}, {firefly_low, firefly_high})

-- start nodetimers
minetest.register_on_generated(function(minp, maxp, blockseed)
	local gennotify = minetest.get_mapgen_object("gennotify")
	local poslist = {}

	for _, pos in ipairs(gennotify["decoration#"..firefly_low] or {}) do
		local firefly_low_pos = {x = pos.x, y = pos.y + 3, z = pos.z}
		table.insert(poslist, firefly_low_pos)
	end
	for _, pos in ipairs(gennotify["decoration#"..firefly_high] or {}) do
		local firefly_high_pos = {x = pos.x, y = pos.y + 4, z = pos.z}
		table.insert(poslist, firefly_high_pos)
	end

	if #poslist ~= 0 then
		for i = 1, #poslist do
			local pos = poslist[i]
			minetest.get_node_timer(pos):start(1)
		end
	end
end)
]]--
