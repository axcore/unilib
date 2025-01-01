---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    technic_armor
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.armour_chestplate_brass = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.technic_armor.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.armour_chestplate_brass.init()

    return {
        description = "Brass chestplate",
        depends = "metal_brass",
    }

end

function unilib.pkg.armour_chestplate_brass.exec()

    unilib.register_armour(
        -- From technic_armor:chestplate_brass
        "unilib:armour_chestplate_brass",
        "technic_armor:chestplate_brass",
        mode,
        {
            description = S("Brass Chestplate"),
            inventory_image = "unilib_armour_chestplate_brass_inv.png",
            groups = {armour_heal = 0,  armour_radiation = 15, armour_torso = 14, armour_use = 650},
        }
    )
    unilib.register_craft_chestplate({
        -- From technic_armor:chestplate_brass
        part_name = "brass",
        ingredient = "unilib:metal_brass_ingot",
    })

end