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
if armor.materials.wood then
		armor:register_armor("3d_armor_gloves:gloves_wood", {
		description = S("Wood Gauntlets"),
		inventory_image = "3d_armor_gloves_inv_gloves_wood.png",
		groups = {armor_hands=1, armor_heal=0, armor_use=2000, flammable=1},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})

	minetest.register_craft({
		type = "fuel",
		recipe = "3d_armor_gloves:gloves_wood",
		burntime = 4,
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
