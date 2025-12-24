---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    beds
-- Code:    MIT
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[ from init.lua
beds = {}
beds.player = {}
beds.bed_position = {}
beds.pos = {}
beds.spawn = {}
beds.get_translator = S

beds.formspec = "size[8,11;true]" ..
	"no_prepend[]" ..
	"bgcolor[#080808BB;true]" ..
	"button_exit[2,10;4,0.75;leave;" .. esc(S("Leave Bed")) .. "]"

beds.day_interval = {
	start = 0.2,
	finish = 0.805,
}
]]--

--[[ from api.lua
-- Removes a node without calling on on_destruct()
-- We use this to mess with bed nodes without causing unwanted recursion.
local function remove_no_destruct(pos)
	minetest.swap_node(pos, {name = "air"})
	minetest.remove_node(pos) -- Now clear the meta
	minetest.check_for_falling(pos)
end

--- returns the position of the other bed half (or nil on failure)
local function get_other_bed_pos(pos, n)
	local node = core.get_node(pos)
	local dir = core.facedir_to_dir(node.param2)
	if not dir then
		return -- There are 255 possible param2 values. Ignore bad ones.
	end
	local other
	if n == 2 then
		other = vector.subtract(pos, dir)
	elseif n == 1 then
		other = vector.add(pos, dir)
	else
		return nil
	end

	local onode = core.get_node(other)
	if onode.param2 == node.param2 and core.get_item_group(onode.name, "bed") ~= 0 then
		return other
	end
	return nil
end

local function destruct_bed(pos, n)
	local other = get_other_bed_pos(pos, n)
	if other then
		remove_no_destruct(other)
		beds.remove_spawns_at(other)
	end
	beds.remove_spawns_at(pos)
end

function beds.register_bed(name, def)
	minetest.register_node(name .. "_bottom", {
		description = def.description,
		inventory_image = def.inventory_image,
		wield_image = def.wield_image,
		drawtype = "nodebox",
		tiles = def.tiles.bottom,
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		stack_max = 1,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 1},
		sounds = def.sounds or default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = def.nodebox.bottom,
		},
		selection_box = {
			type = "fixed",
			fixed = def.selectionbox,
		},

		on_place = function(itemstack, placer, pointed_thing)
			local under = pointed_thing.under
			local node = minetest.get_node(under)
			local udef = minetest.registered_nodes[node.name]
			if udef and udef.on_rightclick and
					not (placer and placer:is_player() and
					placer:get_player_control().sneak) then
				return udef.on_rightclick(under, node, placer, itemstack,
					pointed_thing) or itemstack
			end

			local pos
			if udef and udef.buildable_to then
				pos = under
			else
				pos = pointed_thing.above
			end

			local player_name = placer and placer:get_player_name() or ""

			if minetest.is_protected(pos, player_name) and
					not minetest.check_player_privs(player_name, "protection_bypass") then
				minetest.record_protection_violation(pos, player_name)
				return itemstack
			end

			local node_def = minetest.registered_nodes[minetest.get_node(pos).name]
			if not node_def or not node_def.buildable_to then
				return itemstack
			end

			local dir = placer and placer:get_look_dir() and
				minetest.dir_to_facedir(placer:get_look_dir()) or 0
			local botpos = vector.add(pos, minetest.facedir_to_dir(dir))

			if minetest.is_protected(botpos, player_name) and
					not minetest.check_player_privs(player_name, "protection_bypass") then
				minetest.record_protection_violation(botpos, player_name)
				return itemstack
			end

			local botdef = minetest.registered_nodes[minetest.get_node(botpos).name]
			if not botdef or not botdef.buildable_to then
				return itemstack
			end

			minetest.set_node(pos, {name = name .. "_bottom", param2 = dir})
			minetest.set_node(botpos, {name = name .. "_top", param2 = dir})

			if not minetest.is_creative_enabled(player_name) then
				itemstack:take_item()
			end
			return itemstack
		end,

		on_destruct = function(pos)
			destruct_bed(pos, 1)
		end,

		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			beds.on_rightclick(pos, clicker)
			return itemstack
		end,

		on_rotate = function(pos, node, user, _, new_param2)
			local dir = minetest.facedir_to_dir(node.param2)
			if not dir then
				return false
			end
			-- old position of the top node
			local p = vector.add(pos, dir)
			local node2 = minetest.get_node_or_nil(p)
			if not node2 or minetest.get_item_group(node2.name, "bed") ~= 2 or
					node.param2 ~= node2.param2 then
				return false
			end
			if minetest.is_protected(p, user:get_player_name()) then
				minetest.record_protection_violation(p, user:get_player_name())
				return false
			end
			if new_param2 % 32 > 3 then
				return false
			end
			-- new position of the top node
			local newp = vector.add(pos, minetest.facedir_to_dir(new_param2))
			local node3 = minetest.get_node_or_nil(newp)
			local node_def = node3 and minetest.registered_nodes[node3.name]
			if not node_def or not node_def.buildable_to then
				return false
			end
			if minetest.is_protected(newp, user:get_player_name()) then
				minetest.record_protection_violation(newp, user:get_player_name())
				return false
			end
			node.param2 = new_param2
			remove_no_destruct(p)
			minetest.set_node(pos, node)
			minetest.set_node(newp, {name = name .. "_top", param2 = new_param2})
			return true
		end,
		can_dig = function(pos, player)
			return beds.can_dig(pos)
		end,
	})

	minetest.register_node(name .. "_top", {
		drawtype = "nodebox",
		tiles = def.tiles.top,
		use_texture_alpha = "clip",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, bed = 2,
				not_in_creative_inventory = 1},
		sounds = def.sounds or default.node_sound_wood_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = def.nodebox.top,
		},
		selection_box = {
			type = "fixed",
			-- Small selection box to allow digging stray top nodes
			fixed = {-0.3, -0.3, -0.3, 0.3, -0.1, 0.3},
		},
		on_destruct = function(pos)
			destruct_bed(pos, 2)
		end,
		can_dig = function(pos, player)
			local other = get_other_bed_pos(pos, 2)
			return (not other) or beds.can_dig(other)
		end,
	})

	minetest.register_alias(name, name .. "_bottom")

	minetest.register_craft({
		output = name,
		recipe = def.recipe
	})
