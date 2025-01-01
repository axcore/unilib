---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_steel
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:helmet_steel", {
        description = S("Steel Helmet"),
        inventory_image = "3d_armor_inv_helmet_steel.png",
        groups = {armor_head=1, armor_heal=0, armor_use=800,
            physics_speed=-0.01, physics_gravity=0.01},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
    })
    local s = "steel"
    local m = armor.materials.steel
    minetest.register_craft({
        output = "3d_armor:helmet_"..s,
        recipe = {
            {m, m, m},
            {m, "", m},
            {"", "", ""},
        },
    })
]]--
