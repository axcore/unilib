---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    GLEMr4
-- Code:    LGPL 2.1
-- Media:   unknown
--
-- From:    GLEMr6
-- Code:    LGPL 2.1
-- Media:   unknown
---------------------------------------------------------------------------------------------------

unilib.pkg.decor_rockwall_stone_ordinary = {}

local S = unilib.intllib
local glemr4_mode = unilib.global.imported_mod_table.glemr4.add_mode
local glemr6_mode = unilib.global.imported_mod_table.glemr6.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.decor_rockwall_stone_ordinary.init()

    return {
        description = "Rockwall of ordinary stone",
        depends = "stone_ordinary",
        optional = "mineral_coal",
    }

end

function unilib.pkg.decor_rockwall_stone_ordinary.exec()

    local c_stone = "unilib:stone_ordinary"
    local c_cobble = "unilib:stone_ordinary_cobble"

    unilib.register_node(
        -- From GLEMr4, lib_materials:rockwall_stone
        "unilib:decor_rockwall_stone_ordinary",
        "lib_materials:rockwall_stone",
        glemr4_mode,
        {
            description = S("Rockwall of Ordinary Stone"),
            tiles = {"unilib_decor_rockwall_stone_ordinary.png"},
            groups = {cracky = 3, level = 2, stone = 1},
            sounds = unilib.global.sound_table.stone,

            -- N.B. Was "lib_materials:stone_brown" in original code
            drop = "unilib:stone_ordinary_cobble",
            -- N.B. is_ground_content not in original code, this matches
            --      unilib:decor_rockwall_stone_ordinary_dark
            is_ground_content = false,
        }
    )
    unilib.register_craft({
        -- Original to unilib
        output = "unilib:decor_rockwall_stone_ordinary 9",
        recipe = {
            {c_stone, c_stone, c_stone},
            {c_cobble, c_cobble, c_cobble},
            {c_stone, c_stone, c_stone},
        },
    })

    if unilib.global.pkg_executed_table["mineral_coal"] ~= nil then

        unilib.register_node(
            -- From GLEMr6, lib_materials:stone_cobble_small
            "unilib:decor_rockwall_stone_ordinary_dark",
            "lib_materials:stone_cobble_small",
            glemr6_mode,
            {
                description = S("Dark Rockwall of Ordinary Stone"),
                tiles = {"unilib_decor_rockwall_stone_ordinary_dark.png"},
                groups = {cracky = 3, stone = 2},
                sounds = unilib.global.sound_table.stone,

                -- N.B. no drop in original code, this matches unilib:decor_rockwall_stone_ordinary
                drop = "unilib:stone_ordinary_cobble",
                is_ground_content = false,
            }
        )
        unilib.register_craft({
            -- Original to unilib
            output = "unilib:decor_rockwall_stone_ordinary_dark 8",
            recipe = {
                {c_stone, c_stone, c_stone},
                {c_cobble, "unilib:mineral_coal_lump", c_cobble},
                {c_stone, c_stone, c_stone},
            },
        })

    end

end
