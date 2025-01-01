---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_cactus
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:boots_cactus", {
        description = S("Cactus Boots"),
        inventory_image = "3d_armor_inv_boots_cactus.png",
        groups = {armor_feet=1, armor_heal=0, armor_use=1000},
        armor_groups = {fleshy=5},
        damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
    })
    local cactus_armor_fuel = {
        helmet = 14,
        chestplate = 16,
        leggings = 15,
        boots = 13
    }
    for armor, burn in pairs(cactus_armor_fuel) do
        minetest.register_craft({
            type = "fuel",
            recipe = "3d_armor:" .. armor .. "_cactus",
            burntime = burn,
        })
    end
    local s = "cactus"
    local m = armor.materials.cactus
    minetest.register_craft({
        output = "3d_armor:boots_"..s,
        recipe = {
            {m, "", m},
            {m, "", m},
        },
    })
]]--
