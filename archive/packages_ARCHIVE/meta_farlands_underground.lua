---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    farlands
-- Code:    LGPL 2.1
-- Media:   CC-BY-SA 3.0 UNPORTED
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_on_generated(function(minp, maxp)
	if maxp.y < -1000 or maxp.y > 10 then
		return
	end
	local dirt = minetest.find_nodes_in_area(minp, maxp,
		{"default:stone"})
	for n = 1, #dirt do
		if math.random(1, 50) == 1 then
			local pos = {x = dirt[n].x, y = dirt[n].y, z = dirt[n].z }
				if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "air" then
					if math.random(1,2) == 1 then
					minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:stalagtite"})
					elseif math.random(1,2) == 1 then
					minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:stalagtite1"})
					elseif math.random(1,2) == 1 then
					minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:stalagtite2"})
					else
					minetest.add_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = "mapgen:stalagtite3"})
					end
				end
		end
	end
end)

minetest.register_on_generated(function(minp, maxp)
	if maxp.y < -1000 or maxp.y > 20 then
		return
	end
	local dirt = minetest.find_nodes_in_area(minp, maxp,
		{"default:stone"})
	for n = 1, #dirt do
		if math.random(1, 50) == 1 then
			local pos = {x = dirt[n].x, y = dirt[n].y, z = dirt[n].z }
				if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" and pos.y >= -100 then
					if math.random(1,2) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:stalagmite0"})
					elseif math.random(1,2) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:stalagmite1"})
					else
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:stalagmite2"})
					end
				end
		end
	end
end)

minetest.register_on_generated(function(minp, maxp)
	if maxp.y < -2000 or maxp.y > 1500 then
		return
	end
	local stone = minetest.find_nodes_in_area(minp, maxp,
		{"default:stone"})
	for n = 1, #stone do
		if math.random(1, 150) == 1 then
			local pos = {x = stone[n].x, y = stone[n].y, z = stone[n].z }
				if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" then
					if math.random(1,5) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:crystal_small"})
					else
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "mapgen:crystal"})
					end
				end
		end
	end
end)
]]--
