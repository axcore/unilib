---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    decorations_sea
-- Code:    GPLv3
-- Media:   CC BY 4.0
---------------------------------------------------------------------------------------------------

unilib.pkg.coral_seawhip_blue = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.decorations_sea.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.coral_seawhip_blue.init()

    return {
        description = "Blue sea whip coral",
        depends = "coral_block_blue",
    }

end

function unilib.pkg.coral_seawhip_blue.exec()

    unilib.register_node("unilib:coral_seawhip_blue", "decorations_sea:coral_plantlike_04", mode, {
        -- From decorations_sea:coral_plantlike_04
        description = S("Blue Sea Whip Coral"),
        tiles = {"unilib_coral_block_blue.png"},
        -- N.B. No coral = 1 in original code
        groups = {coral = 1, cracky = 3},
        sounds = unilib.sound.generate_stone({
            dig = {name = "unilib_dig_snappy", gain = 0.2},
            dug = {name = "unilib_grass_footstep", gain = 0.25},
        }),

        drawtype = "plantlike_rooted",
        inventory_image = "unilib_coral_seawhip_blue.png",
        paramtype = "light",
        paramtype2 = "meshoptions",
        place_param2 = 4,
        special_tiles = {{name = "unilib_coral_seawhip_blue.png", tileable_vertical = true}},

        -- N.B. No .after_destruct() in original code
        after_destruct = function(pos, oldnode)
            core.set_node(pos, {name = "unilib:coral_block_blue"})
        end,

        -- N.B. No .on_place() in original code
        on_place = function(itemstack, placer, pointed_thing)

            return unilib.misc.place_in_medium(
                itemstack, placer, pointed_thing,
                {
                    need_under = "unilib:coral_block_blue",
                    displace_flag = true,
                }
            )

        end,
    })

    unilib.pkg.shared_decorations_sea.register_simple_decoration(
        -- From decorations_sea/mapgen.lua
        "coral_seawhip_blue", 1, "single_coral"
    )

end
