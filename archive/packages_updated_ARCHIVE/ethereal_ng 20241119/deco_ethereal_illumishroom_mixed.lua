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
-- illumishrooms using underground decoration placement
local function add_illumishroom(low, high, nodename)

	register_decoration(1, {
		place_on = {"default:stone_with_coal"},
		sidelen = 16, fill_ratio = 0.5, y_min = low, y_max = high,
		flags = "force_placement, all_floors",
		decoration = nodename})
end

add_illumishroom(-1000, -50, "ethereal:illumishroom")
add_illumishroom(-2000, -1000, "ethereal:illumishroom2")
add_illumishroom(-3000, -2000, "ethereal:illumishroom3")
]]--
