---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    xocean
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

unilib.pkg.coral_block_horn = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.xocean.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.coral_block_horn.init()

    return {
        description = "Horn coral block",
    }

end

function unilib.pkg.coral_block_horn.exec()

    unilib.register_node("unilib:coral_block_horn", nil, mode, {
        -- From xocean, default:coral_brown
        description = S("Horn Coral Block"),
        tiles = {"unilib_coral_block_horn.png"},
        -- N.B. No coral = 1 in original code
        groups = {coral = 1, cracky = 3},
        sounds = unilib.global.sound_table.stone,

        drop = "unilib:coral_block_horn_skeleton",
    })

    unilib.register_node("unilib:coral_block_horn_skeleton", nil, mode, {
        -- From xocean, default:coral_skeleton
        description = S("Horn Coral Block Skeleton"),
        tiles = {"unilib_coral_block_horn_skeleton.png"},
        -- N.B. No coral = 1 in original code
        groups = {coral = 1, cracky = 3},
        sounds = unilib.global.sound_table.stone,
    })

end
