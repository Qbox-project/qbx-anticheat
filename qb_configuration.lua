qboxAC = {} -- This is the start of the official Qbox AC config file [Pre-Configured by K3YOMI@Github (aka Kiyomi#9081)]

-- How to Configure Properly:
-- Use (true/false) to enable/disable a feature 
-- For Punishments follow this table below:

-- [#]      [Punishment]        [Description]
-- 0        None                No punishment
-- 1        Ban                 Bans the player from the server (uses qbox banning system)
-- 2        Kick                Kicks the player from the server
-- 3        Log                 Logs the actions depending on the log settings configured
-- 4        Punish              Sends the user into a very naughty area
-- Note: You can use multiple punishments by separating them with a comma (,) Example: 1,2,3,4
-- By doing this, the punishments will be executed in the order they are listed in the configuration. If you decided to kick first then log. The player will be kicked then logged.




qboxAC.server_configurations = {  
    server_listing_name = "Qbox Testing Server",                                        -- This is the name that will be displayed on the defferal screen
    server_discord_enabled = true,                                                      -- This will enable the discord link on the server defferal screen
    server_discord_url = "https://discord.gg/0000000",                                  -- This is the discord link that will be displayed on the server defferal screen
    server_join_prerequisites_enabled = {                               
        force_discord = false,                                                          -- This will force the player to link their discord before joining the server
        force_steam = false,                                                            -- This will force the player to link their steam before joining the server
    },                              
    server_standalone = false,                                                          -- This will enable the standalone mode for the server (This will disable the server from connecting to the Qbox functions)                            
}                               

qboxAC.anticheat_whitelist = {                                                          -- Handles the anticheats whitelisting/permission system
    basic_authentication = {                                                            -- Bypasses entity creation events, ptFX events, any more. (Give to a trusted group)
        "ace_permission_here",
        "ace_permission_here",
        "ace_permission_here",
        "ace_permission_here",
    }
    moderation_authentication = {                                                       -- Bypasses all security checks (Give to only people you actually trust) [ROOT ACCESS BASICALLY]
        "ace_permission_here",
        "ace_permission_here",
        "ace_permission_here",
        "ace_permission_here",
    }
}

qboxAC.server_logging_configurations = {                                                -- This is the logging configuration for the server
    enable_debug_logs = true,                                                           -- This will enable debug logs in the server console. (ex. player movement logs) (Inputs into .txt file)
    server_connection_settings = {                              
        server_connection_logs = true,                                                  -- This will enable server connection logs (Discord Endpoint Log)
        server_connection_url = "https://discord.com/api/webhooks/",                    -- This is the discord endpoint url for the server connection logs
    },
    server_detection_settings = {
        server_detection_ogs = true,                                                    -- This will enable server detection logs (Discord Endpoint Log)
        server_detection_url = "https://discord.com/api/webhooks/",                     -- This is the discord endpoint url for the server detection logs
    },
}

qboxAC.vehicle_settings = {
    vehicle_blacklist_detection_settings = {                                            -- This is the vehicle blacklist detection configuration
        is_enabled = true,                                                              -- This will enable the vehicle blacklist detection
        blacklisted_vehicles = {},                                                      -- This is the list of blacklisted vehicles
        punish_settings = {0},                                                          -- This is the punishment settings for the vehicle blacklist detection (should remain at 0 or 3 just in case)
    },
    vehicle_ratelimit_detection_settings = {                                            -- This is the vehicle ratelimit detection configuration
        is_enabled = true,                                                              -- This will enable the vehicle ratelimit detection
        rate_limit_settings = 5,                                                        -- This will set the amount of seconds until you can spawn another vehicle (seconds)
        rate_limit_vehicles = 1,                                                        -- This will set the amount of vehicles you can spawn in the rate limit time (seconds)
        punish_settings = {0},                                                          -- This is the punishment settings for the vehicle ratelimit detection (should remain at 0 just in case)
    },
    vehicle_location_detection_settings = {                                             -- This is the vehicle location detection configuration
        is_enabled = true,                                                              -- This will enable the vehicle location detection
        vehicle_max_distance = 150.0,                                                   -- This will set the max distance a vehicle can be spawned from the player (meters)
        vehicle_min_distance = 0.0,                                                     -- This will set the min distance a vehicle can be spawned from the player (meters)                                                     
        punish_settings = {0},                                                          -- This is the punishment settings for the vehicle location detection (Known to cause false positives, keep at 0)
    },
    vehicle_ramming_detection_settings = {                                              -- This is the vehicle ramming detection configuration
        is_enabled = true,                                                              -- This will enable the vehicle ramming detection
        ramming_max_speed = 150.0,                                                      -- This will set the max speed a vehicle can be ramming at (mph)
        punish_settings = {0},                                                          -- This is the punishment settings for the vehicle ramming detection (should remain at 0 just in case)
    },
    vehicle_driver_settings = {                                                         -- This is the vehicle driver configuration
        is_enabled = true,                                                              -- This will enable the vehicle driver detection
        force_into_driverseat = true,                                                   -- This will force the player into the driver seat of the vehicle
        remove_vehicle_if_no_driver = true,                                             -- This will remove the vehicle if the player is not in the driver seat
        punish_settings = {0},                                                          -- This is the punishment settings for the vehicle driver detection (should remain at 0 just in case)
    },
}


qboxAC.entity_settings = {
    entity_pedestrain_detection_settings = {                                            -- This is the entity pedestrain detection configuration
        is_enabled = true,                                                              -- This will enable the entity pedestrain detection                                   
        whitelist = {},                                                                 -- This is the list of whitelisted pedestrains
        whitelisted_coords_settings = {                                                 -- This is the list of whitelisted pedestrain coordinates
            is_enabled = true,                                                          -- This will enable the entity pedestrain coordinates detection
            whitelisted_coords = {                                                      -- This is the list of whitelisted pedestrain coordinates
                ['examplePlace'] = {['Coords'] = vector3(0.0, 0.0, 0.0), ['Radius'] = 10.0, ['Whitelisted Hashes'] = {}}, 
            },
        },
        punish_settings = {0},                                                          -- This is the punishment settings for the entity pedestrain detection (should remain at 0 just in case)
    },
    entity_object_detection_settings = {                                                -- This is the entity object detection configuration
        is_enabled = true,  
        detectPickups = true,                                                            -- This will enable the entity object detection
        object_whitelist = {},                                                          -- This is the list of whitelisted objects
        bugged_objects = {},                                                            -- This is the list of bugged objects
        object_attachment_detection_settings = {                                        -- This is the entity object attachment detection configuration
            is_enabled = true,                                                          -- This will enable the entity object attachment detection
            already_spawned_attachments = true,                                         -- This will enable the entity object attachment detection for already spawned objects
        },
        whitelisted_coords_settings = {                                                 -- This is the list of whitelisted object coordinates
            is_enabled = true,                                                          -- This will enable the entity object coordinates detection 
            whitelisted_coords = {                                                      -- This is the list of whitelisted object coordinates
                ['examplePlace'] = {['Coords'] = vector3(0.0, 0.0, 0.0), ['Radius'] = 10.0, ['Whitelisted Hashes'] = {}},
            },
        },
        punish_settings = {0},                                                          -- This is the punishment settings for the entity object detection (should remain at 0 just in case)
    },
    entity_particle_detection_settings = {                                              -- This is the entity particle detection configuration
        is_enabled = true,                                                              -- This will enable the entity particle detection                                     
        particle_whitelist = {},                                                        -- This is the list of whitelisted particles
        whitelisted_coords_settings = {                                                 -- This is the list of whitelisted particle coordinates
            is_enabled = true,                                                          -- This will enable the entity particle coordinates detection
            whitelisted_coords = {                                                      -- This is the list of whitelisted particle coordinates
                ['examplePlace'] = {['Coords'] = vector3(0.0, 0.0, 0.0), ['Radius'] = 10.0, ['Whitelisted Hashes'] = {}},
            },
        },
        punish_settings = {0},                                                          -- This is the punishment settings for the entity particle detection (should remain at 0 just in case)
    },
    entity_explosion_detection_settings = {                                             -- This is the entity explosion detection configuration
        is_enabled = true,                                                              -- This will enable the entity explosion detection
        explosion_whitelist = {},                                                       -- This is the list of whitelisted explosions
        whitelisted_coords_settings = {                                                 -- This is the list of whitelisted explosion coordinates
            is_enabled = true,                                                          -- This will enable the entity explosion coordinates detection
            whitelisted_coords = {                                                      -- This is the list of whitelisted explosion coordinates
                ['examplePlace'] = {['Coords'] = vector3(0.0, 0.0, 0.0), ['Radius'] = 10.0, ['Whitelisted Hashes'] = {}},
            },
        },
        punish_settings = {0},                                                          -- This is the punishment settings for the entity explosion detection (should remain at 0 just in case)
    },
    entity_fire_detection_settings = {                                                  -- This is the entity fire detection configuration
        is_enabled = true,                                                              -- This will enable the entity fire detection
        whitelisted_coords_settings = {                                                 -- This is the list of whitelisted fire coordinates                                           
            is_enabled = true,                                                          -- This will enable the entity fire coordinates detection
            whitelisted_coords = {                                                      -- This is the list of whitelisted fire coordinates
                ['examplePlace'] = {['Coords'] = vector3(0.0, 0.0, 0.0), ['Radius'] = 10.0, ['Whitelisted Hashes'] = {}},
            },
        },
        punish_settings = {0},                                                          -- This is the punishment settings for the entity fire detection (should remain at 0 just in case)
    },

}





qboxAC.player_detections = {                                                            -- This is the player detection configuration
    onesync_detection_settings = {                                                      -- This is the onesync detection configuration
        clear_ped_tasks_detection = true,                                               -- This will enable the clear ped tasks detection
        weapon_giving_and_removing_detection = true,                                    -- This will enable the weapon giving and removing detection
        punish_settings = {0},                                                          -- This is the punishment settings for the onesync detection (should remain at 0 just in case)
    },
    weapon_settings = {                                                                 -- This is the weapon configuration
        {weapon_name = "PISTOL",                  hash_id = 453432689,  is_disabled = false, is_logged = false},
        {weapon_name = "PISTOL MK2",              hash_id = 3219281620, is_disabled = false, is_logged = false},
        {weapon_name = "PISTOL .50",              hash_id = 2578377531, is_disabled = false, is_logged = false},
        {weapon_name = "COMBAT PISTOL",           hash_id = 1593441988, is_disabled = false, is_logged = false},
        {weapon_name = "PISTOL SNS",              hash_id = 3218215474, is_disabled = false, is_logged = false},
        {weapon_name = "PISTOL SNS MK2",          hash_id = 2285322324, is_disabled = false, is_logged = false},
        {weapon_name = "PISTOL HEAVY",            hash_id = 3523564046, is_disabled = false, is_logged = false},
        {weapon_name = "PISTOL VINTAGE",          hash_id = 137902532,  is_disabled = false, is_logged = false},
        {weapon_name = "CERAMIC PISTOL",          hash_id = 727643628,  is_disabled = false, is_logged = false},
        {weapon_name = "MARKSMAN PISTOL",         hash_id = 3696079510, is_disabled = false, is_logged = false},
        {weapon_name = "HEAVY REVOLVER",          hash_id = 3249783761, is_disabled = false, is_logged = false},
        {weapon_name = "HEAVY REVOLVER MK2",      hash_id = 3415619887, is_disabled = false, is_logged = false},
        {weapon_name = "DOUBLE ACTION REVOLVER'", hash_id = 2548703416, is_disabled = false, is_logged = false},
        {weapon_name = "NAVY REVOLVER",           hash_id = 2441047180, is_disabled = false, is_logged = false},
        {weapon_name = "PERICO PISTOL",           hash_id = 1470379660, is_disabled = false, is_logged = false},
        {weapon_name = "AP PISTOL",               hash_id = 584646201,  is_disabled = false, is_logged = false},
        {weapon_name = "STUN GUN",                hash_id = 911657153,  is_disabled = false, is_logged = false},
        {weapon_name = "FLARE GUN",               hash_id = 1198879012, is_disabled = false, is_logged = false},
        {weapon_name = "ALIEN WEAPON",            hash_id = 2939590305, is_disabled = true,  is_logged = false},
        ------- SMGS ------
        {weapon_name = "MG",                      hash_id = 2634544996, is_disabled = true,  is_logged = true},
        {weapon_name = "COMABT MG",               hash_id = 2144741730, is_disabled = true,  is_logged = true},
        {weapon_name = "COMBAT MG MK2",           hash_id = 3686625920, is_disabled = true,  is_logged = true},
        {weapon_name = "UNHOLY ALIEN WEAPON",     hash_id = 1198256469, is_disabled = true,  is_logged = true},
        {weapon_name = "MICRO SMG",               hash_id = 324215364,  is_disabled = false, is_logged = false},
        {weapon_name = "MACHINE PISTOL",          hash_id = 3675956304, is_disabled = false, is_logged = false},
        {weapon_name = "MINI SMG",                hash_id = 3173288789, is_disabled = false, is_logged = false},
        {weapon_name = "SMG",                     hash_id = 736523883,  is_disabled = false, is_logged = false},
        {weapon_name = "SMG MK2",                 hash_id = 2024373456, is_disabled = false, is_logged = false},
        {weapon_name = "ASSAULT SMG",             hash_id = 4024951519, is_disabled = false, is_logged = false},
        {weapon_name = "COMBAT PDW",              hash_id = 171789620,  is_disabled = false, is_logged = false},
        {weapon_name = "GUNSBERG SWEEPER",        hash_id = 1627465347, is_disabled = false, is_logged = false},
        ------- ARS ------
        {weapon_name = "ASSAULT RIFLE",           hash_id = 3220176749, is_disabled = false, is_logged = false},
        {weapon_name = "ASSAULT RIFLE MK2",       hash_id = 961495388,  is_disabled = false, is_logged = false},
        {weapon_name = "CARBINE RIFLE",           hash_id = 2210333304, is_disabled = false, is_logged = false},
        {weapon_name = "CARBINE RIFLE MK2",       hash_id = 4208062921, is_disabled = false, is_logged = false},
        {weapon_name = "ADAVANCED RIFLE",         hash_id = 2937143193, is_disabled = false, is_logged = false},
        {weapon_name = "SPECIAL CARBINE",         hash_id = 3231910285, is_disabled = false, is_logged = false},
        {weapon_name = "SPECIAL CARBINE MK2",     hash_id = 2526821735, is_disabled = false, is_logged = false},
        {weapon_name = "BULLPUP RIFLE",           hash_id = 2132975508, is_disabled = false, is_logged = false},
        {weapon_name = "BULLPUP RIFLE MK2",       hash_id = 2228681469, is_disabled = false, is_logged = false},
        {weapon_name = "COMPACT RIFLE",           hash_id = 1649403952, is_disabled = false, is_logged = false},
        {weapon_name = "SNIPER RIFLE",            hash_id = 100416529,  is_disabled = false, is_logged = false},
        {weapon_name = "Military Rifle",          hash_id = 2636060646, is_disabled = false, is_logged = false},
        {weapon_name = "HEAVY SNIPER RIFLE",      hash_id = 205991906,  is_disabled = false, is_logged = false},
        {weapon_name = "HEAVY SNIPER RIFLE MK2",  hash_id = 177293209,  is_disabled = false, is_logged = false},
        {weapon_name = "MARKSMAN RIFLE",          hash_id = 3342088282, is_disabled = false, is_logged = false},
        {weapon_name = "MARKSMAN RIFLE MK2",      hash_id = 1785463520, is_disabled = false, is_logged = false},
        ---- MELEE
        {weapon_name = "FISTS",                   hash_id = 2725352035, is_disabled = false, is_logged = false},
        {weapon_name = "KNIFE",                   hash_id = 2578778090, is_disabled = false, is_logged = false},
        {weapon_name = "BATON",                   hash_id = 1737195953, is_disabled = false, is_logged = false},
        {weapon_name = "HAMMER",                  hash_id = 1317494643, is_disabled = false, is_logged = false},
        {weapon_name = "BASEBALL BAT",            hash_id = 2508868239, is_disabled = false, is_logged = false},
        {weapon_name = "CROWBAR",                 hash_id = 2227010557, is_disabled = false, is_logged = false},
        {weapon_name = "GOLF CLUB",               hash_id = 1141786504, is_disabled = false, is_logged = false},
        {weapon_name = "BROKEN BOTTLE",           hash_id = 4192643659, is_disabled = false, is_logged = false},
        {weapon_name = "DAGGER",                  hash_id = 2460120199, is_disabled = false, is_logged = false},
        {weapon_name = "HATCHET",                 hash_id = 4191993645, is_disabled = false, is_logged = false},
        {weapon_name = "KNUCLE DUSTERS",          hash_id = 3638508604, is_disabled = false, is_logged = false},
        {weapon_name = "MACHETE",                 hash_id = 3713923289, is_disabled = false, is_logged = false},
        {weapon_name = "FLASH LIGHT",             hash_id = 2343591895, is_disabled = false, is_logged = false},
        {weapon_name = "SWITCH BLADE",            hash_id = 3756226112, is_disabled = false, is_logged = false},
        {weapon_name = "BATTLE AXE",              hash_id = 3441901897, is_disabled = false, is_logged = false},
        {weapon_name = "POOL CUE",                hash_id = 2484171525, is_disabled = false, is_logged = false},
        {weapon_name = "WRENCH",                  hash_id = 419712736,  is_disabled = false, is_logged = false},
        {weapon_name = "STONE AXE",               hash_id = 940833800,  is_disabled = false, is_logged = false},
        -- SHOTGUNS
        {weapon_name = "SHOTGUN",                 hash_id = 487013001,  is_disabled = false, is_logged = false},
        {weapon_name = "SHOTGUN MK2",             hash_id = 1432025498, is_disabled = false, is_logged = false},
        {weapon_name = "SAWED OFF",               hash_id = 2017895192, is_disabled = false, is_logged = false},
        {weapon_name = "BULLPUP",                 hash_id = 2640438543, is_disabled = false, is_logged = false},
        {weapon_name = "MUSKET",                  hash_id = 2828843422, is_disabled = false, is_logged = false},
        {weapon_name = "DOUBLE SHOTGUN",          hash_id = 4019527611, is_disabled = false, is_logged = false},
        {weapon_name = "COMBAT SHOTGUN",          hash_id = 94989220,   is_disabled = false, is_logged = false},
        {weapon_name = "ASSAULT SHOTGUN",         hash_id = 3800352039, is_disabled = true,  is_logged = true},
        {weapon_name = "HEAVY SHOTGUN",           hash_id = 984333226,  is_disabled = true,  is_logged = true},
        {weapon_name = "SWEEPER SHOTGUN",         hash_id = 317205821,  is_disabled = true,  is_logged = true},
        -- THROWABLES  
        {weapon_name = "SNOWBALLS",               hash_id = 126349499,  is_disabled = false, is_logged = false},
        {weapon_name = "GRENADE",                 hash_id = 2481070269, is_disabled = true,  is_logged = false},
        {weapon_name = "STICKY BOMB",             hash_id = 741814745,  is_disabled = true,  is_logged = true},
        {weapon_name = "PROXY MINE",              hash_id = 2874559379, is_disabled = true,  is_logged = true},
        {weapon_name = "PIPE BOMB",               hash_id = 3125143736, is_disabled = true,  is_logged = true},
        -- HUGE WEAPONS
        {weapon_name = "RPG",                     hash_id = 2982836145, is_disabled = true,  is_logged = true},   
        {weapon_name = "MINIGUN",                 hash_id = 1119849093, is_disabled = true,  is_logged = true},
        {weapon_name = "FIREWORK LAUNCHER",       hash_id = 2138347493, is_disabled = true,  is_logged = true},
        {weapon_name = "RAILGUN",                 hash_id = 1834241177, is_disabled = true,  is_logged = true},
        {weapon_name = "HOMING LAUNCHER",         hash_id = 1672152130, is_disabled = true,  is_logged = true},
        {weapon_name = "GRENADE HANDGUN",         hash_id = 125959754,  is_disabled = true,  is_logged = true},
        {weapon_name = "DILDO MINIGUN",           hash_id = 3056410471, is_disabled = true,  is_logged = true},
        {weapon_name = "GRENADE LAUNCHER",        hash_id = 2726580491, is_disabled = true,  is_logged = true},
        -- ETC 
        {weapon_name = "EXPLOSION ROUNDS",        hash_id = 539292904,  is_disabled = true,  is_logged = true},
        {weapon_name = "BITE",                    hash_id = 4194021054, is_disabled = false, is_logged = false},
        {weapon_name = "BITE_2",                  hash_id = 3146768957, is_disabled = false, is_logged = false},
        {weapon_name = "BITE_3",                  hash_id = 3854032506, is_disabled = false, is_logged = false},
        {weapon_name = "MTN LION",                hash_id = 148160082,  is_disabled = false, is_logged = false},
        {weapon_name = "MTN LION",                hash_id = 148160081,  is_disabled = false, is_logged = false},
        {weapon_name = "Deer",                    hash_id = 4106648222, is_disabled = false, is_logged = false},
        {weapon_name = "Vehicle Explosion",       hash_id = 133987706,  is_disabled = false, is_logged = false},
        {weapon_name = "Vehicle Explosion 2",     hash_id = 3750660587, is_disabled = false, is_logged = false},
        {weapon_name = "Vehicle Kick",            hash_id = 600439132,  is_disabled = false, is_logged = false},
        {weapon_name = "Pig Bite",                hash_id = 1205296881, is_disabled = false, is_logged = false},
        {weapon_name = "Pig Bite2",               hash_id = 861723357,  is_disabled = false, is_logged = false},
        {weapon_name = "Dog Bite2",               hash_id = 1161062353, is_disabled = false, is_logged = false},
    },
}
