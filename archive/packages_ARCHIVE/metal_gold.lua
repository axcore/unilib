---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    default
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
--
-- From:    technic
-- Code:    LGPL 2.0
-- Media:   unknown
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_craftitem("default:gold_lump", {
	description = S("Gold Lump"),
	inventory_image = "default_gold_lump.png"
})

local recipes = {
	{"default:gold_lump",          "technic:gold_dust 2"},
}
for _, data in pairs(recipes) do
	technic.register_grinder_recipe({input = {data[1]}, output = data[2]})
end
register_dust("Gold",            "default:gold_ingot")

minetest.register_craftitem("default:gold_ingot", {
	description = S("Gold Ingot"),
	inventory_image = "default_gold_ingot.png"
})
minetest.register_craft({
	type = "cooking",
	output = "default:gold_ingot",
	recipe = "default:gold_lump",
})
minetest.register_craft({
	output = "default:gold_ingot 9",
	recipe = {
		{"default:goldblock"},
	}
})

minetest.register_node("default:goldblock", {
	description = S("Gold Block"),
	tiles = {"default_gold_block.png"},
	is_ground_content = false,
	groups = {cracky = 1},
	sounds = default.node_sound_metal_defaults(),
})
minetest.register_craft({
	output = "default:goldblock",
	recipe = {
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
		{"default:gold_ingot", "default:gold_ingot", "default:gold_ingot"},
	}
})
my_register_stair_and_slab(
	"goldblock",
	"default:goldblock",
	{cracky = 1},
	{"default_gold_block.png"},
	"Gold Block Stair",
	"Gold Block Slab",
	default.node_sound_metal_defaults(),
	true
)

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
