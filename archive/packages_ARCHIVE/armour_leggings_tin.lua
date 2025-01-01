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

--[[
local materials = {}

if minetest.get_modpath("default") then
	materials.tin = {
		name = S("Tin"),
		craft_item = "default:tin_ingot",
		armor = 1.6,
		heal = 0,
		use = 750,
		radiation = 37
	}
end

local parts = {
	leggings = {
		name = S("Leggings"),
		place = "legs",
		level = 7,
		radlevel = 0.15,
		craft = {{1, 1, 1}, {1, 0, 1}, {1, 0, 1}}
	},
}

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
