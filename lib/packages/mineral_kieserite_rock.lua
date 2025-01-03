---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    AATO
-- Code:    GPL 3.0
-- Media:   GPL 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.mineral_kieserite_rock = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.aato.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.mineral_kieserite_rock.init()

    return {
        description = "Kieserite rock (as mineral)",
        notes = "An alternative to the stone ores with kieserite",
        depends = "mineral_kieserite",
    }

end

function unilib.pkg.mineral_kieserite_rock.exec()

    local c_lump = "unilib:mineral_kieserite_lump"
    local hardness = unilib.global.mineral_table["kieserite"]["hardness"]

    unilib.register_mineral_rock("kieserite")

    unilib.register_node("unilib:mineral_kieserite_rock", nil, mode, {
        -- Texture from AATO, kieserite.png. Original code
        description = S("Kieserite Rock"),
        tiles = {"unilib_mineral_kieserite_rock.png"},
        groups = {cracky = 2},
        sounds = unilib.global.sound_table.stone,

        drop = {
            max_items = 1,
            items = {
                {items = {"unilib:mineral_kieserite_rock"}, rarity = (100 * hardness)},
                {items = {c_lump .. " 2"}, rarity = (2 + hardness)},
                {items = {c_lump}},
            },
        },
    })

end
