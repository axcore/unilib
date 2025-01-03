---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    hangglider
-- Code:    LGPL 3.0+
-- Media:   CC-BY-SA 3.0 UNPORTED/CC-BY-SA 3.0/CC BY-SA 4.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
local HUD_Overlay = true --show glider struts as overlay on HUD
local debug = false --show debug info in top-center of hud
local moveModelUp = false
if tonumber(string.sub(minetest.get_version().string, 1, 1)) and tonumber(string.sub(minetest.get_version().string, 1, 1)) > 4 then
	moveModelUp = true
end
hangglider = {} --Make this global, so other mods can tell if hangglider exists.
hangglider.use = {}
if HUD_Overlay then
hangglider.id = {}  -- hud id for displaying overlay with struts
end
if debug then  hangglider.debug = {} end -- hud id for debug data

if core.global_exists("minetestd") and minetestd.services.physicsctl.enabled then
minetestd.physicsctl.register_physics_effect("hangglider",
	function(player) -- check
		return hangglider.use[player:get_player_name()]
	end,
	function(phys, player) -- blend
		local vel_y = player:get_player_velocity().y
		if debug then player:hud_change(hangglider.debug[pname].id, "text", vel_y..', '..player:get_physics_override().gravity..', '..tostring(hangglider.airbreak[pname])) end
		phys.gravity = phys.gravity*((vel_y + 3)/20)
		if vel_y < 0 and vel_y > -3 then
			phys.speed = (math.abs(vel_y/2) + 0.75)
		elseif vel_y <= -3 then --Cap our gliding movement speed.
			phys.speed = 2.25
		end
		phys.jump = 0
	end,
	7 -- effect order
)
end

local physics_attrs = {"jump", "speed", "gravity"}
local function apply_physics_override(player, overrides)
    if player_monoids then
        for _, attr in pairs(physics_attrs) do
            if overrides[attr] then
                player_monoids[attr]:add_change(player, overrides[attr], "hangglider:glider")
            end
        end
    else
        player:set_physics_override(overrides)
    end
end

local function remove_physics_override(player, overrides)
    for _, attr in pairs(physics_attrs) do
        if overrides[attr] then
            if core.global_exists("player_monoids") then
                player_monoids[attr]:del_change(player, "hangglider:glider")
            else
                player:set_physics_override({[attr] = 1})
            end
        end
    end
end

local step_v
minetest.register_entity("hangglider:glider", {
	visual = "mesh",
	visual_size = {x = 12, y = 12},
	collisionbox = {0,0,0,0,0,0},
	mesh = "glider.obj",
	immortal = true,
	static_save = false,
	textures = {"wool_white.png","default_wood.png"},
	on_step = function(self, dtime)
		local canExist = false
		if self.object:get_attach() then
			local player = self.object:get_attach("parent")
			if player then
				local pos = player:getpos()
				local pname = player:get_player_name()
				if hangglider.use[pname] then
					local mrn_name = minetest.registered_nodes[minetest.get_node(vector.new(pos.x, pos.y-0.5, pos.z)).name]
					if mrn_name then
						if not (mrn_name.walkable or mrn_name.liquidtype ~= "none") then
							canExist = true

							if not minetestd then
								step_v = player:get_player_velocity().y
								if step_v < 0 and step_v > -3 then
									apply_physics_override(player, {speed=math.abs(step_v/2) + 0.75})
								elseif step_v <= -3 then --Cap our gliding movement speed.
									apply_physics_override(player, {speed=2.25})
								else
									remove_physics_override(player, {speed=1})
								end
								if debug then player:hud_change(hangglider.debug[pname].id, "text", step_v..', '..player:get_physics_override().gravity..', '..tostring(hangglider.airbreak[pname])) end
								apply_physics_override(player, {gravity=((step_v + 3)/20)})
							end
						end
					end
				end
				if not hangglider.can_fly(pname,pos) then
				    if not self.warned then -- warning shot
						self.warned = 0
						hangglider.shot_sound(pos)
						minetest.chat_send_player(pname, "Protected area! You will be shot down in two seconds by anti-aircraft guns!")
				    end
				    self.warned = self.warned + dtime
				    if self.warned > 2 then -- shoot down
						player:set_hp(1)
						player:get_inventory():remove_item("main", ItemStack("hangglider:hangglider"))
						hangglider.shot_sound(pos)
						canExist = false
				    end
				end
				if not canExist then

					if not minetestd then
						remove_physics_override(player, {
						gravity=1,
						jump = 1,
						speed = 1,})
					end
					hangglider.use[pname] = false
					if HUD_Overlay then
					player:hud_change(hangglider.id[pname], "text", "blank.png")
					end
				end
			end
		end
		if not canExist then
			self.object:set_detach()
			self.object:remove()
		end
	end
})

