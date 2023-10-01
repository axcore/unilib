---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    UGBC
-- Code:    GPLv2
-- Media:   unknown
---------------------------------------------------------------------------------------------------

unilib.pkg.clay_siltstone_pale = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.ugbc.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.clay_siltstone_pale.init()

    return {
        description = "Pale siltstone clay",
    }

end

function unilib.pkg.clay_siltstone_pale.exec()

    unilib.register_node("unilib:clay_siltstone_pale", nil, mode, {
        -- Texture from UGBC, siltstone_clay.png. Original code
        description = S("Pale Siltstone Clay"),
        tiles = {"unilib_clay_siltstone_pale.png"},
        groups = {crumbly = 3},
        sounds = unilib.sound_table.dirt,
    })

end
