---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    better_farming
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

unilib.pkg.container_crate_carrot_chantenay = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.better_farming.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.container_crate_carrot_chantenay.init()

    return {
        description = "Chantenay carrot crate",
        notes = "This container is decorative; it cannot contain things",
        depends = "produce_carrot_chantenay",
    }

end

function unilib.pkg.container_crate_carrot_chantenay.exec()

    local c_harvest = "unilib:produce_carrot_chantenay_harvest"

    unilib.register_node(
        -- From better_farming:carrot_crate
        "unilib:container_crate_carrot_chantenay",
        "better_farming:carrot_crate",
        mode,
        {
            description = S("Chantenay Carrot Crate"),
            tiles = {
                "unilib_container_crate_carrot_chantenay_top.png",
                "unilib_container_crate_harvest_bottom.png",
                "unilib_container_crate_carrot_chantenay_side.png",
                "unilib_container_crate_carrot_chantenay_side.png",
                "unilib_container_crate_carrot_chantenay_side.png",
                "unilib_container_crate_carrot_chantenay_side.png",
            },
            groups = {choppy = 3, flammable = 3, oddly_breakable_by_hand = 2},
            sounds = unilib.global.sound_table.wood,

            is_ground_content = false,
            paramtype2 = "facedir",
        }
    )
    unilib.register_craft({
        -- From better_farming:carrot_crate
        output = "unilib:container_crate_carrot_chantenay",
        recipe = {
            {c_harvest, c_harvest, c_harvest},
            {c_harvest, "group:wood", c_harvest},
            {c_harvest, c_harvest, c_harvest},
        },
    })

end
