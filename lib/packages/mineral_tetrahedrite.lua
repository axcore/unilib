---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    real_minerals
-- Code:    GPL 3.0
-- Media:   unknown
---------------------------------------------------------------------------------------------------

unilib.pkg.mineral_tetrahedrite = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.real_minerals.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.mineral_tetrahedrite.init()

    return {
        description = "Tetrahedrite (as a mineral)",
        -- (Fallback cooking recipe, in case real copper is not available)
        optional = "metal_copper",
    }

end

function unilib.pkg.mineral_tetrahedrite.exec()

    unilib.register_mineral({
        -- Original to unilib
        part_name = "tetrahedrite",
        description = S("Tetrahedrite"),

        hardness = 2,
        -- (Craft recipe provided by the "metal_copper_rare" package)
        metal_list = {"copper_rare"},
    })

    unilib.register_craftitem(
        -- From real_minerals:tetrahedrite
        "unilib:mineral_tetrahedrite_lump",
        "real_minerals:tetrahedrite",
        mode,
        {
            description = S("Tetrahedrite Lump"),
            inventory_image = "unilib_mineral_tetrahedrite_lump.png",
        }
    )

end

function unilib.pkg.mineral_tetrahedrite.post()

    -- If the real copper package was not executed, smelt into regular copper instead
    if unilib.global.pkg_executed_table["metal_copper_rare"] == nil and
            unilib.global.pkg_executed_table["metal_copper"] ~= nil then

        unilib.register_craft({
            -- Unilib to unilib
            type = "cooking",
            output = "unilib:metal_copper_ingot",
            recipe = "unilib:mineral_tetrahedrite_lump",

            cooktime = 5,
        })

        unilib.minerals.update_mineral({
            part_name = "tetrahedrite",
            metal_list = {"copper"},
        })

    end

end
