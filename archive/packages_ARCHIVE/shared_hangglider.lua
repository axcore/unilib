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
hangglider.can_fly = function (pname, pos)
	-- Checks if the player will get shot down at the position
	if wardzones then
		local zone = wardzones.getZone(pos)
		if zone then
			return (minetest.check_player_privs(pname, {protection_bypass=true}) or wardzones.checkPlayerZoneAccess(pname, zone) or not zone["data"]["no_fly"])
		end
	end
	if areas and minetest.is_protected(vector.round(pos), pname) then
		if hangglider.flak then
			for id, area in pairs(areas:getAreasAtPos(pos)) do
				if area.flak then
					return false
				end
			end
		end
	end
	return true
end

hangglider.shot_sound = function (pos)
	minetest.sound_play("hangglider_flak_shot", {
		pos = pos,
		max_hear_distance = 30,
		gain = 10.0,
	})
end

if core.global_exists("areas") then
	hangglider.flak = true
	-- chat command definition essentially copied from areas mod.
	minetest.register_chatcommand("area_flak",{
		params = "<ID>",
		description = "Toggle airspace restrictions for area <ID>",
		func = function(name, param)
			local id = tonumber(param)
			if not id then
				return false, "Invalid usage, see /help area_flak."
			end

			if not areas:isAreaOwner(id, name) then
				return false, "Area "..id.." does not exist"
					.." or is not owned by you."
			end
			local open = not areas.areas[id].flak
			-- Save false as nil to avoid inflating the DB.
			areas.areas[id].flak = open or nil
			areas:save()
			return true, ("Area's airspace %s."):format(open and "closed" or "opened")
		end
	})
end
]]--
