---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    xtraores/xtraores_armor
-- Code:    unknown
-- Media:   unknown
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
if minetest.get_modpath("3d_armor") then
	--Armor registration function
	local function register_armor(name, def)
		local function get_groups(type, offset)
			if not offset then
				offset = 0
			end
			local groups = {
				["armor_"..type] = def.armor+offset,
				armor_use = def.use,
				armor_heal = def.heal or nil,
				armor_fire = def.fire or nil,
				physics_gravity = def.gravity or nil,
				physics_speed = def.speed or nil,
				physics_jump = def.jump or nil,
			}
			return groups
		end

		armor:register_armor("xtraores_armor:helmet_"..name, {
			description = xtraores.upper(name).." Helmet",
			inventory_image = "xtraores_armor_inv_helmet_"..name..".png",
			groups = get_groups("head"),
			wear = 0,
		})

		local i = "xtraores:"..name.."_ingot"

		minetest.register_craft({
			output = "xtraores_armor:helmet_"..name,
			recipe = {
				{i, i, i},
				{i, "", i},
				{"", "", ""},
			},
		})
        
	end

	--Register the armors

	register_armor("rarium", {
		armor = 16.4,
		heal = 12,
		gravity = -0.15,
		speed = 0.15,
		jump = 0.15,
		use = 20,
	})

end
]]--
