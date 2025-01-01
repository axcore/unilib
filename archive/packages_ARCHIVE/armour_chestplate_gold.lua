---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_gold
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:chestplate_gold", {
        description = S("Gold Chestplate"),
        inventory_image = "3d_armor_inv_chestplate_gold.png",
        groups = {armor_torso=1, armor_heal=6, armor_use=300,
            physics_speed=-0.05, physics_gravity=0.05},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })
    local s = "gold"
    local m = armor.materials.gold
    minetest.register_craft({
        output = "3d_armor:chestplate_"..s,
        recipe = {
            {m, "", m},
            {m, m, m},
            {m, m, m},
        },
    })
]]--
