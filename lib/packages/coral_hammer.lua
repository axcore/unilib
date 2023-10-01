---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.coral_hammer = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.coral_hammer.init()

    return {
        description = "Hammer coral",
    }

end

function unilib.pkg.coral_hammer.exec()

    unilib.register_node("unilib:coral_hammer", "australia:hammer_coral", mode, {
        -- From australia:hammer_coral
        -- (Re-classified in 2017, according to Wikipedia)
--      description = unilib.annotate(S("Hammer Coral"), "Euphyllia ancora"),
        description = unilib.annotate(S("Hammer Coral"), "Fimbriaphyllia ancora"),
        tiles = {"unilib_coral_hammer.png"},
        groups = {attached_node = 1, coral = 1, sea = 1, snappy = 3},
        sounds = unilib.sound_table.leaves,

        buildable_to = false,
        climbable = true,
        drawtype = "plantlike",
        drowning = 1,
        inventory_image = "unilib_coral_hammer.png",
        paramtype = "light",
        selection_box = {
            type = "fixed",
            fixed = {-0.5, -0.5, -0.5, 0.5, -0.3125, 0.5},
        },
        sunlight_propagates = true,
        visual_scale = 1.0,
        walkable = false,
        waving = 0,
        wield_image = "unilib_coral_hammer.png",
    })

end
