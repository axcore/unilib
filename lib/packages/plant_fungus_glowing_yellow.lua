---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    moreplants
-- Code:    LGPL 2.1+
-- Media:   CC-BY-SA 3.0 UNPORTED
---------------------------------------------------------------------------------------------------

unilib.pkg.plant_fungus_glowing_yellow = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.moreplants.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.plant_fungus_glowing_yellow.init()

    return {
        description = "Yellow glowing fungus",
    }

end

function unilib.pkg.plant_fungus_glowing_yellow.exec()

    unilib.register_node("unilib:plant_fungus_glowing_yellow", "moreplants:glowfung", mode, {
        -- From moreplants:glowfung
        description = S("Yellow Glowing Fungus"),
        tiles = {"unilib_plant_fungus_glowing_yellow.png"},
        groups = {attached_node = 1, flammable = 1, flora = 1, snappy = 3},
        -- N.B. no sounds in original code
        sounds = unilib.sound_table.leaves,

        buildable_to = true,
        drawtype = "torchlike",
        inventory_image = "unilib_plant_fungus_glowing_yellow.png",
        is_ground_content = false,
        light_source = unilib.light_max - 2,
        paramtype = "light",
        paramtype2 = "wallmounted",
        selection_box = {
            type = "wallmounted",
            wall_top = {-0.1, -0.1, -0.1, 0.1, 0.5, 0.1},
            wall_bottom = {-0.1, -0.5, -0.1, 0.1, 0.1, 0.1},
            wall_side = {-0.5, -0.3, -0.1, -0.2, 0.3, 0.1},
        },
        sunlight_propagates = true,
        visual_scale = 1,
        walkable = false,
        wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    })
    -- (not compatible with flowerpots)

    -- (No decoration in original code, no original decoration because this item is attached to
    --      walls)

end
