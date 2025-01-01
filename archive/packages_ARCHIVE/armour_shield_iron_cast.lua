---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    technic_armor
-- Code:    LGPL v2.1
-- Media:   CC-BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[local materials = {}

if minetest.get_modpath("technic_worldgen") then
	materials.cast = {
		name = S("Cast Iron"),
		craft_item = "technic:cast_iron_ingot",
		armor = 2.5,
		heal = 8,
		use = 200,
		radiation = 40
	}
end

local parts = {
}

if minetest.get_modpath("shields") then
	parts.shield = {
		name = S("Shield"),
		place = "shield",
		level = 5,
		radlevel = 0.00,
		craft = {{1, 1, 1}, {1, 1, 1}, {0, 1, 0}}
	}
end

local function make_recipe(template, material)
	local recipe = {}
	for i, row in ipairs(template) do
		recipe[i] = {}
		for j, item in ipairs(row) do
			recipe[i][j] = item == 0 and "" or material
		end
	end
	return recipe
end

for material, m in pairs(materials) do
	for part, p in pairs(parts) do
		local name = "technic_armor:"..part.."_"..material
		armor:register_armor(name, {
			description = S("@1 @2", m.name, p.name),
			inventory_image = "technic_armor_inv_"..part.."_"..material..".png",
			groups = {
				["armor_"..p.place] = math.floor(p.level * m.armor),
				armor_heal = m.heal,
				armor_use = m.use,
				armor_radiation = math.floor(p.radlevel * m.radiation)
			}
		})
		minetest.register_craft({
			output = name,
			recipe = make_recipe(p.craft, m.craft_item),
		})
	end
end
]]--
