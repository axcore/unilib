---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor_gloves
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
if armor.materials.mithril then
		armor:register_armor("3d_armor_gloves:gloves_mithril", {
		description = S("Mithril Gauntlets"),
		inventory_image = "3d_armor_gloves_inv_gloves_mithril.png",
		groups = {armor_hands=1, armor_heal=12, armor_use=100},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=3},
	})
end
for k, v in pairs(armor.materials) do
	minetest.register_craft({
		output = "3d_armor_gloves:gloves_"..k,
		recipe = {
			{v, "", v},
			{"farming:string", "", "farming:string"},
		},
	})
end
]]--