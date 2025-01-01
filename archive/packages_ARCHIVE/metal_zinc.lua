---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    technic/technic_worldgen
-- Code:    LGPL 2.0
-- Media:   unknown
--
-- From:    technic
-- Code:    LGPL 2.0
-- Media:   unknown
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_craftitem(":technic:zinc_lump", {
	description = S("Zinc Lump"),
	inventory_image = "technic_zinc_lump.png",
})

local recipes = {
	{"technic:zinc_lump",          "technic:zinc_dust 2"},
}
for _, data in pairs(recipes) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2]})
end
register_dust("Zinc",            "technic:zinc_ingot")

minetest.register_craftitem(":technic:zinc_ingot", {
	description = S("Zinc Ingot"),
	inventory_image = "technic_zinc_ingot.png",
})
minetest.register_craft({
	type = 'cooking',
	recipe = "technic:zinc_lump",
	output = "technic:zinc_ingot",
})

minetest.register_node(":technic:zinc_block", {
	description = S("Zinc Block"),
	tiles = { "technic_zinc_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults()
})
register_block("technic:zinc_block", "technic:zinc_ingot")

lib_materials:liquid_metal_copper_source
{
    light_source = 8,
    groups = {
        metal = 1,
        liquid = 3,
        igniter = 1,
    },
    drawtype = "liquid",
    sounds = {
    },
    liquid_alternative_flowing = "lib_materials:fluid_copper_flowing",
    damage_per_second = 6,
    paramtype = "light",
    description = "Copper Source",
    tiles = {
        [1] = {
            backface_culling = false,
            name = "lib_materials_fluid_copper_source_animated.png",
            animation = {
                type = "vertical_frames",
                length = 3,
                aspect_h = 16,
                aspect_w = 16,
            },
        },
        [2] = {
            backface_culling = true,
            name = "lib_materials_fluid_copper_source_animated.png",
            animation = {
                type = "vertical_frames",
                length = 3,
                aspect_h = 16,
                aspect_w = 16,
            },
        },
    },
    liquid_renewable = false,
    diggable = false,
    liquid_alternative_source = "lib_materials:fluid_copper_source",
    liquid_viscosity = 1,
    pointable = false,
    walkable = false,
    buildable_to = true,
    liquidtype = "source",
}

lib_materials:liquid_metal_copper_flowing
{
    light_source = 8,
    buildable_to = true,
    drawtype = "flowingliquid",
    sounds = {
    },
    liquid_alternative_flowing = "lib_materials:fluid_copper_flowing",
    damage_per_second = 6,
    paramtype = "light",
    description = "Copper Flowing",
    tiles = {
        [1] = "lib_materials_fluid_copper_source.png",
    },
    special_tiles = {
        [1] = {
            backface_culling = false,
            name = "lib_materials_fluid_copper_flowing_animated.png",
            animation = {
                type = "vertical_frames",
                length = 3.3,
                aspect_h = 16,
                aspect_w = 16,
            },
        },
        [2] = {
            backface_culling = true,
            name = "lib_materials_fluid_copper_flowing_animated.png",
            animation = {
                type = "vertical_frames",
                length = 3.3,
                aspect_h = 16,
                aspect_w = 16,
            },
        },
    },
    liquidtype = "flowing",
    diggable = false,
    liquid_alternative_source = "lib_materials:fluid_copper_source",
    liquid_viscosity = 1,
    liquid_renewable = false,
    paramtype2 = "flowingliquid",
    pointable = false,
    walkable = false,
    groups = {
        metal = 1,
        not_in_creative_inventory = 1,
        liquid = 3,
        igniter = 1,
    },
}
]]--
