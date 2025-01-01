---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/shields
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
armor:register_armor("shields:shield_admin", {
    description = S("Admin Shield"),
    inventory_image = "shields_inv_shield_admin.png",
    groups = {armor_shield=1000, armor_heal=100, armor_use=0, not_in_creative_inventory=1},
})

minetest.register_alias("adminshield", "shields:shield_admin")
]]--
