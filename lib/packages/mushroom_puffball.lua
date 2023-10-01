---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    nsspf
-- Code:    LGPL
-- Media:   CC BY-SA 4.0
---------------------------------------------------------------------------------------------------

unilib.pkg.mushroom_puffball = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.nsspf.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.mushroom_puffball.init()

    return {
        description = "Puffball mushroom",
    }

end

function unilib.pkg.mushroom_puffball.exec()

    unilib.register_node("unilib:mushroom_puffball", "nsspf:lycoperdon_pyriforme", mode, {
        -- From nsspf:lycoperdon_pyriforme
        description = unilib.annotate(S("Puffball Mushroom"), "Lycoperdon pyriforme"),
        tiles = {"unilib_mushroom_puffball.png"},
        -- N.B. In original code, only snappy = 3
        groups = {attached_node = 1, flammable = 1, mushroom = 1, snappy = 3},
        -- N.B. In original code, no sounds
        sounds = unilib.sound_table.leaves,

        collision_box = {
            type = "fixed",
            fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3},
        },
        drawtype = "mesh",
        mesh = "unilib_mushroom_puffball.b3d",
        paramtype = "light",
        paramtype2 = "facedir",
        selection_box = {
            type = "fixed",
            fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3},
        },

        on_use = unilib.cuisine_eat_on_use("unilib:mushroom_puffball", 8),
    })
    -- (not compatible with flowerpots)

    unilib.register_node(
        -- From nsspf:cooked_lycoperdon_pyriforme
        "unilib:mushroom_puffball_cooked",
        "nsspf:cooked_lycoperdon_pyriforme",
        mode,
        {
            description = S("Cooked Puffball Mushroom"),
            tiles = {"unilib_mushroom_puffball_cooked.png"},
            -- N.B. In original code, only snappy = 3
            groups = {attached_node = 1, food_mushroom = 1, snappy = 3},
            -- N.B. In original code, no sounds
            sounds = unilib.sound_table.leaves,

            collision_box = {
                type = "fixed",
                fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3},
            },
            drawtype = "mesh",
            mesh = "unilib_mushroom_puffball.b3d",
            paramtype = "light",
            paramtype2 = "facedir",
            selection_box = {
                type = "fixed",
                fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3},
            },

            on_use = unilib.cuisine_eat_on_use("unilib:mushroom_puffball_cooked", 12),
        }
    )
    unilib.register_craft({
        -- From nsspf:cooked_lycoperdon_pyriforme
        type = "cooking",
        output = "unilib:mushroom_puffball_cooked",
        recipe = "unilib:mushroom_puffball",
        cooktime = 10,
    })

    unilib.register_decoration("nsspf_mushroom_puffball", {
        -- Adapted from flowers:mushroom_brown, replacing the collection of ABMs in the original
        --      nsspf code
        deco_type = "simple",
        decoration = "unilib:mushroom_puffball",

        noise_params = {
            octaves = 3,
            offset = 0,
            persist = 0.66,
            scale = 0.006 / unilib.nsspf_scarcity_factor,
            seed = 42837,      -- New random seed, generated for unilib
            spread = {x = 250, y = 250, z = 250},
        },
        sidelen = 16,
    })

end
