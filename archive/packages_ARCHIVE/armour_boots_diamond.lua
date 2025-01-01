---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_diamond
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:boots_diamond", {
        description = S("Diamond Boots"),
        inventory_image = "3d_armor_inv_boots_diamond.png",
        groups = {armor_feet=1, armor_heal=12, armor_use=200},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
    })
    local s = "diamond"
    local m = armor.materials.diamond
    minetest.register_craft({
        output = "3d_armor:boots_"..s,
        recipe = {
            {m, "", m},
            {m, "", m},
        },
    })
]]--