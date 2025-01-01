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
    armor:register_armor("shields:shield_mithril", {
        description = S("Mithril Shield"),
        inventory_image = "shields_inv_shield_mithril.png",
        groups = {armor_shield=1, armor_heal=13, armor_use=66},
        armor_groups = {fleshy=16},
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