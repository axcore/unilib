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
    armor:register_armor("shields:shield_cactus", {
        description = S("Cactus Shield"),
        inventory_image = "shields_inv_shield_cactus.png",
        groups = {armor_shield=1, armor_heal=0, armor_use=1000},
        armor_groups = {fleshy=5},
        damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
        reciprocate_damage = true,
        on_damage = function(player, index, stack)
            play_sound_effect(player, "default_wood_footstep")
        end,
        on_destroy = function(player, index, stack)
            play_sound_effect(player, "default_wood_footstep")
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

    armor:register_armor("shields:shield_enhanced_cactus", {
        description = S("Enhanced Cactus Shield"),
        inventory_image = "shields_inv_shield_enhanced_cactus.png",
        groups = {armor_shield=1, armor_heal=0, armor_use=1000},
        armor_groups = {fleshy=8},
        damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=2},
        reciprocate_damage = true,
        on_damage = function(player, index, stack)
            play_sound_effect(player, "default_dig_metal")
        end,
        on_destroy = function(player, index, stack)
            play_sound_effect(player, "default_dug_metal")
        end,
    })
    minetest.register_craft({
        output = "shields:shield_enhanced_cactus",
        recipe = {
            {"default:steel_ingot"},
            {"shields:shield_cactus"},
            {"default:steel_ingot"},
        },
    })
    minetest.register_craft({
        type = "fuel",
        recipe = "shields:shield_cactus",
        burntime = 16,
    })
]]--
