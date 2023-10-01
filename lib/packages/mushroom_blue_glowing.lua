---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    plants
-- Code:    WTFPL
-- Media:   WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.mushroom_blue_glowing = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.plants.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.mushroom_blue_glowing.init()

    return {
        description = "Glowing blue mushroom",
    }

end

function unilib.pkg.mushroom_blue_glowing.exec()

    unilib.register_node("unilib:mushroom_blue_glowing", "plants:glowshroom_wild", mode, {
        -- From plants:glowshroom_wild
        description = S("Glowing Blue Mushroom"),
        tiles = {"unilib_mushroom_blue_glowing.png"},
        -- N.B. mushroom = 1 not in original code
        groups = {attached_node = 1, flammable = 2, mushroom = 1, snappy = 3},
        sounds = unilib.sound_table.leaves,

        buildable_to = true,
        drawtype = "plantlike",
        inventory_image = "unilib_mushroom_blue_glowing.png",
        light_source = 11,
        paramtype = "light",
        selection_box = {
            type = "fixed",
            fixed = {-0.25, -0.5, -0.25, 0.25, -3/16, 0.25},
        },
        sunlight_propagates = true,
        visual_scale = 1.3,
        walkable = false,
    })
    unilib.register_mushroom_in_pot("unilib:mushroom_blue_glowing", "plants:glowshroom_wild")

    unilib.register_decoration("plants_mushroom_blue_glowing", {
        -- Original to unilib, based on decoration in "mushroom_brown" package
        deco_type = "simple",
        decoration = "unilib:mushroom_blue_glowing",

        noise_params = {
            octaves = 3,
            offset = 0,
            persist = 0.66,
            scale = 0.006,
            seed = 33617,      -- New random seed, generated for unilib
            spread = {x = 250, y = 250, z = 250},
        },
        sidelen = 16,
    })

end
