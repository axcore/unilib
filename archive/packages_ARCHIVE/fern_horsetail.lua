---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    plantlife/ferns
-- Code:    LGPL v3.0
-- Media:   CC-by-SA 4.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
local function create_nodes()
	local selection_boxes = {
		{ -0.15, -1/2, -0.15, 0.15, -1/16, 0.15 },
		{ -0.15, -1/2, -0.15, 0.15, 1/16, 0.15 },
		{ -0.15, -1/2, -0.15, 0.15, 4/16, 0.15 },
		{ -0.15, -1/2, -0.15, 0.15, 7/16, 0.15 },
	}

	for i = 1, 4 do
		local node_name = "ferns:horsetail_" .. string.format("%02d", i)
		local node_img = "ferns_horsetail_" .. string.format("%02d", i) .. ".png"
		local node_desc
		local node_on_use = nil
		local node_drop = "ferns:horsetail_04"

		if i == 1 then
			node_desc = S("Young Horsetail (Equisetum)")
			node_on_use = minetest.item_eat(1) -- young ones edible https://en.wikipedia.org/wiki/Equisetum
			node_drop = node_name
		elseif i == 4 then
			node_desc = S("Horsetail (Equisetum)")
		else
			node_desc = S("Horsetail (Equisetum)").." ".. string.format("%02d", i)
		end

		node_names[i] = node_name

		minetest.register_node(node_name, {
			description = node_desc,
			drawtype = "plantlike",
			paramtype = "light",
			tiles = { node_img },
			inventory_image = node_img,
			walkable = false,
			buildable_to = true,
			groups = {snappy=3,flammable=2,attached_node=1,horsetail=1},
			sounds = default.node_sound_leaves_defaults(),
			selection_box = {
				type = "fixed",
				fixed = selection_boxes[i],
			},
			on_use = node_on_use,
			drop = node_drop,
		})
	end
end

minetest.register_craft({
	type = "shapeless",
	output = "dye:green",
	recipe = {"group:horsetail"},
})

if abstract_ferns.config.enable_horsetails_spawning == true then
	biome_lib.register_active_spawner({
		spawn_delay = 1200,
		spawn_plants = node_names,
		spawn_chance = 400,
		spawn_surfaces = {
			"default:dirt_with_grass",
			"default:dirt_with_coniferous_litter", -- minetest >= 0.5
			"default:desert_sand",
			"default:sand",
			"dryplants:grass_short",
			"stoneage:grass_with_silex",
			"default:mossycobble",
			"default:gravel"
		},
		seed_diff = 329,
		min_elevation = 1, -- above sea level
		near_nodes = {"default:water_source","default:river_water_source","default:gravel"},
		near_nodes_size = 2,
		near_nodes_vertical = 1,
		near_nodes_count = 1,
		--random_facedir = { 0, 179 },
	})
end
]]--
