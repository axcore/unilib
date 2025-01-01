---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    moreores
-- Code:    zlib
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
	silver = {
		description = "Silver",
		makes = {ore = true, block = true, lump = true, ingot = true, chest = true},
		oredef = {
			clust_scarcity = moreores.silver_chunk_size ^ 3,
			clust_num_ores = moreores.silver_ore_per_chunk,
			clust_size = moreores.silver_chunk_size,
			y_min = moreores.silver_min_depth,
			y_max = moreores.silver_max_depth,
		},
		tools = {
			pick = {
				groupcaps = {
					cracky = {times = {[1] = 2.60, [2] = 1.00, [3] = 0.60}, uses = 100, maxlevel = 1},
				},
				damage_groups = {fleshy = 4},
			},
			hoe = {
				max_uses = 300,
			},
			shovel = {
				groupcaps = {
					crumbly = {times = {[1] = 1.10, [2] = 0.40, [3] = 0.25}, uses = 100, maxlevel = 1},
				},
				damage_groups = {fleshy = 3},
			},
			axe = {
				groupcaps = {
					choppy = {times = {[1] = 2.50, [2] = 0.80, [3] = 0.50}, uses = 100, maxlevel = 1},
					fleshy = {times = {[2] = 1.10, [3] = 0.60}, uses = 100, maxlevel = 1},
				},
				damage_groups = {fleshy = 5},
			},
			sword = {
				groupcaps = {
					fleshy = {times = {[2] = 0.70, [3] = 0.30}, uses = 100, maxlevel = 1},
					snappy = {times = {[1] = 1.70, [2] = 0.70, [3] = 0.30}, uses = 100, maxlevel = 1},
					choppy = {times = {[3] = 0.80}, uses = 100, maxlevel = 0},
				},
				damage_groups = {fleshy = 6},
			},
		},
		full_punch_interval = 1.0,
	},
}

register_dust("Silver",          "moreores:silver_ingot")

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
