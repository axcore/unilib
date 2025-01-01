---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
for n = 1, #fish do

	local usage
	local groups

	if fish[n][3] > 0 then
		usage = minetest.item_eat(fish[n][3])
		groups = {food_fish_raw = 1, ethereal_fish = 1}
	end

	minetest.register_craftitem("ethereal:fish_" .. fish[n][2], {
		description = S(fish[n][1]),
		inventory_image = "ethereal_fish_" .. fish[n][2] .. ".png",
		on_use = usage,
		groups = groups
	})
end
]]--
