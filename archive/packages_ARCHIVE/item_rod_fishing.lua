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
-- fishing rod function that throws pre bob, places bob and catches fish when it moves
local use_rod = function(itemstack, player, pointed_thing)

	local pos = player:get_pos()
	local objs = minetest.get_objects_inside_radius(pos, 25)
	local found = true
	local ent

	-- loop through entities and look for bobs
	for n = 1, #objs do

		ent = objs[n]:get_luaentity()

		if ent
		and ent.fisher
		and (ent.name == "ethereal:prebob_entity" or ent.name == "ethereal:bob_entity")
		and player:get_player_name() == ent.fisher then

			found = false

			if ent.bob == true then

				local item
				local r = random(100)

				if r < 86 then

					item = find_item(fish_items, pos)

				elseif r > 85 and r < 96 then

					item = find_item(junk_items, pos)

				else

					item = find_item(bonus_items, pos)
				end

				-- make sure item exists, if not replace with default item
				if not minetest.registered_items[item] then
					item = default_item
				end

				item = ItemStack(item)

				local inv = player:get_inventory()

				if inv:room_for_item("main", item) then
					inv:add_item("main", item)
				else
					minetest.add_item(pos, item)
				end
			end

			ent.object:remove()

			return itemstack
		end
	end

	-- loop through entities and look for bobs
	for n = 1, #objs do

		ent = objs[n]:get_luaentity()

		if ent
		and ent.fisher
		and (ent.name == "ethereal:prebob_entity" or ent.name == "ethereal:bob_entity")
		and player:get_player_name() == ent.fisher then

			found = false

			break
		end
	end

	if found == true then

		local playerpos = player:get_pos()
		local dir = player:get_look_dir()
		local pos = {x = playerpos.x, y = playerpos.y + 1.5, z = playerpos.z}

		minetest.sound_play("ethereal_casting_rod",
			{pos = pos, gain = 0.4, max_hear_distance = 16}, true)

		-- place actual bob
		local obj = minetest.add_entity(pos, "ethereal:prebob_entity")

		obj:set_velocity({x = dir.x * 8, y = dir.y * 8, z = dir.z * 8})
		obj:set_acceleration({x = dir.x * -3, y = -9.8, z = dir.z * -3})
		obj:get_luaentity().fisher = player and player:get_player_name()
	end
end

local remove_bob = function(player)

	local objs = minetest.get_objects_inside_radius(player:get_pos(), 25)
	local name = player:get_player_name()
	local ent

	for n = 1, #objs do

		ent = objs[n]:get_luaentity()

		if ent
		and (ent.name == "ethereal:prebob_entity"
		or ent.name == "ethereal:bob_entity") then

			-- only remove players own bob
			if ent.fisher and ent.fisher == name then
				ent.object:remove()
			end
		end
	end
end

minetest.register_tool("ethereal:fishing_rod", {
	description = S("Fishing Rod (USE to cast and again when the time is right)"),
	groups = {tool = 1},
	inventory_image = "ethereal_fishing_rod.png",
	wield_image = "ethereal_fishing_rod.png^[transformFX",
	wield_scale = {x = 1.5, y = 1.5, z = 1},
	stack_max = 1,
	on_use = use_rod,
	sound = {breaks = "default_tool_breaks"}
})
minetest.register_craft({
	output = "ethereal:fishing_rod",
	recipe = {
		{"","","group:stick"},
		{"","group:stick","farming:string"},
		{"group:stick","","farming:string"}
	}
})
minetest.register_craft({
	type = "fuel",
	recipe = "ethereal:fishing_rod",
	burntime = 15
})

minetest.register_entity("ethereal:prebob_entity", {

	textures = {"ethereal_fishing_bob.png"},
	visual_size = {x = 0.5, y = 0.5},
	collisionbox = {-0.1,-0.1,-0.1,0.1,0.1,0.1},
	pointable = false,
	physical = false,
	lastpos = {},

	on_step = function(self, dtime)

		local pos = self.object:get_pos()

		-- Destroy when hitting a solid node
		if self.lastpos.x then

			local node = minetest.get_node(pos)
			local def = minetest.registered_nodes[node.name]

			-- remove if we hit something hard
			if def and def.walkable then

				self.object:remove()

				return
			end

			if def and def.liquidtype == "source"
			and minetest.get_item_group(node.name, "water") > 0 then

				-- do we have worms for bait, if so take one
				local player = self.fisher and minetest.get_player_by_name(self.fisher)
				local inv = player and player:get_inventory()
				local bait = 0

				if inv and inv:contains_item("main", "ethereal:worm") then
					inv:remove_item("main", "ethereal:worm")
					bait = 20
				end

				self.lastpos.y = math.floor(self.lastpos.y)

				local obj = minetest.add_entity(self.lastpos, "ethereal:bob_entity")
				local ent = obj:get_luaentity()

				ent.fisher = self.fisher
				ent.bait = bait

				minetest.sound_play("default_water_footstep", {
					pos = self.lastpos, gain = 0.1}, true)

				self.object:remove()

				return
			end
		end

		self.lastpos = {x = pos.x, y = pos.y, z = pos.z}
	end
})

