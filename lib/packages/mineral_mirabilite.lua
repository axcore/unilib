---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    PFAA
-- Code:    Artistic-2.0
-- Media:   Artistic-2.0
---------------------------------------------------------------------------------------------------

unilib.pkg.mineral_mirabilite = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.pfaa.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.mineral_mirabilite.init()

    return {
        description = "Mirabilite (as mineral)",
    }

end

function unilib.pkg.mineral_mirabilite.exec()

    local c_lump = "unilib:mineral_mirabilite_lump"

    unilib.register_mineral({
        -- Original to unilib
        part_name = "mirabilite",
        description = S("Mirabilite"),

        hardness = 1,
    })

    unilib.register_craftitem(c_lump, nil, mode, {
        -- Original to unilib
        description = S("Mirabilite Lump"),
        inventory_image = "unilib_mineral_mirabilite_lump.png",
    })

end
