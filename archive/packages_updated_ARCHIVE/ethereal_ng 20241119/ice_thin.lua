---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng (20241119 update)
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("ethereal:thin_ice", {
	description = S("Thin Ice"),
	tiles = {"default_ice.png^[opacity:80"},
	inventory_image = "default_ice.png^[opacity:80",
	wield_image = "default_ice.png^[opacity:80",
	use_texture_alpha = "blend",
	is_ground_content = false,
	paramtype = "light",
	drawtype = "nodebox",
	drop = {},
	node_box = {
		type = "fixed", fixed = {{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}},
	},
	collision_box = {
		type = "fixed", fixed = {{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}},
	},
	groups = {cracky = 3, crumbly = 3, cools_lava = 1, slippery = 3},
	sounds = default.node_sound_glass_defaults(),

	on_walk_over = function(pos, node, player)

		if math.random(50) == 13 then -- ice breaks if player unlucky

			minetest.sound_play("default_ice_dug",
					{pos = pos, gain = 0.5, pitch = 1.4, max_hear_distance = 5}, true)

			minetest.remove_node(pos)
		end
	end
})
]]--
