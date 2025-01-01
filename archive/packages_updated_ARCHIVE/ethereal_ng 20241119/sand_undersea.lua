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
-- Undersea Sand (used for growing seaweed and corals)
minetest.register_node("ethereal:sandy", {
	description = S("Sandy"),
	tiles = {"default_sand.png"},
	is_ground_content = true,
	groups = {
		crumbly = 3, falling_node = 1, sand = 1, not_in_creative_inventory = 1
	},
	drop = "default:sand",
	sounds = default.node_sound_sand_defaults()
})

-- randomly generate coral or seaweed and have seaweed grow up to 14 high
if ethereal.sealife == 1 then

	minetest.register_abm({
		label = "Grow coral/seaweed",
		nodenames = {"ethereal:sandy", "ethereal:seaweed_rooted"},
		neighbors = {"group:water"},
		interval = 15,
		chance = 10,
		catch_up = false,

		action = function(pos, node)

			-- grow new seaweed using param2 values
			if node.name == "ethereal:seaweed_rooted" then

				local p2 = node.param2 or 16
				local height = math.max(1, math.floor(p2 / 16))

				if height > 13 then return end

				height = height + 1

				local tpos = {x = pos.x, y = pos.y + height + 1, z = pos.z}

				if minetest.get_node(tpos).name ~= "default:water_source" then
					return
				end

				minetest.set_node(pos, {name = "ethereal:seaweed_rooted",
						param2 = (height * 16)})

				return
			end

			local sel = math.random(6)
			local pos_up = {x = pos.x, y = pos.y + 1, z = pos.z}
			local nod = minetest.get_node(pos_up).name

			if nod == "default:water_source" then

				if sel == 1 then

					local height = math.random(1, 6)

					minetest.set_node(pos, {name = "ethereal:seaweed_rooted",
							param2 = (height * 16)})

				elseif sel == 6 then

					minetest.set_node(pos_up, {name = "ethereal:sponge_wet"})

				elseif sel > 1 then

					minetest.set_node(pos, {name = "ethereal:coral" .. sel .. "_rooted"})
				end
			end
		end
	})
end
]]--
