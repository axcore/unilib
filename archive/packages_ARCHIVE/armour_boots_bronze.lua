---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_bronze
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:boots_bronze", {
        description = S("Bronze Boots"),
        inventory_image = "3d_armor_inv_boots_bronze.png",
        groups = {armor_feet=1, armor_heal=6, armor_use=400,
            physics_speed=-0.01, physics_gravity=0.01},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=1, level=2},
    })
    local s = "bronze"
    local m = armor.materials.bronze
    minetest.register_craft({
        output = "3d_armor:boots_"..s,
        recipe = {
            {m, "", m},
            {m, "", m},
        },
    })
]]--
