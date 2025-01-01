---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    nether
-- Code:    ISC
-- Media:   CC-BY-SA-3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
-- Portals are ignited by right-clicking with a mese crystal fragment
nether.register_portal_ignition_item(
	"default:mese_crystal_fragment",
	{name = "nether_portal_ignition_failure", gain = 0.3}
)

if nether.NETHER_REALM_ENABLED then
	-- Use the Portal API to add a portal type which goes to the Nether
	-- See portal_api.txt for documentation
	nether.register_portal("nether_portal", {
		shape               = nether.PortalShape_Traditional,
		frame_node_name     = "default:obsidian",
		wormhole_node_color = 0, -- 0 is magenta
		title = S("Nether Portal"),
		book_of_portals_pagetext = S(REDACTED),
        
		is_within_realm = function(pos) -- return true if pos is inside the Nether
			return pos.y < nether.DEPTH_CEILING and pos.y > nether.DEPTH_FLOOR
		end,

		find_realm_anchorPos = function(surface_anchorPos, player_name)
			-- divide x and z by a factor of 8 to implement Nether fast-travel
			local destination_pos = vector.divide(surface_anchorPos, nether.FASTTRAVEL_FACTOR)
			destination_pos.x = math.floor(0.5 + destination_pos.x) -- round to int
			destination_pos.z = math.floor(0.5 + destination_pos.z) -- round to int
			destination_pos.y = nether.DEPTH_CEILING - 1 -- temp value so find_nearest_working_portal() returns nether portals

			-- a y_factor of 0 makes the search ignore the altitude of the portals (as long as they are in the Nether)
			local existing_portal_location, existing_portal_orientation =
				nether.find_nearest_working_portal("nether_portal", destination_pos, 8, 0)

			if existing_portal_location ~= nil then
				return existing_portal_location, existing_portal_orientation
			else
				local start_y = nether.DEPTH_CEILING - math.random(500, 1500) -- Search starting altitude
				destination_pos.y = nether.find_nether_ground_y(destination_pos.x, destination_pos.z, start_y, player_name)
				return destination_pos
			end
		end,

		find_surface_anchorPos = function(realm_anchorPos, player_name)
			-- A portal definition doesn't normally need to provide a find_surface_anchorPos() function,
			-- since find_surface_target_y() will be used by default, but Nether portals also scale position
			-- to create fast-travel.
			-- Defining a custom function also means we can look for existing nearby portals.

			-- Multiply x and z by a factor of 8 to implement Nether fast-travel
			local destination_pos = vector.multiply(realm_anchorPos, nether.FASTTRAVEL_FACTOR)
			destination_pos.x = math.min(30900, math.max(-30900, destination_pos.x)) -- clip to world boundary
			destination_pos.z = math.min(30900, math.max(-30900, destination_pos.z)) -- clip to world boundary
			destination_pos.y = nether.DEPTH_CEILING + 1 -- temp value so find_nearest_working_portal() doesn't return nether portals

			-- a y_factor of 0 makes the search ignore the altitude of the portals (as long as they are outside the Nether)
			local existing_portal_location, existing_portal_orientation =
				nether.find_nearest_working_portal("nether_portal", destination_pos, 8 * nether.FASTTRAVEL_FACTOR, 0)

			if existing_portal_location ~= nil then
				return existing_portal_location, existing_portal_orientation
			else
				destination_pos.y = nether.find_surface_target_y(destination_pos.x, destination_pos.z, "nether_portal", player_name)
				return destination_pos
			end
		end,

		on_ignite = function(portalDef, anchorPos, orientation)

			-- make some sparks fly
			local p1, p2 = portalDef.shape:get_p1_and_p2_from_anchorPos(anchorPos, orientation)
			local pos = vector.divide(vector.add(p1, p2), 2)

			local textureName = portalDef.particle_texture
			if type(textureName) == "table" then textureName = textureName.name end

			minetest.add_particlespawner({
				amount = 110,
				time   = 0.1,
				minpos = {x = pos.x - 0.5, y = pos.y - 1.2, z = pos.z - 0.5},
				maxpos = {x = pos.x + 0.5, y = pos.y + 1.2, z = pos.z + 0.5},
				minvel = {x = -5, y = -1, z = -5},
				maxvel = {x =  5, y =  1, z =  5},
				minacc = {x =  0, y =  0, z =  0},
				maxacc = {x =  0, y =  0, z =  0},
				minexptime = 0.1,
				maxexptime = 0.5,
				minsize = 0.2 * portalDef.particle_texture_scale,
				maxsize = 0.8 * portalDef.particle_texture_scale,
				collisiondetection = false,
				texture = textureName .. "^[colorize:#F4F:alpha",
				animation = portalDef.particle_texture_animation,
				glow = 8
			})

		end

	})
]]--
