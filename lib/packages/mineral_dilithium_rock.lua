---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    unilib
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.mineral_dilithium_rock = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.unilib.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.mineral_dilithium_rock.init()

    return {
        description = "Dilithium rock (as mineral)",
        notes = "An alternative to the stone ores with dilithium",
        depends = "mineral_dilithium",
    }

end

function unilib.pkg.mineral_dilithium_rock.exec()

    local c_lump = "unilib:mineral_dilithium_lump"
    local hardness = unilib.global.mineral_table["dilithium"]["hardness"]

    unilib.register_mineral_rock("dilithium")

    unilib.register_node("unilib:mineral_dilithium_rock", nil, mode, {
        -- Original to unilib
        description = S("Dilithium Rock"),
        tiles = {"unilib_mineral_dilithium_rock.png"},
        groups = {cracky = 1},
        sounds = unilib.global.sound_table.stone,

        drop = {
            max_items = 1,
            items = {
                {items = {"unilib:mineral_dilithium_rock"}, rarity = (100 * hardness)},
                {items = {c_lump .. " 2"}, rarity = (2 + hardness)},
                {items = {c_lump}},
            },
        },
    })

end