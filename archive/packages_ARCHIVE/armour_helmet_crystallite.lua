---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_crystal
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:helmet_crystal", {
        description = S("Crystal Helmet"),
        inventory_image = "3d_armor_inv_helmet_crystal.png",
        groups = {armor_head=1, armor_heal=12, armor_use=100, armor_fire=1},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=2, snappy=1, level=3},
    })
    local s = "crystal"
    local m = armor.materials.crystal
    minetest.register_craft({
        output = "3d_armor:helmet_"..s,
        recipe = {
            {m, m, m},
            {m, "", m},
            {"", "", ""},
        },
    })
]]--
