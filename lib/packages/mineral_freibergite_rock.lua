---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    AATO
-- Code:    GPL 3.0
-- Media:   GPL 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.mineral_freibergite_rock = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.aato.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.mineral_freibergite_rock.init()

    return {
        description = "Freibergite rock (as mineral)",
        notes = "An alternative to the stone ores with freibergite",
        depends = "mineral_freibergite",
    }

end

function unilib.pkg.mineral_freibergite_rock.exec()

    local c_lump = "unilib:mineral_freibergite_lump"
    local hardness = unilib.mineral_table["freibergite"]["hardness"]

    unilib.register_mineral_rock("freibergite")

    unilib.register_node("unilib:mineral_freibergite_rock", nil, mode, {
        -- Texture from AATO, freibergite.png. Original code
        description = S("Freibergite Rock"),
        tiles = {"unilib_mineral_freibergite_rock.png"},
        groups = {cracky = 2},
        unilib.sound_table.stone,

        drop = {
            max_items = 1,
            items = {
                {items = {"unilib:mineral_freibergite_rock"}, rarity = (100 * hardness)},
                {items = {c_lump .. " 2"}, rarity = (2 + hardness)},
                {items = {c_lump}},
            },
        },
    })

end
