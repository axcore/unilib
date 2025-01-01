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
    armor:register_armor(":3d_armor:boots_gold", {
        description = S("Gold Boots"),
        inventory_image = "3d_armor_inv_boots_gold.png",
        groups = {armor_feet=1, armor_heal=6, armor_use=300,
            physics_speed=-0.02, physics_gravity=0.02},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
    })
    local s = "gold"
    local m = armor.materials.gold
    minetest.register_craft({
        output = "3d_armor:boots_"..s,
        recipe = {
            {m, "", m},
            {m, "", m},
        },
    })
]]--
