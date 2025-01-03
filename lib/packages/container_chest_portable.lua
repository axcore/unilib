---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    hook
-- Code:    LGPL-2.1
-- Media:   CC BY-SA 4.0
---------------------------------------------------------------------------------------------------

unilib.pkg.container_chest_portable = {}

local S = unilib.intllib
local F = core.formspec_escape
local mode = unilib.global.imported_mod_table.hook.add_mode

---------------------------------------------------------------------------------------------------
-- Local functions
---------------------------------------------------------------------------------------------------

local function set_pchest(pos, user, label)

    local meta = core.get_meta(pos)
    label = label or S("Portable Chest")
    meta:set_string("owner", user:get_player_name())
    meta:set_int("state", 0)
    meta:get_inventory():set_size("main", 32)
    meta:get_inventory():set_size("trans", 1)
    meta:set_string(
        "formspec",
        "size[8,9]" ..
        "list[context;main;0,1;8,4;]" ..
        "list[context;trans;0,0;0,0;]" ..
        "list[current_player;main;0,5.3;8,4;]" ..
        "listring[current_player;main]" ..
        "listring[current_name;main]" ..
        "field[0.3,0.3;3,1;label;;" .. F(label) .. "]"
    )
    meta:set_string("infotext", unilib.utils.brackets(label, user:get_player_name()))

end

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.container_chest_portable.init()

    return {
        description = "Portable chest",
        depends = {
            "container_chest_ordinary",
            "item_stick_ordinary",
            "mineral_diamond",
            "shared_hook",
        },
    }

end

