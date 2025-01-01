---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    default
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.sand_silver = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.default.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.sand_silver.init()

    return {
        description = "Silver sand",
    }

end

function unilib.pkg.sand_silver.exec()

    unilib.register_node("unilib:sand_silver", "default:silver_sand", mode, {
        -- From default:silver_sand
        description = S("Silver Sand"),
        tiles = {"unilib_sand_silver.png"},
        groups = {crumbly = 3, falling_node = 1, sand = 1},
        sounds = unilib.global.sound_table.sand,
    })

    if unilib.setting.squeezed_sand_flag then

        unilib.register_node("unilib:sand_silver_compressed", nil, mode, {
            -- Original to unilib
            description = S("Compressed Silver Sand"),
            tiles = {"unilib_sand_silver_compressed.png"},
            groups = {compressedsand = 1, crumbly = 2},
            sounds = unilib.global.sound_table.sand,

            is_ground_content = false,
            stack_max = unilib.global.squeezed_stack_max,
        })
        -- Original to unilib
        unilib.misc.set_squeezed_recipes("unilib:sand_silver", "unilib:sand_silver_compressed")

    end

end
