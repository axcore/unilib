---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_mithril
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
    armor:register_armor(":3d_armor:helmet_mithril", {
        description = S("Mithril Helmet"),
        inventory_image = "3d_armor_inv_helmet_mithril.png",
        groups = {armor_head=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, level=3},
    })
    local s = "mithril"
    local m = armor.materials.mithril
    minetest.register_craft({
        output = "3d_armor:helmet_"..s,
        recipe = {
            {m, m, m},
            {m, "", m},
            {"", "", ""},
        },
    })
]]--
