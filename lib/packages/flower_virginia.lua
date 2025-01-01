---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    beautiflowers
-- Code:    GPLv3.0
-- Media:   CC0
---------------------------------------------------------------------------------------------------

unilib.pkg.flower_virginia = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.beautiflowers.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.flower_virginia.init()

    return {
        description = "Virginia flower",
        optional = "dye_basic",
    }

end

function unilib.pkg.flower_virginia.exec()

    unilib.register_beautiflower({
        -- From beautiflowers:virginia. Creates unilib:flower_virginia
        part_name = "virginia",
        orig_name = "beautiflowers:virginia",
        select_table = {-2 / 16, -0.5, -2 / 16, 2 / 16, 7 / 16, 2 / 16},

        replace_mode = mode,
        description = S("Virginia Flower"),
        dye = "cyan",
    })

end
