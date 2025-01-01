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
    armor:register_armor(":3d_armor:chestplate_nether", {
        description = S("Nether Chestplate"),
        inventory_image = "3d_armor_inv_chestplate_nether.png",
        groups = {armor_torso=1, armor_heal=14, armor_use=200, armor_fire=1},
        armor_groups = {fleshy=25},
        damage_groups = {cracky=3, snappy=2, level=3},
    })
    local s = "nether"
    local m = armor.materials.nether
    minetest.register_craft({
        output = "3d_armor:chestplate_"..s,
        recipe = {
            {m, "", m},
            {m, m, m},
            {m, m, m},
        },
    })
]]--