minetest.register_entity("ethereal:bob_entity", {

	textures = {"ethereal_fishing_bob.png"},
	visual_size = {x = 0.5, y = 0.5},
	collisionbox = {0.4,0.4,0.4,0.4,0.4,0.4},
	physical = false,
	pointable = false,
	static_save = false,
	lastpos = {},
	timer = 0,
	patience = nil,
	old_y = nil,
	bob = false,

	on_step = function(self, dtime)

		-- we need a name
		if self.fisher == nil or self.fisher == "" then

			self.object:remove()

			return
		end

		local player = minetest.get_player_by_name(self.fisher)

		-- we need an actual person
		if not player then

			self.object:remove()

			return
		end

		local pos = self.object:get_pos()

		pos.y = math.floor(pos.y)

		local node = minetest.get_node(pos)
		local def = minetest.registered_nodes[node.name]
		local wield = player:get_wielded_item()

		-- we also need a rod to fish with
		if not wield or wield:get_name() ~= "ethereal:fishing_rod" then

			self.object:remove()

			return
		end

		-- remove bob if player is too far away
		local bob_pos = self.object:get_pos()
		local pla_pos = player:get_pos()

		if (pla_pos.y - bob_pos.y) > 15
		or (pla_pos.y - bob_pos.y) < -15
		or (pla_pos.x - bob_pos.x) > 15
		or (pla_pos.x - bob_pos.x) < -15
		or (pla_pos.z - bob_pos.z) > 15
		or (pla_pos.z - bob_pos.z) < -15 then

			self.object:remove()

			return
		end

		-- when in water, bob.
		if def and def.liquidtype == "source"
		and minetest.get_item_group(def.name, "water") ~= 0 then

			if self.old_y == nil then

				self.object:set_pos({
					x = self.object:get_pos().x,
					y = math.floor(self.object:get_pos().y) + 0.5,
					z = self.object:get_pos().z})

				self.old_y = self.object:get_pos().y
			end

			-- reset to original position after dive.
			if self.object:get_pos().y > self.old_y then

				self.object:set_pos({
					x = self.object:get_pos().x,
					y = self.old_y,
					z = self.object:get_pos().z})

				self.object:set_velocity({x = 0, y = 0, z = 0})
				self.object:set_acceleration({x = 0, y = 0, z = 0})
			end

			-- choose random time to wait (minus bait time for worm)
			if not self.patience or self.patience <= 0 then

				self.patience = random(10, (45 - self.bait))
				self.bait = 0
			end

			-- add particles if bobber bobbing
			if self.bob then

				minetest.add_particle({
					pos = {
						x = pos.x + random() - 0.5,
						y = pos.y + 0.1,
						z = pos.z + random() - 0.5
					},
					velocity = {x = 0, y = 4, z = 0},
					acceleration = {x = 0, y = -5, z = 0},
					expirationtime = random() * 0.5,
					size = random(),
					collisiondetection = false,
					vertical = false,
					texture = "bubble.png"
				})

				-- handle timer
				if self.timer < self.patience then
					self.timer = self.timer + dtime
				else
					self.patience = 0
					self.timer = 0
					self.bob = false
				end
			else
				-- handle timer
				if self.timer < self.patience then
					self.timer = self.timer + dtime
				else
					-- waiting over, bob that bobber and play splash sound
					self.bob = true
					self.patience = 1.5 -- timeframe to catch fish after bob
					self.timer = 0

					self.object:set_velocity({x = 0, y = -2, z = 0})
					self.object:set_acceleration({x = 0, y = 5, z = 0})

					minetest.sound_play("default_water_footstep", {
						pos = pos, gain = 0.1}, true)
				end
			end
		end
	end
})

-- remove bob if player signs off
minetest.register_on_leaveplayer(function(player)
	remove_bob(player)
end)

-- remove bob if player dies
minetest.register_on_dieplayer(function(player)
	remove_bob(player)
end)
]]--
