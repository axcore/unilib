---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cropocalypse
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

unilib.pkg.mushroom_morel_common_wild = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.cropocalypse.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.mushroom_morel_common_wild.init()

    return {
        description = "Wild common morel mushroom",
        depends = "crop_mushroom_morel_common",
    }

end

function unilib.pkg.mushroom_morel_common_wild.exec()

    unilib.register_node(
        -- From cropocalypse:morel_mushroom_wild
        "unilib:mushroom_morel_common_wild",
        "cropocalypse:morel_mushroom_wild",
        mode,
        {
            description = S("Wild Common Morel Mushroom"),
            tiles = {"unilib_mushroom_morel_common_wild.png"},
            -- N.B. mushroom = 1 not in original code
            groups = {attached_node = 1, flammable = 4, mushroom = 1, snappy = 3},
            sounds = unilib.global.sound_table.leaves,

            buildable_to = true,
            drawtype = "plantlike",
            drop = "unilib:crop_mushroom_morel_common_seed",
            inventory_image = "unilib_mushroom_morel_common_wild.png",
            paramtype = "light",
            selection_box = {
                type = "fixed",
                fixed = {-6 / 16, -8 / 16, -6 / 16, 6 / 16, 5 / 16, 6 / 16},
            },
            sunlight_propagates = true,
            walkable = false,
            waving = 0,
            wield_image = "unilib_mushroom_morel_common_wild.png",
        }
    )
    -- (not compatible with flowerpots)

    unilib.register_decoration_generic("cropocalypse_mushroom_morel_common_wild", {
        -- From cropocalypse/plants.lua
        deco_type = "simple",
        decoration = "unilib:mushroom_morel_common_wild",

        noise_params = {
            octaves = 3,
            offset = -0.1,
            persist = 0.7,
            scale = 0.1,
            seed = 3961,
            spread = {x = 50, y = 50, z = 50},
        },
        sidelen = 16,
    })

end
