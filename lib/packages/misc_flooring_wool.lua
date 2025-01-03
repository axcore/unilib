---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cottages
-- Code:    GPLv3
-- Media:   CC/CC-by-SA/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.misc_flooring_wool = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.cottages.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.misc_flooring_wool.init()

    return {
        description = "Woollen flooring",
        depends = "item_string_ordinary",
        optional = "wool_basic",
    }

end

function unilib.pkg.misc_flooring_wool.exec()

    unilib.register_node("unilib:misc_flooring_wool", "cottages:wool_tent", mode, {
        -- From cottages:wool_tent
        description = S("Woollen Flooring"),
        tiles = {"unilib_misc_flooring_wool.png"},
        groups = {choppy = 2, oddly_breakable_by_hand = 2, snappy = 2},
        -- N.B. no sounds in original code
        sounds = unilib.global.sound_table.wool,

        drawtype = "nodebox",
        is_ground_content = false,
        node_box = {
            type = "fixed",
            fixed = {
                {-0.5, -0.5, -0.50, 0.5, -0.5+1/16, 0.50},
            },
        },
        paramtype = "light",
        paramtype2 = "facedir",
        selection_box = {
            type = "fixed",
            fixed = {
                {-0.5, -0.5, -0.50, 0.5, -0.5+1/16, 0.50},
            },
        },

        on_place = core.rotate_node,
    })
    unilib.register_craft({
        -- From cottages:wool_tent
        output = "unilib:misc_flooring_wool 2",
        recipe = {
            {"unilib:item_string_ordinary", "unilib:item_string_ordinary"},
            {"", "group:stick"},
        },
    })
    if unilib.global.pkg_executed_table["wool_basic"] ~= nil then

        unilib.register_craft({
            -- From cottages:wool_tent
            output = "unilib:wool_white",
            recipe = {
                {"unilib:misc_flooring_wool", "unilib:misc_flooring_wool"},
            },
        })

    end

end