function unilib.pkg.container_chest_portable.exec()

    local c_stick = "unilib:item_stick_ordinary"

    -- (The portable chest, when placed in the inventory)
    unilib.register_tool("unilib:container_chest_portable", "hook:pchest", mode, {
        -- From hook:pchest
        description = S("Portable Locked Chest"),
        -- N.B. following the example of the other chests, this chest must be displayed in 3D
--      inventory_image = "unilib_container_chest_portable_front.png",
        inventory_image = "[inventorycube{unilib_container_chest_portable_top.png" ..
                "{unilib_container_chest_portable_front.png" ..
                "{unilib_container_chest_portable_side.png",

        on_place = function(itemstack, user, pointed_thing)

            if core.is_protected(pointed_thing.above, user:get_player_name()) or
                    unilib.pkg.shared_hook.has_property(pointed_thing.above, "walkable") then
                return itemstack
            end

            local p = core.dir_to_facedir(user:get_look_dir())
            local item = itemstack:to_table()
            local m = core.get_meta(pointed_thing.above)
            core.set_node(
                pointed_thing.above,
                {name = "unilib:container_chest_portable_node", param1 = "", param2 = p}
            )

            core.sound_play(
                "unilib_place_node_hard",
                {pos = pointed_thing.above, gain = 1.0, max_hear_distance = 5}
            )

            if not item.meta then

                itemstack:take_item()
                return itemstack

            end

            set_pchest(pointed_thing.above, user, item.meta.label)

            m:set_string("label", item.meta.label or "")

            if item.meta.items then

                local its = core.deserialize(item.meta.items or "") or {}
                local items = {}
                for i, it in pairs(its) do
                    table.insert(items, ItemStack(it))
                end

                m:get_inventory():set_list("main", items)

            end

            itemstack:take_item()
            return itemstack

        end,

        on_use = function(itemstack, user, pointed_thing)

            if pointed_thing.type == "node" then

                core.registered_tools["unilib:container_chest_portable"].on_place(
                    itemstack, user, pointed_thing
                )

            end

            return itemstack

        end,
    })
    unilib.register_craft({
        -- From hook:pchest
        output = "unilib:container_chest_portable",
        recipe = {
            {c_stick, c_stick, c_stick},
            {c_stick, "unilib:container_chest_ordinary", "unilib:mineral_diamond_block"},
            {c_stick, c_stick, c_stick},
        },
    })

    -- (The portable chest, when placed in the world)
    local def_table = {
        description = S("Portable Locked Chest"),
        tiles = {
            "unilib_container_chest_portable_top.png",
            "unilib_container_chest_portable_top.png",
            "unilib_container_chest_portable_side.png",
            "unilib_container_chest_portable_side.png",
            "unilib_container_chest_portable_side.png",
            "unilib_container_chest_portable_front.png",
        },
        groups = {
            dig_immediate = 2, not_in_creative_inventory = 1, tubedevice = 1,
            tubedevice_receiver = 1,
        },
        -- (no sounds)

        drop = "unilib:container_chest_portable",
        -- N.B. is_ground_content = false not in original code
        is_ground_content = false,
        paramtype2 = "facedir",
        tube = {
            connect_sides = {left = 1, right = 1, front = 1, back = 1, top = 1, bottom = 1},
            input_inventory = "main",

            can_insert = function(pos, node, stack, direction)

                local meta = core.get_meta(pos)
                local inv = meta:get_inventory()
                return inv:room_for_item("main", stack)

            end,

            insert_object = function(pos, node, stack, direction)

                local meta = core.get_meta(pos)
                local inv = meta:get_inventory()
                local added = inv:add_item("main", stack)
                return added

            end,
        },

        allow_metadata_inventory_move = function(
            pos, from_list, from_index, to_list, to_index, count, player
        )
            local owner = core.get_meta(pos):get_string("owner")
            if owner == player:get_player_name() or owner == "" then
                return count
            end

            return 0

        end,

        allow_metadata_inventory_put = function(pos, listname, index, stack, player)

            local m = core.get_meta(pos)
            local owner = m:get_string("owner")
            local inv = m:get_inventory()
            local name = player:get_player_name()
            if owner == name or owner == "" then

                if stack:get_name() == "unilib:container_chest_portable" then

                    core.chat_send_player(name, S("Cannot put anything in this chest"))
                    return 0

                elseif not inv:room_for_item("main", stack) then

                    core.chat_send_player(name, S("This chest is full"))
                    return 0

                end

                return stack:get_count()

            end

            return 0

        end,

        allow_metadata_inventory_take = function(pos, listname, index, stack, player)

            local owner = core.get_meta(pos):get_string("owner")
            if owner == player:get_player_name() or owner == "" then
                return stack:get_count()
            end

            return 0

        end,

        can_dig = function(pos, player)

            local m = core.get_meta(pos)
            return m:get_string("owner") == "" and m:get_inventory():is_empty("main")

        end,

        -- N.B. No .on_blast() in original code
        on_blast = function() end,

        --[[
        on_metadata_inventory_move = function(
            pos, from_list, from_index, to_list, to_index, count, player
        )
            -- N.B. This callback and its log message not in original code
            unilib.utils.log(
                "action",
                player:get_player_name() .. " moves items in portable chest at " ..
                        core.pos_to_string(pos)
            )

        end,

        on_metadata_inventory_put = function(pos, listname, index, stack, player)

            -- N.B. This callback and its log message not in original code
            unilib.utils.log(
                "action",
                player:get_player_name() .. " moves items to portable chest at " ..
                        core.pos_to_string(pos)
            )

        end,

        on_metadata_inventory_take = function(pos, listname, index, stack, player)

            -- N.B. This callback and its log message not in original code
            unilib.utils.log(
                "action",
                player:get_player_name() .. " takes items from portable chest at " ..
                        core.pos_to_string(pos)
            )

        end,
        ]]--

        on_punch = function(pos, node, player, pointed_thing)

            local meta = core.get_meta(pos)
            local name = player:get_player_name()
            local pinv = player:get_inventory()
            if core.is_protected(pos,name) or
                    meta:get_string("owner") ~= name or
                    not pinv:room_for_item(
                        "main", ItemStack("unilib:container_chest_portable")
                    ) then
                return false
            end

            local inv = meta:get_inventory()
            local items = {}
            for i, v in pairs(inv:get_list("main")) do
                table.insert(items, v:to_table())
            end

            local item = ItemStack("unilib:container_chest_portable"):to_table()
            local label = meta:get_string("label")
            item.meta = {
                items = core.serialize(items),
                label = label,
                description = unilib.utils.brackets(label, name),
            }
            pinv:add_item("main", ItemStack(item))
            core.set_node(pos, {name = "air"})
            core.sound_play(
                "unilib_dig_immediate",
                {pos = pos, gain = 1.0, max_hear_distance = 5}
            )

        end,

        on_receive_fields = function(pos, formname, pressed, sender)

            if pressed.label then

                local m = core.get_meta(pos)
                local owner = m:get_string("owner")
                if owner == sender:get_player_name() or owner == "" then

                    m:set_string("label", pressed.label)
                    set_pchest(pos, sender, pressed.label)

                end

            end

        end,
    }

    unilib.utils.set_inventory_action_loggers(def_table, "portable chest")
    unilib.register_node(
        -- From hook:pchest_node
        "unilib:container_chest_portable_node", "hook:pchest_node", mode, def_table
    )

end
