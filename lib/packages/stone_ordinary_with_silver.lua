---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    moreores
-- Code:    zlib
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.stone_ordinary_with_silver = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.moreores.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.stone_ordinary_with_silver.init()

    return {
        description = "Ordinary stone with silver as ore",
        depends = {"metal_silver", "stone_ordinary"},
    }

end

function unilib.pkg.stone_ordinary_with_silver.exec()

    unilib.register_node("unilib:stone_ordinary_with_silver", "moreores:mineral_silver", mode, {
        -- From moreores:mineral_silver
        description = unilib.brackets(S("Silver Ore"), S("Ordinary Stone")),
        tiles = {"unilib_stone_ordinary.png^unilib_metal_silver.png"},
        groups = {cracky = 2},
        sounds = unilib.sound_table.stone,

        drop = "unilib:metal_silver_lump",
    })

end
