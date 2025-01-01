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
    armor:register_armor("shields:shield_gold", {
        description = S("Gold Shield"),
        inventory_image = "shields_inv_shield_gold.png",
        groups = {armor_shield=1, armor_heal=6, armor_use=300,
            physics_speed=-0.04, physics_gravity=0.04},
        armor_groups = {fleshy=10},
        damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=3, level=2},
        reciprocate_damage = true,
        on_damage = function(player, index, stack)
            play_sound_effect(player, "default_dig_metal")
        end,
        on_destroy = function(player, index, stack)
            play_sound_effect(player, "default_dug_metal")
        end,
    })
for k, v in pairs(armor.materials) do
    minetest.register_craft({
        output = "shields:shield_"..k,
        recipe = {
            {v, v, v},
            {v, v, v},
            {"", v, ""},
        },
    })
end
]]--