minetest.register_on_dieplayer(function(player)
	remove_physics_override(player, {
		gravity = 1,
		jump = 1,
	})
	hangglider.use[player:get_player_name()] = false
end)


minetest.register_on_joinplayer(function(player)
	local pname = player:get_player_name()
	remove_physics_override(player, {
		gravity = 1,
		jump = 1,
	})
	hangglider.use[pname] = false
	if HUD_Overlay then
	hangglider.id[pname] = player:hud_add({
		hud_elem_type = "image",
		text = "blank.png",
		position = {x=0, y=0},
		scale = {x=-100, y=-100},
		alignment = {x=1, y=1},
		offset = {x=0, y=0}
	}) end
	if debug then
		hangglider.debug[pname] = {id = player:hud_add({hud_elem_type = "text",
			position = {x=0.5, y=0.1},
			text = "-",
			number = 0xFF0000}),  -- red text
		}
	end
end)

minetest.register_on_leaveplayer(function(player)
	local pname = player:get_player_name()
	hangglider.use[pname] = nil
	if HUD_Overlay then hangglider.id[pname] = nil end
	if debug then hangglider.debug[pname] = nil end
	--hangglider.airbreak[pname] = nil
end)

minetest.register_tool("hangglider:hangglider", {
	description = "Glider",
	inventory_image = "glider_item.png",
	stack_max=1,
	on_use = function(itemstack, player, pointed_thing)
		if not player then
			return
		end
		local pos = player:get_pos()
		local pname = player:get_player_name()
		if not hangglider.use[pname] then --Equip
			minetest.sound_play("bedsheet", {pos=pos, max_hear_distance = 8, gain = 1.0})
			if HUD_Overlay then player:hud_change(hangglider.id[pname], "text", "glider_struts.png") end
			local airbreak = false
			local vel = player:get_player_velocity().y
			if not airbreak then
				if moveModelUp then
					minetest.add_entity(pos, "hangglider:glider"):set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
				else
					minetest.add_entity(pos, "hangglider:glider"):set_attach(player, "", {x=0,y=0,z=0}, {x=0,y=0,z=0})
				end
			end
			hangglider.use[pname] = true
			apply_physics_override(player, {jump = 0})
			itemstack:set_wear(itemstack:get_wear() + 255)
			return itemstack
		elseif hangglider.use[pname] then --Unequip
			if HUD_Overlay then player:hud_change(hangglider.id[pname], "text", "default_wood.png^[colorize:#0000:255") end
			hangglider.use[pname] = false
		end
	end,
	sound = {breaks = "default_tool_breaks"},
})

minetest.register_craft({
	type = "shapeless",
	output = "hangglider:hangglider",
	recipe = {"default:paper", "default:paper", "default:paper", "default:paper", "hangglider:hangglider", "default:paper", "default:paper", "default:paper", "default:paper"},
})

minetest.register_craft({
	output = "hangglider:hangglider",
	recipe = {
		{"wool:white", "wool:white", "wool:white"},
		{"default:stick", "", "default:stick"},
		{"", "default:stick", ""},
	}
})
]]--
