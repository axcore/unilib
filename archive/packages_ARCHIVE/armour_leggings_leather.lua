---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    armor_expanded/armor_leather
-- Code:    MIT
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
armor:register_armor(":armor_expanded:leggings_leather", {
	description = S("Leather Pants"),
	inventory_image = "armor_expanded_inv_leggings_leather.png",
	groups = {armor_legs=1, armor_heal=0, armor_use=800, flammable=1},
	armor_groups = {fleshy=12},
	damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=2, level=1},
})
m = "leather"
c = "group:leather"
minetest.register_craft({
    output = "armor_expanded:leggings_"..m,
    recipe = {
        {c, c, c},
        {c, "", c},
        {c, "", c},
    },
})
]]--
