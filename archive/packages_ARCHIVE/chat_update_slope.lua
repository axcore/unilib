---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    unilib
-- Code:    LGPLv2
-- Media:   CC-0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_chatcommand('updshape', {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if not player then return false, 'Player not found' end
        if not minetest.check_player_privs(player, {server=true}) then return false, 'Update shape requires server privileges' end
        local pos = player:get_pos()
        local node_pos = {['x'] = pos.x, ['y'] = pos.y - 1, ['z'] = pos.z}
        local node = minetest.get_node(node_pos)
        if naturalslopeslib.update_shape(node_pos, node) then
            return true, 'Shape updated.'
        end
        return false, node.name .. " cannot have it's shape updated."
    end,
})
]]--
