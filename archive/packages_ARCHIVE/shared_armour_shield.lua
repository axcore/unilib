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
local disable_sounds = minetest.settings:get_bool("shields_disable_sounds")
local function play_sound_effect(player, name)
    if not disable_sounds and player then
        local pos = player:get_pos()
        if pos then
            minetest.sound_play(name, {
                pos = pos,
                max_hear_distance = 10,
                gain = 0.5,
            })
        end
    end
end
]]--
