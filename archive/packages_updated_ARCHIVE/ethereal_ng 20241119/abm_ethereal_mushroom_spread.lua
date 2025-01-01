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
-- override abm function
local function override_abm(name, redef)

	if not name or not redef then return end

	for _, ab in pairs(minetest.registered_abms) do

		if name == ab.label then

			for k, v in pairs(redef) do
				ab[k] = v
			end

			return ab
		end
	end
end

override_abm("Mushroom spread", {
--interval = 1, chance = 1, -- testing only
	chance = 50, -- moved back to original chance from 150
	nodenames = {"group:mushroom"}
})
]]--
