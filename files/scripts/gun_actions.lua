table.insert( actions,
{
    id          = "SUMMON_MOTHER_HAMIS",
    name 		= "Summon Mother Hämis",
    description = "Summon Mother Hämis",
    sprite 		= "data/ui_gfx/gun_actions/friend_fly.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/spiral_shot_unidentified.png",
    related_projectiles	= {"mods/dextrome_mother_hamis/files/projectiles/summon_mother_hamis.xml"},
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "4,5,6", -- SPIRAL_SHOT
    spawn_probability                 = "0.2,0.5,0.5", -- SPIRAL_SHOT
    price = 500,
    mana = 50,
    action 		= function()
        add_projectile("mods/dextrome_mother_hamis/files/projectiles/summon_mother_hamis.xml")
    end,
} )