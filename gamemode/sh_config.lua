-------- CONFIG --------

Config = {
	["DebugLogging"] = true, -- Save debug logs once per every while?
-- Logs will be found found in garrysmod/data/theeternalapocalypse/logs and can be sent to the developer to find and fix bugs in the gamemode
-- NOTE: Also Logs who uses admin commands, will add separate logging system in future


	["Currency"] = "Dollar",	-- the 's' is added onto strings where needed, for example if you put the currency as "Dollar" it will come out as "Dollars" as needed

	["RookieLevel"] = 10,	-- people who are this level or below are considered Rookies
	["RookieWeapon"] = "weapon_zw_noobcannon",	-- what gun to give to players if they are under the Rookie level and if they lost their previous one
	["StartMoney"] = 500,	-- How much money should new players have?

	["ZombieSpawnRate"] = 14,	-- fresh zombies will be spawned in every x seconds
	["BossSpawnRate"] = 3150,	-- how fast the boss spawn timer will be run in seconds (3600 seconds = 1 hour). Keep in mind that if there is less than 2 players online then the boss will never spawn unless summoned by tea_admin_spawnboss
	["AirdropSpawnRate"] = 4000,	-- same as boss spawn rate but for airdrops except required amount of players for an airdrop to spawn is 5 or more

	["MaxCarryWeight"] = 36.72,	-- how much carry weight should we have by default (in kg)
	["VaultSize"] = 175, --	vault size in kg

	["WalkSpeed"] = 135,	--	remember that the speed skill increases your walk speed by 3.5 for each level, so at 200 walkspeed players can reach a possible maximum of 235 sprint speed
	["RunSpeed"] = 260,	--	speed skill increases your running speed by 7 per skill level, so if default is 300, players can reach max of 370 run speed
	["FileSystem"] = "Legacy" --	set to Legacy or PData
-- legacy saves player data as text files under garrysmod/data/theeternalapocalypse/profiles/(players steamid)/
-- Pdata saves their data to the servers sql file (garrysmod/sv.db)
-- Use the pdata system if you are having issues with text file saving/loading or if you prefer everything to be in the sql file.
-- No there isn't support for MySQL and there proably won't be unless you code it yourself.

-- Excluded due to feature of convars
--Config["MaxCaches"] = 10 --	how many loot caches can exist in the map at any given time?
--Config["MaxProps"] = 60
--Config["FactionCost"] = 1000	-- do you want faction making to cost money?
--Config["VoluntaryPVP"] = true	-- Is PvP voluntary? Set to false to always force pvp, useful on gigantic maps like rp_stalker or if you just enjoy a more day-z ish experience
}

GM.MaxLevel = 50
GM.LevelsPerPrestige = 5
GM.MaxZombies = 45

-----------------------------ZOMBIE CLASSES-----------------------------

Config["ZombieClasses"] = {
	["npc_ate_basic"] = {		-- table name must be the entclass name of the zombie, see garrysmod/gamemodes/theeternalapocalypse/entities for entclasses (or you can add other zombie types by yourself)
		["SpawnChance"] = 67,	-- spawn chance in %, be careful as the spawn chance of all your zombies totalled up must not exceed 100% (there is a helper function that will tell you if this has happened or how much the current total spawn chance for zombies is)
		["XPReward"] = 48,		-- average xp reward for killing this zombie, varies with the VaryRewards setting above
		["MoneyReward"] = 22,	-- average money reward for killing this zombie, varies with the VaryRewards setting above
	},

	["npc_ate_leaper"] = {
		["SpawnChance"] = 18.75,
		["XPReward"] = 55,
		["MoneyReward"] = 30,
	},

	["npc_ate_wraith"] = {
		["SpawnChance"] = 5,
		["XPReward"] = 80,
		["MoneyReward"] = 45,
	},

	["npc_ate_tank"] = {
		["SpawnChance"] = 4,
		["XPReward"] = 220,
		["MoneyReward"] = 90,
	},

	["npc_ate_puker"] = {
		["SpawnChance"] = 2.25,
		["XPReward"] = 240,
		["MoneyReward"] = 105,
	},

	["npc_ate_lord"] = {
		["SpawnChance"] = 1.5,
		["XPReward"] = 430,
		["MoneyReward"] = 310,
	},

	["npc_ate_tormented_wraith"] = {
		["SpawnChance"] = 1.25,
		["XPReward"] = 185,
		["MoneyReward"] = 150,
	},

	["npc_ate_superlord"] = {
		["SpawnChance"] = 0.25,
		["XPReward"] = 850,
		["MoneyReward"] = 700,
	},

}

-----------------------------BOSS CLASSES-----------------------------

