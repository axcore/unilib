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
minetest.register_node("ethereal:seaweed", {
	description = S("Seaweed"),
	drawtype = "plantlike",
	tiles = {"ethereal_seaweed.png"},
	inventory_image = "ethereal_seaweed.png",
	wield_image = "ethereal_seaweed.png",
	paramtype = "light",
	walkable = false,
	climbable = true,
	drowning = 1,
	selection_box = {
		type = "fixed", fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	post_effect_color = {a = 64, r = 100, g = 100, b = 200},
	groups = {food_seaweed = 1, snappy = 3},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_leaves_defaults(),

	on_place = function(itemstack, placer, pointed_thing)

		local pname = placer:get_player_name()
		local pos = pointed_thing.above
		local pos_up = {x = pos.x, y = pos.y + 1, z = pos.z}
		local pos_down = {x = pos.x, y = pos.y - 1, z = pos.z}
		local def_up = minetest.registered_nodes[minetest.get_node(pos_up).name] or {}
		local def_down = minetest.registered_nodes[minetest.get_node(pos_down).name] or {}

		if def_up.liquidtype == nil or def_up.liquidtype ~= "none" then

			if minetest.is_protected(pos, pname) then return end

			if def_down.name ~= "default:sand" and def_down.name ~= "ethereal:sandy" then
				return
			end

			if minetest.get_node(pos_up).name == "default:water_source" then

				minetest.set_node(pos_down, {name = "ethereal:seaweed_rooted",
						param2 = 16})

				if not ethereal.check_creative(pname) then
					itemstack:take_item()
				end
			end

			return itemstack
		end

		return minetest.item_place_node(itemstack, placer, pointed_thing)
	end
})
ethereal.add_eatable("ethereal:seaweed", 1)

minetest.register_craft( {
	output = "dye:dark_green 3",
	recipe = {{"ethereal:seaweed"}}
})
]]--
