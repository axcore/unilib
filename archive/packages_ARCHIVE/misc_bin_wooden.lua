---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    trash_can
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
if mineclone_path then -- means MineClone 2 is loaded
	moditems.iron_item = "mcl_core:iron_ingot" -- MCL version of iron ingot
	moditems.coal_item = "mcl_core:coalblock"  -- MCL version of coal block
	moditems.green_dye = "mcl_dye:green"       -- MCL version of green dye
	moditems.sounds = mcl_sounds.node_sound_defaults
	moditems.trashcan_infotext = nil
	moditems.dumpster_infotext = nil
	-- trying to imitate MCL boxart (no getter API)
	moditems.boxart = "bgcolor[#d0d0d0;false]listcolors[#9d9d9d;#9d9d9d;#5c5c5c;#000000;#ffffff]"
	moditems.trashbin_groups = {pickaxey=1,axey=1,handy=1,swordy=1,flammable=1,destroy_by_lava_flow=1,craftitem=1}
	moditems.dumpster_groups = {pickaxey=1,axey=1,handy=1,swordy=1,flammable=0,destroy_by_lava_flow=0,craftitem=1}
else -- fallback, assume default (Minetest Game) is loaded
	moditems.iron_item = "default:steel_ingot" -- MTG iron ingot
	moditems.coal_item = "default:coalblock"   -- MTG coal block
	moditems.green_dye = "dye:dark_green"      -- MTG version of green dye
	moditems.sounds = default and default.node_sound_defaults
	moditems.trashcan_infotext = S("Trash Can")
	moditems.dumpster_infotext = S("Dumpster")
	moditems.boxart = ""
	moditems.trashbin_groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3}
	moditems.dumpster_groups = {cracky=3,oddly_breakable_by_hand=1}
end

local trash_can_nodebox = {
	{-0.375, -0.5, 0.3125, 0.375, 0.5, 0.375},
	{0.3125, -0.5, -0.375, 0.375, 0.5, 0.375},
	{-0.375, -0.5, -0.375, 0.375, 0.5, -0.3125},
	{-0.375, -0.5, -0.375, -0.3125, 0.5, 0.375},
	{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
}

minetest.register_node("trash_can:trash_can_wooden",{
	description = S("Wooden Trash Can"),
	drawtype="nodebox",
	paramtype = "light",
	tiles = {
		"trash_can_wooden_top.png",
		"trash_can_wooden_top.png",
		"trash_can_wooden.png"
	},
	node_box = {
		type = "fixed",
		fixed = trash_can_nodebox
	},
	groups = moditems.trashbin_groups,
	_mcl_blast_resistance = 5,
	_mcl_hardness = 1,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
			"size[8,9]" ..
			"button[0,0;2,1;empty;" .. S("Empty Trash") .. "]" ..
			"list[context;trashlist;3,1;2,3;]" ..
			"list[current_player;main;0,5;8,4;]" ..
			"listring[]" ..
			moditems.boxart
		)
		meta:set_string("infotext", moditems.trashcan_infotext)
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
		inv:set_size("trashlist", 2*3)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
				return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in trash can at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff to trash can at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from trash can at " .. minetest.pos_to_string(pos))
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		if fields.empty then
			local meta = minetest.get_meta(pos)
			local inv = meta:get_inventory()
			inv:set_list("trashlist", {})
			minetest.sound_play("trash", {to_player=sender:get_player_name(), gain = 1.0})
			minetest.log("action", sender:get_player_name() ..
				" empties trash can at " .. minetest.pos_to_string(pos))
		end
	end,
})
minetest.register_craft({
	output = 'trash_can:trash_can_wooden',
	recipe = {
		{'group:wood', '', 'group:wood'},
		{'group:wood', '', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

if trash_can_throw_in then
	-- Remove any items thrown in trash can.
	local old_on_step = minetest.registered_entities["__builtin:item"].on_step
	minetest.registered_entities["__builtin:item"].on_step = function(self, dtime)
		local item_pos = self.object:getpos()
		-- Round the values.  Not essential, but makes logging look nicer.
		for key, value in pairs(item_pos) do item_pos[key] = math.floor(value + 0.5) end
		if minetest.get_node(item_pos).name == "trash_can:trash_can_wooden" then
			local item_stack = ItemStack(self.itemstring)
			local inv = minetest.get_inventory({type="node", pos=item_pos})
			local leftover = inv:add_item("trashlist", item_stack)
			if leftover:get_count() == 0 then
				self.object:remove()
				minetest.log("action", item_stack:to_string() ..
					" added to trash can at " .. minetest.pos_to_string(item_pos))
			elseif item_stack:get_count() - leftover:get_count() ~= 0 then
				self.set_item(self, leftover:to_string())
				minetest.log("action", item_stack:to_string() ..
					" added to trash can at " .. minetest.pos_to_string(item_pos) ..
					" with " .. leftover:to_string() .. " left over"
				)
			end
			return
		end
		old_on_step(self, dtime)
	end
end
]]--