end
]]--

--[[ from functions.lua
local pi = math.pi
local is_sp = minetest.is_singleplayer()
local enable_respawn = minetest.settings:get_bool("enable_bed_respawn")
if enable_respawn == nil then
	enable_respawn = true
end

-- support for MT game translation.
local S = beds.get_translator

-- Helper functions

local function get_look_yaw(pos)
	local rotation = minetest.get_node(pos).param2
	if rotation > 3 then
		rotation = rotation % 4 -- Mask colorfacedir values
	end
	if rotation == 1 then
		return pi / 2, rotation
	elseif rotation == 3 then
		return -pi / 2, rotation
	elseif rotation == 0 then
		return pi, rotation
	else
		return 0, rotation
	end
end

local function is_night_skip_enabled()
	local enable_night_skip = minetest.settings:get_bool("enable_bed_night_skip")
	if enable_night_skip == nil then
		enable_night_skip = true
	end
	return enable_night_skip
end

local function check_in_beds(players)
	local in_bed = beds.player
	if not players then
		players = minetest.get_connected_players()
	end

	for n, player in ipairs(players) do
		local name = player:get_player_name()
		if not in_bed[name] then
			return false
		end
	end

	return #players > 0
end

local function lay_down(player, pos, bed_pos, state, skip)
	local name = player:get_player_name()
	local hud_flags = player:hud_get_flags()

	if not player or not name then
		return
	end

	-- stand up
	if state ~= nil and not state then
		if not beds.player[name] then
			-- player not in bed, do nothing
			return false
		end
		beds.bed_position[name] = nil
		-- skip here to prevent sending player specific changes (used for leaving players)
		if skip then
			return
		end
		player:set_pos(beds.pos[name])

		-- physics, eye_offset, etc
		local physics_override = beds.player[name].physics_override
		beds.player[name] = nil
		player:set_physics_override({
			speed = physics_override.speed,
			jump = physics_override.jump,
			gravity = physics_override.gravity
		})
		player:set_eye_offset({x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0})
		player:set_look_horizontal(math.random(1, 180) / 100)
		player_api.player_attached[name] = false
		hud_flags.wielditem = true
		player_api.set_animation(player, "stand" , 30)

	-- lay down
	else

		-- Check if bed is occupied
		for _, other_pos in pairs(beds.bed_position) do
			if vector.distance(bed_pos, other_pos) < 0.1 then
				minetest.chat_send_player(name, S("This bed is already occupied!"))
				return false
			end
		end

		-- Check if player is moving
		if vector.length(player:get_velocity()) > 0.05 then
			minetest.chat_send_player(name, S("You have to stop moving before going to bed!"))
			return false
		end

		-- Check if player is attached to an object
		if player:get_attach() then
			return false
		end

		if beds.player[name] then
			-- player already in bed, do nothing
			return false
		end

		beds.pos[name] = pos
		beds.bed_position[name] = bed_pos
		beds.player[name] = {physics_override = player:get_physics_override()}

		local yaw, param2 = get_look_yaw(bed_pos)
		player:set_look_horizontal(yaw)
		local dir = minetest.facedir_to_dir(param2)
		-- p.y is just above the nodebox height of the 'Simple Bed' (the highest bed),
		-- to avoid sinking down through the bed.
		local p = {
			x = bed_pos.x + dir.x / 2,
			y = bed_pos.y + 0.07,
			z = bed_pos.z + dir.z / 2
		}
		player:set_physics_override({speed = 0, jump = 0, gravity = 0})
		player:set_pos(p)
		player_api.player_attached[name] = true
		hud_flags.wielditem = false
		player_api.set_animation(player, "lay" , 0)
	end

	player:hud_set_flags(hud_flags)
end

local function get_player_in_bed_count()
	local c = 0
	for _, _ in pairs(beds.player) do
		c = c + 1
	end
	return c
end

local function update_formspecs(finished)
	local ges = #minetest.get_connected_players()
	local player_in_bed = get_player_in_bed_count()
	local is_majority = (ges / 2) < player_in_bed

	local form_n
	local esc = minetest.formspec_escape
	if finished then
		form_n = beds.formspec .. "label[2.7,9;" .. esc(S("Good morning.")) .. "]"
	else
		form_n = beds.formspec .. "label[2.2,9;" ..
			esc(S("@1 of @2 players are in bed", player_in_bed, ges)) .. "]"
		if is_majority and is_night_skip_enabled() then
			form_n = form_n .. "button_exit[2,6;4,0.75;force;" ..
				esc(S("Force night skip")) .. "]"
		end
	end

	for name,_ in pairs(beds.player) do
		minetest.show_formspec(name, "beds_form", form_n)
	end
end


-- Public functions

function beds.kick_players()
	for name, _ in pairs(beds.player) do
		local player = minetest.get_player_by_name(name)
		lay_down(player, nil, nil, false)
	end
end

function beds.skip_night()
	minetest.set_timeofday(0.23)
end

local update_scheduled = false
local function schedule_update()
	if update_scheduled then
		-- there already is an update scheduled; don't schedule more to prevent races
		return
	end
	update_scheduled = true
	minetest.after(2, function()
		update_scheduled = false
		if not is_sp then
			update_formspecs(is_night_skip_enabled())
		end
		if is_night_skip_enabled() then
			-- skip the night and let all players stand up
			beds.skip_night()
			beds.kick_players()
		end
	end)
end

function beds.on_rightclick(pos, player)
	local name = player:get_player_name()
	local ppos = player:get_pos()
	local tod = minetest.get_timeofday()

	if tod > beds.day_interval.start and tod < beds.day_interval.finish then
		if beds.player[name] then
			lay_down(player, nil, nil, false)
		end
		minetest.chat_send_player(name, S("You can only sleep at night."))
		return
	end

	-- move to bed
	if not beds.player[name] then
		lay_down(player, ppos, pos)
		beds.set_spawns() -- save respawn positions when entering bed
	else
		lay_down(player, nil, nil, false)
	end

	if not is_sp then
		update_formspecs(false)
	end

	if check_in_beds() then
		schedule_update()
	end
end

function beds.can_dig(bed_pos)
	-- Check all players in bed which one is at the expected position
	for _, player_bed_pos in pairs(beds.bed_position) do
		if vector.equals(bed_pos, player_bed_pos) then
			return false
		end
	end
	return true
end

-- Callbacks
-- Only register respawn callback if respawn enabled
if enable_respawn then
	-- Respawn player at bed if valid position is found
	spawn.register_on_spawn(function(player, is_new)
		local pos = beds.spawn[player:get_player_name()]
		if pos then
			player:set_pos(pos)
			return true
		end
	end)
end

minetest.register_on_leaveplayer(function(player)
	local name = player:get_player_name()
	lay_down(player, nil, nil, false, true)
	beds.player[name] = nil
	if check_in_beds() then
		schedule_update()
	end
end)

minetest.register_on_dieplayer(function(player)
	local name = player:get_player_name()
	local in_bed = beds.player
	local pos = player:get_pos()
	local yaw = get_look_yaw(pos)

	if in_bed[name] then
		lay_down(player, nil, pos, false)
		player:set_look_horizontal(yaw)
		player:set_pos(pos)
	end
end)

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname ~= "beds_form" then
		return
	end

	-- Because "Force night skip" button is a button_exit, it will set fields.quit
	-- and lay_down call will change value of player_in_bed, so it must be taken
	-- earlier.
	local last_player_in_bed = get_player_in_bed_count()

	if fields.quit or fields.leave then
		lay_down(player, nil, nil, false)
		update_formspecs(false)
	end

	if fields.force then
		local is_majority = (#minetest.get_connected_players() / 2) < last_player_in_bed
		if is_majority and is_night_skip_enabled() then
			update_formspecs(true)
			beds.skip_night()
			beds.kick_players()
		else
			update_formspecs(false)
		end
	end
end)
]]--

