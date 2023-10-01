---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    abriglass
-- Code:    MIT
-- Media:   CC BY-SA 4.0
---------------------------------------------------------------------------------------------------

unilib.pkg.glass_ornamental_blue = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.abriglass.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.glass_ornamental_blue.init()

    return {
        description = "Blue ornamental glass",
        depends = {"glass_artisanal_basic", "glass_artisanal_clear"},
    }

end

function unilib.pkg.glass_ornamental_blue.exec()

    local c_clear = "unilib:glass_artisanal_clear"
    local c_glass_yellow = "unilib:glass_artisanal_dyed_yellow"
    local c_glass_blue = "unilib:glass_artisanal_dyed_blue"

    unilib.register_node(
        -- From abriglass:stainedglass_pattern01
        "unilib:glass_ornamental_blue",
        "abriglass:stainedglass_pattern01",
        mode,
        {
            description = unilib.brackets(S("Ornamental Glass"), S("Blue")),
            tiles = {"unilib_glass_ornamental_blue.png"},
            groups = {cracky = 3},
            sounds = unilib.sound_table.glass,

            drawtype = "glasslike",
            light_source = 5,
            paramtype = "light",
            paramtype2 = "facedir",
            sunlight_propagates = true,
            use_texture_alpha = "blend",
        }
    )
    -- N.B. Changed the original craft recipe so it makes a little more sense
    unilib.register_craft({
        -- From abriglass:stainedglass_pattern01
        output = "unilib:glass_ornamental_blue 9",
        recipe = {
            {c_glass_yellow, c_glass_yellow, c_glass_yellow},
            {c_glass_yellow, c_glass_blue, c_glass_yellow},
            {c_glass_yellow, c_glass_yellow, c_glass_yellow},
        },
    })
    unilib.register_craft({
        -- From abriglass:stainedglass_pattern01
        type = "cooking",
        output = c_clear,
        recipe = "unilib:glass_ornamental_blue",
    })

end
