---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    vessels
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
-- Register glass fragments as dungeon loot
if minetest.global_exists("dungeon_loot") then
	dungeon_loot.register({
		name = "vessels:glass_fragments", chance = 0.35, count = {1, 4}
	})
end
]]--