-- Error with non-tyrant boss entity is fixed. Feel free to now add any new non-tyrant boss you like.
Config["BossClasses"] = {
	["npc_nextbot_boss_tyrant"] = {
		["SpawnChance"] = 100,
		["XPReward"] = 5000, -- remember that xp and money for bosses is distributed by who damaged them, if you did all of the damage you would get 5,000 xp in this case
		["MoneyReward"] = 4500,
		["SpawnDelay"] = 20, -- how long to wait before actually spawning it, gives the radio message time to play out
		["AnnounceMessage"] = "[BOSS]: The Tyrant has appeared!",
		["BroadCast"] = function()
			RadioBroadcast(0.5, "This is an urgent broadcast on all bands!", "Watchdog", true)
			RadioBroadcast(4, "Siesmic readings are showing a massive quadruped approaching the area, most likely a tyrant...", "Watchdog", false)
			RadioBroadcast(8, "It is currently inbound for this sector, so...", "Watchdog", false)
			RadioBroadcast(11, "...you better get inside something solid and make sure you have good amount of ammo if you decide to fight against it.", "Watchdog", false)
		end,
	},
}


-----------------------------ROOKIE GEAR-----------------------------

-- what to give to players when they join the server for the first time

Config["RookieGear"] = {
	-- behold the beautiful new inventory format (yes)
	["item_bandage"] = 3,
	["item_antidote"] = 2,
	["item_bed"] = 1,
	["item_tinnedfood"] = 2,
	["weapon_zw_noobcannon"] = 1,
	["item_soda"] = 1,
	["item_medkit"] = 1,
	["item_pistolammo"] = 3,
}

-- What new players will have in their vault

Config["RookieVault"] = {
	["weapon_zw_grenade_pipe"] = 2,
	["item_soda"] = 1,
}


-- Vehicles don't exist, maybe they'll be added in next, future update or never
Config["Vehicles"] = {
	["Basic Hatchback (Yellow)"] = {
		["Health"] = 1000,
		["Description"] = "A basic hatchback, not the fastest or the strongest but it'll get you there (eventually)",
		["Seats"] = 2,
		["Fuel"] = 1000,
		["Model"] = "models/source_vehicles/car001a_hatchback_skin1.mdl",
		["Requirements"] = {
			["item_craft_wheel"] = 4,
			["item_craft_engine_small"] = 1,
			["item_craft_battery"] = 1,
			["item_craft_fueltank"] = 1,
			["item_craft_oil"] = 1,
			["item_scrap"] = 5,
		},
	},

	["Basic Hatchback (Red)"] = {
		["Health"] = 1000,
		["Description"] = "A basic hatchback, not the fastest or the strongest but it'll get you there (eventually)",
		["Seats"] = 2,
		["Fuel"] = 1000,
		["Model"] = "models/source_vehicles/car001a_hatchback_skin0.mdl",
		["Requirements"] = {
			["item_craft_wheel"] = 4,
			["item_craft_engine_small"] = 1,
			["item_craft_battery"] = 1,
			["item_craft_fueltank"] = 1,
			["item_craft_oil"] = 1,
			["item_scrap"] = 5,
		},
	},

	["Large Sedan"] = {
		["Health"] = 1375,
		["Description"] = "A large, rather slow sedan that can carry 4 people",
		["Seats"] = 4,
		["Fuel"] = 1500,
		["Model"] = "models/source_vehicles/car005a.mdl",
		["Requirements"] = {
			["item_craft_wheel"] = 4,
			["item_craft_engine_small"] = 1,
			["item_craft_battery"] = 1,
			["item_craft_fueltank"] = 1,
			["item_craft_oil"] = 1,
			["item_scrap"] = 8,
		},
	},

	["Hotrodded Hatchback (yellow)"] = {
		["Health"] = 1250,
		["Description"] = "A tougher, faster version of the standard hatchback",
		["Seats"] = 2,
		["Fuel"] = 1250,
		["Model"] = "models/source_vehicles/car001a_hatchback_skin0.mdl",
		["Requirements"] = {
			["item_craft_wheel"] = 4,
			["item_craft_engine_large"] = 1,
			["item_craft_battery"] = 1,
			["item_craft_fueltank"] = 2,
			["item_craft_oil"] = 2,
			["item_scrap"] = 5,
		},
	},


}


----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------ADMIN CHECKS-----------------------------------------------------------
-------- I'm creating these functions here so that you can alter the checks to suit your own servers ranking system --------
--  Superadmins can use any commands however, admins only have the ate_admin_clearzombies and spawn boss/airdrop command  --
----------------------------------------------------------------------------------------------------------------------------

--Dev Check function will also impact other function checks so be sure you know what you are doing
function TEADevCheck(ply)
	if !ply:IsValid() then return false end
	if ply:SteamID64() == "76561198274314803" or ply:SteamID64() == "76561198028288732" then return true end
	return false --check will only work for dev, regardless of players' ranks
end

function SuperAdminCheck(ply)
	if !ply:IsValid() then return false end
	if ply:IsUserGroup("superadmin") or ply:IsSuperAdmin() or TEADevCheck(ply) then return true end
	return false --above check failed so they must not be admin
end

function AdminCheck(ply)
	if !ply:IsValid() then return false end
	if ply:IsUserGroup("admin") or ply:IsAdmin() or SuperAdminCheck(ply) then return true end
	return false
end