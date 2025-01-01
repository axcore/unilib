---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    plantlife/woodsoils
-- Code:    LGPL 3.0
-- Media:   CC-by-SA 4.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("woodsoils:dirt_with_leaves_1", {
    description = S("Forest Soil 1"),
    tiles = {
        "default_dirt.png^woodsoils_ground_cover.png",
        "default_dirt.png",
        "default_dirt.png^woodsoils_ground_cover_side.png"},
    is_ground_content = true,
    groups = {
        crumbly=3,
        soil=1--,
        --not_in_creative_inventory=1
    },
    drop = 'default:dirt',
    sounds = default.node_sound_dirt_defaults({
        footstep = {name="default_grass_footstep", gain=0.4},
    }),
    soil = {
        base = "woodsoils:dirt_with_leaves_1",
        dry = "farming:soil",
        wet = "farming:soil_wet"
    }
})

minetest.register_node("woodsoils:dirt_with_leaves_2", {
    description = S("Forest Soil 2"),
    tiles = {
        "woodsoils_ground.png",
        "default_dirt.png",
        "default_dirt.png^woodsoils_ground_side.png"},
    is_ground_content = true,
    groups = {
        crumbly=3,
        soil=1--,
        --not_in_creative_inventory=1
    },
    drop = 'default:dirt',
    sounds = default.node_sound_dirt_defaults({
        footstep = {name="default_grass_footstep", gain=0.4},
    }),
    soil = {
        base = "woodsoils:dirt_with_leaves_2",
        dry = "farming:soil",
        wet = "farming:soil_wet"
    }
})

minetest.register_node("woodsoils:grass_with_leaves_1", {
    description = S("Forest Soil 3"),
    tiles = {
        "default_grass.png^woodsoils_ground_cover2.png",
        "default_dirt.png",
        "default_dirt.png^default_grass_side.png^woodsoils_ground_cover_side2.png"},
    is_ground_content = true,
    groups = {
        crumbly=3,
        soil=1--,
        --not_in_creative_inventory=1
    },
    drop = 'default:dirt',
    sounds = default.node_sound_dirt_defaults({
        footstep = {name="default_grass_footstep", gain=0.4},
    }),
    soil = {
        base = "woodsoils:grass_with_leaves_1",
        dry = "farming:soil",
        wet = "farming:soil_wet"
    }
})

minetest.register_node("woodsoils:grass_with_leaves_2", {
    description = S("Forest Soil 4"),
    tiles = {
        "default_grass.png^woodsoils_ground_cover.png",
        "default_dirt.png",
        "default_dirt.png^default_grass_side.png^woodsoils_ground_cover_side.png"},
    is_ground_content = true,
    groups = {
        crumbly=3,
        soil=1--,
        --not_in_creative_inventory=1
    },
    drop = 'default:dirt',
    sounds = default.node_sound_dirt_defaults({
        footstep = {name="default_grass_footstep", gain=0.4},
    }),
    soil = {
        base = "woodsoils:grass_with_leaves_2",
        dry = "farming:soil",
        wet = "farming:soil_wet"
    }
})

if mod_woodsoils then
	sickles.register_cuttable("woodsoils:grass_with_leaves_1", "default:dirt", "default:dry_grass_1")
	sickles.register_cuttable("woodsoils:grass_with_leaves_2", "default:dirt", "default:dry_grass_1")
	sickles.register_cuttable("woodsoils:grass_with_leaves_1", "default:dirt", "default:grass_1")
	sickles.register_cuttable("woodsoils:grass_with_leaves_2", "default:dirt", "default:grass_1")
end
]]--
