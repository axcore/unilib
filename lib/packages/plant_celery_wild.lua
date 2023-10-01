---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    cropocalypse
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

unilib.pkg.plant_celery_wild = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.cropocalypse.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.plant_celery_wild.init()

    return {
        description = "Wild celery plant",
        notes = "Does not produce celery",
        optional = "dye_basic",
    }

end

function unilib.pkg.plant_celery_wild.exec()

    unilib.register_node("unilib:plant_celery_wild", "cropocalypse:wild_celery", mode, {
        -- From cropocalypse:wild_celery
        description = unilib.annotate(S("Wild Celery"), "Apium graveolens"),
        tiles = {"unilib_plant_celery_wild.png"},
        -- N.B. flora = 1 not in original code
        groups = {attached_node = 1, decorative_plants = 1, flammable = 1, flora = 1, snappy = 3},
        sounds = unilib.sound_table.leaves,

        buildable_to = true,
        drawtype = "plantlike",
        inventory_image = "unilib_plant_celery_wild.png",
        paramtype = "light",
        selection_box = {
            type = "fixed",
            fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, -1 / 16, 4 / 16},
        },
        sunlight_propagates = true,
        walkable = false,
        waving = 1,
        wield_image = "unilib_plant_celery_wild.png",
    })
    if unilib.pkg_executed_table["dye_basic"] ~= nil then

        unilib.register_craft({
            -- From cropocalypse:wild_celery
            output = "unilib:dye_green 2",
            recipe = {
                {"unilib:plant_celery_wild"},
            },
        })

    end
    unilib.register_plant_in_pot("unilib:plant_celery_wild", "cropocalypse:wild_celery")

    unilib.register_decoration("cropocalypse_plant_celery_wild", {
        -- From cropocalypse/decorative_plants.lua
        deco_type = "simple",
        decoration = "unilib:plant_celery_wild",

        noise_params = {
            octaves = 3,
            offset = -0.1,
            persist = 0.7,
            scale = 0.1,
            seed = 2947,
            spread = {x = 10, y = 10, z = 10},
        },
        sidelen = 16,
    })

end
