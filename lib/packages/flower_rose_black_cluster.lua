---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    GLEMr11
-- Code:    LGPL 2.1
-- Media:   unknown
---------------------------------------------------------------------------------------------------

unilib.pkg.flower_rose_black_cluster = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.glemr11.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.flower_rose_black_cluster.init()

    return {
        description = "Cluster of black roses",
        optional = "flower_rose_black",
    }

end

function unilib.pkg.flower_rose_black_cluster.exec()

    unilib.register_node(
        -- From GLEMr11, lib_ecology:flower_roses_black
        "unilib:flower_rose_black_cluster",
        "lib_ecology:flower_roses_black",
        mode,
        {
            description = unilib.utils.annotate(S("Cluster of Black Roses"), "Rosa"),
            tiles = {"unilib_flower_rose_black_cluster.png"},
            -- N.B. Replaced original groups with standard flower groups
--          groups = {
--              attached_node = 1, flammable = 1, flora = 1, leaves = 1,
--              oddly_breakable_by_hand = 1, snappy = 3,
--          },
            groups = {
                attached_node = 1, color_black = 1, colour_black = 1, flammable = 1, flora = 1,
                flower = 1, snappy = 3,
            },
            -- N.B. No sounds in original code
            sounds = unilib.global.sound_table.leaves,

            buildable_to = false,
            drawtype = "plantlike",
            -- N.B. floodable no longer required, because of unilib's flooding effects
--          floodable = true,
            -- N.B. inventory_image not in original code
            inventory_image = "unilib_flower_rose_black_cluster.png",
            -- N.B. removed is_ground_content = false to match other flowers
--          is_ground_content = false,
            paramtype = "light",
            selection_box = {
                type = "fixed",
                fixed = {-0.3, -0.5, -0.3, 0.3, 0, 0.3},
            },
            sunlight_propagates = true,
            visual_scale = 1,
            walkable = false,
            waving = 1,
            wield_scale = {x = 0.5, y = 0.5, z = 0.5},
        }
    )
    if unilib.global.pkg_executed_table["flower_rose_black"] ~= nil then

        unilib.register_craft_2x2({
            -- Original to unilib
            output = "unilib:flower_rose_bloack_cluster",
            ingredient = "unilib:flower_black_red",
        })

    end
    unilib.register_flower_in_pot(
        "unilib:flower_rose_black_cluster", "lib_ecology:flower_roses_black"
    )

    unilib.register_decoration_spare("unilib:flower_rose_black_cluster")

end
