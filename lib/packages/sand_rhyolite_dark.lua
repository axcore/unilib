---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    UGBC
-- Code:    GPLv2
-- Media:   unknown
---------------------------------------------------------------------------------------------------

unilib.pkg.sand_rhyolite_dark = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.ugbc.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.sand_rhyolite_dark.init()

    return {
        description = "Dark rhyolite sand",
    }

end

function unilib.pkg.sand_rhyolite_dark.exec()

    unilib.register_node("unilib:sand_rhyolite_dark", nil, mode, {
        -- Texture from UGBC, rhyolite_sand.png. Original code
        description = S("Dark Rhyolite Sand"),
        tiles = {"unilib_sand_rhyolite_dark.png"},
        groups = {crumbly = 3, falling_node = 1, sand = 1},
        sounds = unilib.sound_table.sand,
    })

end
