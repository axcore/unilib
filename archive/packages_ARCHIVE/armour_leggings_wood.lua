---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_wood
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:leggings_wood", {
        description = S("Wood Leggings"),
        inventory_image = "3d_armor_inv_leggings_wood.png",
        groups = {armor_legs=1, armor_heal=0, armor_use=2000, flammable=1},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
    })
    local wood_armor_fuel = {
        helmet = 6,
        chestplate = 8,
        leggings = 7,
        boots = 5
    }
    for armor, burn in pairs(wood_armor_fuel) do
        minetest.register_craft({
            type = "fuel",
            recipe = "3d_armor:" .. armor .. "_wood",
            burntime = burn,
        })
    end
    local s = "wood"
    local m = armor.materials.wood
    minetest.register_craft({
        output = "3d_armor:leggings_"..s,
        recipe = {
            {m, m, m},
            {m, "", m},
            {m, "", m},
        },
    })
]]--
