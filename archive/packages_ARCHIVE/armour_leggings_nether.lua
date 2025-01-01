---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_nether
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:leggings_nether", {
        description = S("Nether Leggings"),
        inventory_image = "3d_armor_inv_leggings_nether.png",
        groups = {armor_legs=1, armor_heal=14, armor_use=200, armor_fire=1},
        armor_groups = {fleshy=25},
        damage_groups = {cracky=3, snappy=2, level=3},
    })
    local s = "nether"
    local m = armor.materials.nether
    minetest.register_craft({
        output = "3d_armor:leggings_"..s,
        recipe = {
            {m, m, m},
            {m, "", m},
            {m, "", m},
        },
    })
]]--
