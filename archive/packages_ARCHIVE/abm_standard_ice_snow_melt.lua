---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    snow
-- Code:    GPL 3.0
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_abm({
	nodenames = {"group:melts"},
	neighbors = {"group:igniter", "default:torch", "default:furnace_active", "group:hot"},
	interval = 10,
	chance = 2,
	action = function(pos, node)
		local intensity = minetest.get_item_group(node.name,"melts")
		if intensity == 1 then
			minetest.set_node(pos, {name="default:water_source"})
		elseif intensity == 2 then
			minetest.set_node(pos, {name="default:water_flowing", param2=7})
		elseif intensity == 3 then
			minetest.set_node(pos, {name="default:water_flowing", param2=3})
		 else
			return
		end
	end,
})
]]--
