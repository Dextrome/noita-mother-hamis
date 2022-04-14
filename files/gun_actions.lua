table.insert( actions,
{
    id          = "SUMMON_MOTHER_HAMIS",
    name 		= "Summon Mother Hämis",
    description = "Summon Mother Hämis",
    sprite 		= "data/ui_gfx/gun_actions/friend_fly.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/spiral_shot_unidentified.png",
    related_projectiles	= {"data/entities/projectiles/deck/friend_fly.xml"},
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "4,5,6", -- SPIRAL_SHOT
    spawn_probability                 = "0.2,0.5,0.5", -- SPIRAL_SHOT
    price = 160,
    mana = 120,
    action 		= function()
        local h = "mods/dextrome_mother_hamis/files/animals/mother_longleg.xml"
        local entity_id = GetUpdatedEntityID()
        local x, y = EntityGetTransform( entity_id )
        local eid = EntityLoad( h, x, y)

        local herd_id
        local players = EntityGetWithTag( "player_unit" )
        if ( #players > 0 ) then
            local p = players[1]

            edit_component( p, "GenomeDataComponent", function(comp,vars)
                herd_id = ComponentGetValue2( comp, "herd_id" )
            end)
        end

        local charm_component = GetGameEffectLoadTo( eid, "CHARM", true )
        if( charm_component ~= nil ) then
            if (charm_component ~= 0 ) then

                ComponentSetValue( charm_component, "frames", -1 )
            end
        end

        -- so that hatched enemies don't drop gold
        local lua_components = EntityGetComponent( eid, "LuaComponent")
        if( lua_components ~= nil ) then
            for i,lua_comp in ipairs(lua_components) do
                if( ComponentGetValue( lua_comp, "script_death") == "data/scripts/items/drop_money.lua" ) then
                    -- this crashes the game, so let's just set this to NULL
                    -- EntityRemoveComponent( eid, lua_comp )
                    ComponentSetValue( lua_comp, "script_death", "" )
                end
            end
        end

        local damagemodels = EntityGetComponent( eid, "DamageModelComponent" )
        if( damagemodels ~= nil ) then
            for i,damagemodel in ipairs(damagemodels) do
                local max_hp = tonumber( ComponentGetValue( damagemodel, "max_hp" ) )
                    max_hp = max_hp * 4.0

                ComponentSetValue( damagemodel, "max_hp", max_hp )
                ComponentSetValue( damagemodel, "hp", max_hp )
            end
        end

        if ( herd_id ~= nil ) then
            edit_component( eid, "GenomeDataComponent", function(comp,vars)
                ComponentSetValue2( comp, "herd_id", herd_id )
            end)
        end
    end,
} )