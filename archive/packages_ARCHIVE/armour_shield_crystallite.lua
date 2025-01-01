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
    armor:register_armor("shields:shield_crystal", {
        description = S("Crystal Shield"),
        inventory_image = "shields_inv_shield_crystal.png",
        groups = {armor_shield=1, armor_heal=12, armor_use=100, armor_fire=1},
        armor_groups = {fleshy=15},
        damage_groups = {cracky=2, snappy=1, level=3},
        reciprocate_damage = true,
        on_damage = function(player, index, stack)
            play_sound_effect(player, "default_glass_footstep")
        end,
        on_destroy = function(player, index, stack)
            play_sound_effect(player, "default_break_glass")
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