--[[ from spawns.lua
local world_path = minetest.get_worldpath()
local org_file = world_path .. "/beds_spawns"
local file = world_path .. "/beds_spawns"
local bkwd = false

-- check for PA's beds mod spawns
local cf = io.open(world_path .. "/beds_player_spawns", "r")
if cf ~= nil then
	io.close(cf)
	file = world_path .. "/beds_player_spawns"
	bkwd = true
end

function beds.read_spawns()
	local spawns = beds.spawn
	local input = io.open(file, "r")
	if input and not bkwd then
		repeat
			local x = input:read("*n")
			if x == nil then
				break
			end
			local y = input:read("*n")
			local z = input:read("*n")
			local name = input:read("*l")
			spawns[name:sub(2)] = {x = x, y = y, z = z}
		until input:read(0) == nil
		io.close(input)
	elseif input and bkwd then
		beds.spawn = minetest.deserialize(input:read("*all"))
		input:close()
		beds.save_spawns()
		os.rename(file, file .. ".backup")
		file = org_file
	end
end

beds.read_spawns()

function beds.save_spawns()
	if not beds.spawn then
		return
	end
	local data = {}
	local output = io.open(org_file, "w")
	for k, v in pairs(beds.spawn) do
		table.insert(data, string.format("%.1f %.1f %.1f %s\n", v.x, v.y, v.z, k))
	end
	output:write(table.concat(data))
	io.close(output)
end

function beds.set_spawns()
	for name,_ in pairs(beds.player) do
		local player = minetest.get_player_by_name(name)
		local p = player:get_pos()
		-- but don't change spawn location if borrowing a bed
		if not minetest.is_protected(p, name) then
			beds.spawn[name] = p
		end
	end
	beds.save_spawns()
end

function beds.remove_spawns_at(pos)
	for name, p in pairs(beds.spawn) do
		if vector.equals(vector.round(p), pos) then
			beds.spawn[name] = nil
		end
	end
	beds.save_spawns()
end
]]--
