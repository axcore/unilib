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
-- grow papyrus up to 4 high and bamboo up to 8 high
local grow_papyrus = function(pos, node)

	local oripos = pos.y
	local high = 4

	pos.y = pos.y - 1

	local nod = minetest.get_node_or_nil(pos)

	if not nod
	or minetest.get_item_group(nod.name, "soil") < 1
	or minetest.find_node_near(pos, 3, {"group:water"}) == nil then return end

	if node.name == "ethereal:bamboo" then high = 8 end

	pos.y = pos.y + 1

	local height = 0

	while height < high and minetest.get_node(pos).name == node.name do
		height = height + 1
		pos.y = pos.y + 1
	end

	nod = minetest.get_node_or_nil(pos)

	if nod and nod.name == "air" and height < high then

		if node.name == "ethereal:bamboo" and height == (high - 1) then

			ethereal.grow_bamboo_tree({x = pos.x, y = oripos, z = pos.z})
		else
			minetest.swap_node(pos, {name = node.name})
		end
	end

end

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

override_abm("Grow papyrus", {
--interval = 2, chance = 1, -- testing only
	nodenames = {"default:papyrus", "ethereal:bamboo"},
	neighbors = {"group:soil"},
	action = grow_papyrus
})
]]--
