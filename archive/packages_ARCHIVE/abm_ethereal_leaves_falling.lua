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
if minetest.settings:get_bool("ethereal.leaf_particles") ~= false then

	local leaf_list = {
		{"ethereal:frost_leaves", "331b37", 9},
		{"ethereal:bananaleaves", "28581e"},
		{"ethereal:lemon_leaves", "507c1e"},
		{"ethereal:olive_leaves", "416531"},
		{"ethereal:orange_leaves", "1a3b1b"},
		{"ethereal:redwood_leaves", "15342a"},
		{"ethereal:sakura_leaves", "c281a9"},
		{"ethereal:sakura_leaves2", "d4cbac"},
		{"ethereal:willow_twig", "0b9445"},
		{"ethereal:yellowleaves", "8b5f00", 9},
		{"ethereal:birch_leaves", "274527"},
		{"ethereal:palmleaves", "2b6000"},
		{"ethereal:bamboo_leaves", "445811"},
		{"default:acacia_leaves", "296600"},
		{"default:aspen_leaves", "395d16"},
		{"default:jungleleaves", "141e10"},
		{"default:pine_needles", "00280e"},
		{"default:leaves", "223a20"}
	}

	minetest.register_abm({
		label = "Ethereal falling leaves",
		nodenames = {"group:leaves"},
		neighbors = {"air"},
		interval = 7,
		chance = 50,
		catch_up = false,

		action = function(pos, node)

			local text, glow

			for n = 1, #leaf_list do

				if node.name == leaf_list[n][1] then

					text = "ethereal_falling_leaf.png^[multiply:#"
							.. leaf_list[n][2] .. "70"

					glow = leaf_list[n][3] ; break
				end
			end

			if text then

				minetest.add_particlespawner({
					amount = 1,
					time = 2,
					minpos = {x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
					maxpos = {x = pos.x + 1, y = pos.y, z = pos.z + 1},
					minvel = {x = -0.8, y = -1, z = -0.8},
					maxvel = {x = 0.8, y = -3, z = 0.8},
					minacc = {x = -0.1, y = -1, z = -0.1},
					mixacc = {x = 0.2, y = -3, z = 0.2},
					minexptime = 5,
					maxexptime = 10,
					minsize = 3,
					maxsize = 4,
					collisiondetection = true, collision_removal = true,
					texture = text,
					vertical = true,
					glow = glow
				})
			end
		end
	})
end
]]--
