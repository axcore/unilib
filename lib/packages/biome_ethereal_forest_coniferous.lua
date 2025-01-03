---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

unilib.pkg.biome_ethereal_forest_coniferous = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.ethereal.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.biome_ethereal_forest_coniferous.init()

    return {
        description = "Coniferous forest biome",
        depends = {
            "dirt_ordinary",
            "liquid_lava_ordinary",
            "liquid_water_ordinary",
            "sand_ordinary",
            "stone_ordinary",
        },
    }

end

function unilib.pkg.biome_ethereal_forest_coniferous.post()

    unilib.register_biome({
        -- From ethereal-ng/biomes.lua, "coniferous_forest" biome
        name = "ethereal_forest_coniferous",
        description = unilib.utils.brackets(S("Coniferous forest biome"), "ethereal"),
        node_top = "unilib:dirt_ordinary_with_litter_coniferous",
        depth_top = 1,
        node_filler = "unilib:dirt_ordinary",
        depth_filler = 2,
        node_riverbed = "unilib:sand_ordinary",
        depth_riverbed = 2,
        node_dungeon = "unilib:stone_ordinary_cobble",
        node_dungeon_alt = "unilib:stone_ordinary_cobble_mossy",
        node_dungeon_stair = unilib.stairs.convert_simple("unilib:stone_ordinary_cobble"),
        y_max = 140,
        y_min = 6,
        vertical_blend = 1,
        heat_point = 45,
        humidity_point = 70,
    })

    unilib.register_biome({
        -- From ethereal-ng/biomes.lua, "coniferous_forest_dunes" biome
        name = "ethereal_forest_coniferous_dunes",
        description = unilib.utils.brackets(S("Coniferous forest dunes biome"), "ethereal"),
        node_top = "unilib:sand_ordinary",
        depth_top = 1,
        node_filler = "unilib:sand_ordinary",
        depth_filler = 3,
        node_riverbed = "unilib:sand_ordinary",
        depth_riverbed = 2,
        node_dungeon = "unilib:stone_ordinary_cobble",
        node_dungeon_alt = "unilib:stone_ordinary_cobble_mossy",
        node_dungeon_stair = unilib.stairs.convert_simple("unilib:stone_ordinary_cobble"),
        y_max = 5,
        y_min = 4,
        vertical_blend = 1,
        heat_point = 45,
        humidity_point = 70,
    })

    unilib.register_biome({
        -- From ethereal-ng/biomes.lua, "coniferous_forest_ocean" biome
        name = "ethereal_forest_coniferous_ocean",
        description = unilib.utils.brackets(S("Coniferous forest ocean biome"), "ethereal"),
        node_top = "unilib:sand_ordinary",
        depth_top = 1,
        node_filler = "unilib:sand_ordinary",
        depth_filler = 2,
        node_riverbed = "unilib:sand_ordinary",
        depth_riverbed = 2,
        node_dungeon = "unilib:stone_ordinary_cobble",
        node_dungeon_alt = "unilib:stone_ordinary_cobble_mossy",
        node_dungeon_stair = unilib.stairs.convert_simple("unilib:stone_ordinary_cobble"),
        y_max = 3,
        y_min = -255,
        heat_point = 45,
        humidity_point = 70,
    })

    unilib.register_biome({
        -- From ethereal-ng/biomes.lua, "coniferous_forest_under" biome
        name = "ethereal_forest_coniferous_under",
        description = unilib.utils.brackets(S("Coniferous forest underground biome"), "ethereal"),
        node_cave_liquid = {
            "unilib:liquid_water_ordinary_source", "unilib:liquid_lava_ordinary_source",
        },
        node_dungeon = "unilib:stone_ordinary_cobble",
        node_dungeon_alt = "unilib:stone_ordinary_cobble_mossy",
        node_dungeon_stair = unilib.stairs.convert_simple("unilib:stone_ordinary_cobble"),
        y_max = -256,
        y_min = unilib.constant.y_min,
        heat_point = 45,
        humidity_point = 70,
    })

end
