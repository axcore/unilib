---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/armor_admin
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
armor:register_armor(":3d_armor:helmet_admin", {
    description = S("Admin Helmet"),
    inventory_image = "3d_armor_inv_helmet_admin.png",
    armor_groups = {fleshy=100},
    groups = {armor_head=1, armor_heal=100, armor_use=0, armor_water=1,
            not_in_creative_inventory=1},
    on_drop = function(itemstack, dropper, pos)
        return
    end,
})

minetest.register_alias("adminhelmet", "3d_armor:helmet_admin")
]]--
