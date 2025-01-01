---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    3d_armor/3d_armor_sfinv
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
-- support for i18n
local S = minetest.get_translator(minetest.get_current_modname())

if not minetest.global_exists("sfinv") then
    minetest.log("warning", "3d_armor_sfinv: Mod loaded but unused.")
    return
end

sfinv.register_page("3d_armor:armor", {
    title = S("Armor"),
    get = function(self, player, context)
        local name = player:get_player_name()
        local formspec = armor:get_armor_formspec(name, true)
        return sfinv.make_formspec(player, context, formspec, false)
    end
})
armor:register_on_update(function(player)
    if sfinv.enabled then
        sfinv.set_player_inventory_formspec(player)
    end
end)
]]--