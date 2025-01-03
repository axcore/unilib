---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    moreores
-- Code:    zlib
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.stone_ordinary_with_mithril = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.moreores.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.stone_ordinary_with_mithril.init()

    return {
        description = "Ordinary stone with mithril as ore",
        depends = {"metal_mithril", "stone_ordinary"},
    }

end

function unilib.pkg.stone_ordinary_with_mithril.exec()

    unilib.register_node("unilib:stone_ordinary_with_mithril", "moreores:mineral_mithril", mode, {
        -- From moreores:mineral_mithril
        description = unilib.utils.brackets(S("Mithril Ore"), S("Ordinary Stone")),
        tiles = {"unilib_stone_ordinary.png^unilib_metal_mithril.png"},
        -- N.B. ore = 1 not in original code
        groups = {cracky = 2, ore = 1},
        sounds = unilib.global.sound_table.stone,

        drop = "unilib:metal_mithril_lump",
    })

end
