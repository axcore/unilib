---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    rocks/mineral
-- Code:    GPLv2
-- Media:   GPLv2
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_ore({
 wherein="rocks:skarn",
 ore="mineral:skarn_chalcopyrite",
 clust_size=3,
 clust_num_ores=12,
 clust_scarcity=4^3,
 noise_treshold=0.333,
 noise_params=mineral.noise.Copper
 })
]]--
