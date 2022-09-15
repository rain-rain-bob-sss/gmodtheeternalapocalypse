-- this is mostly c+p from sandbox and still needs to be finished


local hud_deathnotice_time = CreateConVar( "hud_deathnotice_time", "6", FCVAR_REPLICATED, "Amount of time to show death notice" )

-- These are our kill icons
local Color_Icon = Color( 255, 80, 0, 255 )
local NPC_Color = Color( 250, 50, 50, 255 )

killicon.AddFont( "prop_physics",		"HL2MPTypeDeath",	"9",	Color_Icon )
killicon.AddFont( "weapon_smg1",		"HL2MPTypeDeath",	"/",	Color_Icon )
killicon.AddFont( "weapon_357",			"HL2MPTypeDeath",	".",	Color_Icon )
killicon.AddFont( "weapon_ar2",			"HL2MPTypeDeath",	"2",	Color_Icon )
killicon.AddFont( "crossbow_bolt",		"HL2MPTypeDeath",	"1",	Color_Icon )
killicon.AddFont( "weapon_shotgun",		"HL2MPTypeDeath",	"0",	Color_Icon )
killicon.AddFont( "rpg_missile",		"HL2MPTypeDeath",	"3",	Color_Icon )
killicon.AddFont( "npc_grenade_frag",	"HL2MPTypeDeath",	"4",	Color_Icon )
killicon.AddFont( "weapon_pistol",		"HL2MPTypeDeath",	"-",	Color_Icon )
killicon.AddFont( "prop_combine_ball",	"HL2MPTypeDeath",	"8",	Color_Icon )
killicon.AddFont( "grenade_ar2",		"HL2MPTypeDeath",	"7",	Color_Icon )
killicon.AddFont( "weapon_stunstick",	"HL2MPTypeDeath",	"!",	Color_Icon )
killicon.AddFont( "npc_satchel",		"HL2MPTypeDeath",	"*",	Color_Icon )
killicon.AddFont( "npc_tripmine",		"HL2MPTypeDeath",	"*",	Color_Icon )
killicon.AddFont( "weapon_crowbar",		"HL2MPTypeDeath",	"6",	Color_Icon )
killicon.AddFont( "weapon_physcannon",	"HL2MPTypeDeath",	",",	Color_Icon )

local Deaths = {}

local RDtext = {
	"trashed",
	"ripped apart",
	"slaughtered",
	"chewed up and spat out",
	"wrecked",
	"stomped on",
	"turned inside-out",
	"ruined",
	"violated",
	"vanquished",
	"butchered",
	"chopped up",
	"sliced and diced",
	"dominated",
	"blasted",
	"wiped out of the reality",
	"die'ed",
	"no mercified",
	"destroyed",
	"put off their misery"
}

local function CheckAttacker(attacker)
	if attacker == "npc_ate_basic" then attacker = "Shambler Zombie"
		elseif attacker == "npc_ate_leaper" then attacker = "Leaper Zombie"
		elseif attacker == "npc_ate_tank" then attacker = "Tank Zombie"
		elseif attacker == "npc_ate_wraith" then attacker = "Wraith Zombie"
		elseif attacker == "npc_ate_lord" then attacker = "Zombie Lord"
		elseif attacker == "npc_ate_tormented_wraith" then attacker = "Tormented Wraith"
		elseif attacker == "npc_ate_superlord" then attacker = "Zombie Superlord"
		elseif attacker == "npc_ate_fleshpile" or attacker == "obj_fleshbomb" then attacker = "Fleshpile Zombie"
		elseif attacker == "npc_nextbot_boss_tyrant" or attacker == "obj_bigrock" then attacker = "The Tyrant"
		elseif attacker == "stormfox_mapice" then attacker = "Ice"
		elseif attacker == "worldspawn" then attacker = "World"
		elseif attacker == "trigger_hurt" then attacker = "An Unknown Cause"
		elseif attacker == "monster_nihilanth" then attacker = "Nihilanth"
		elseif attacker == "env_explosion" then attacker = "An Explosion"
		elseif attacker == "prop_physics" then attacker = "Physics Prop"
		elseif attacker == "func_pushable" then attacker = "Object"
		elseif attacker == "npc_handgrenade" then attacker = "This Grenade..."
		elseif attacker == "airdrop_cache" then attacker = "Airdrop Cache"
		elseif attacker == "npc_zombie" then attacker = "HL2 Zombie"
		elseif attacker == "npc_fastzombie" then attacker = "HL2 Fast Zombie"
		elseif attacker == "npc_poisonzombie" then attacker = "HL2 Poison Zombie"
		elseif attacker == "gmod_gamerules" then attacker = "That Damned GMod GameRULES"
	end
	return attacker
end

local function PlayerIDOrNameToString( var )
	if type( var ) == "string" then
		if ( var == "" ) then return "" end
		return "#" .. var
	end
	
	local ply = Entity( var )
	
	if ( !IsValid( ply ) ) then return "NULL!" end
	
	return ply:Nick()
end


local function RecvPlayerKilledByPlayer()
	local victim	= net.ReadEntity()
	local inflictor	= net.ReadString()
	local attacker	= net.ReadEntity()

	if ( !IsValid( attacker ) ) then return end
	if ( !IsValid( victim ) ) then return end
	
	GAMEMODE:AddDeathNotice( attacker:Nick(), attacker:Team(), inflictor, victim:Nick(), victim:Team() )
end
net.Receive( "PlayerKilledByPlayer", RecvPlayerKilledByPlayer )

local function RecvPlayerKilledSelf()

	local victim = net.ReadEntity()
	if ( !IsValid( victim ) ) then return end
	GAMEMODE:AddDeathNotice( nil, 0, "suicide", victim:Nick(), victim:Team() )

end
net.Receive( "PlayerKilledSelf", RecvPlayerKilledSelf )

local function RecvPlayerKilled()

	local victim	= net.ReadEntity()
	if (!IsValid(victim)) then return end
	local inflictor	= net.ReadString()
	local attackertype	= net.ReadString()
	local attacker = CheckAttacker(attackertype)

	GAMEMODE:AddDeathNotice( attacker, -1, inflictor, victim:Nick(), victim:Team() )

end
net.Receive( "PlayerKilled", RecvPlayerKilled )

local function RecvPlayerKilledNPC()

	local victimtype = net.ReadString()
	local victim = CheckAttacker(victimtype)
	local inflictor	= net.ReadString()
	local attacker	= net.ReadEntity()

	--
	-- For some reason the killer isn't known to us, so don't proceed.
	--
	if (!IsValid(attacker)) then return end
	
	GAMEMODE:AddDeathNotice( attacker:Nick(), attacker:Team(), inflictor, victim, -1 )
	
	local bIsLocalPlayer = ( IsValid(attacker) && attacker == LocalPlayer() )
	
	local bIsEnemy = IsEnemyEntityName( victim )
	local bIsFriend = IsFriendEntityName( victim )
	
	if ( bIsLocalPlayer && bIsEnemy ) then
		achievements.IncBaddies()
	end
	
	if ( bIsLocalPlayer && bIsFriend ) then
		achievements.IncGoodies()
	end
	
	if ( bIsLocalPlayer && ( !bIsFriend && !bIsEnemy ) ) then
		achievements.IncBystander()
	end

end
net.Receive( "PlayerKilledNPC", RecvPlayerKilledNPC )

local function RecvNPCKilledNPC()

	local victimtype	= net.ReadString()
	local victim = CheckAttacker(victimtype)
	local inflictor	= net.ReadString()
	local attackertype	= net.ReadString()
	local attacker = CheckAttacker(attackertype)

	GAMEMODE:AddDeathNotice( attacker, -1, inflictor, victim, -1 )

end
net.Receive( "NPCKilledNPC", RecvNPCKilledNPC )

--[[---------------------------------------------------------
	Name: gamemode:AddDeathNotice( Victim, Attacker, Weapon )
	Desc: Adds an death notice entry
-----------------------------------------------------------]]

function GM:AddDeathNotice( Victim, team1, Inflictor, Attacker, team2 )

	local Death = {}
	Death.victim	= Victim
	Death.attacker	= Attacker
	Death.time		= CurTime()
	Death.Message = table.Random(RDtext)

	Death.left		= Victim
	Death.right		= Attacker
	Death.icon		= Inflictor

	if ( team1 == -1 ) then Death.color1 = table.Copy( NPC_Color )
	else Death.color1 = table.Copy( team.GetColor( team1 ) ) end
	
	if ( team2 == -1 ) then Death.color2 = table.Copy( NPC_Color )
	else Death.color2 = table.Copy( team.GetColor( team2 ) ) end

	if ( team1 == -1 ) then Death.pteam1 = "The Horde?"
	else Death.pteam1 = team.GetName( team1 ) end
	
	if ( team2 == -1 ) then Death.pteam2 = "Killed NPC"
	else Death.pteam2 = team.GetName( team2 ) end
	
	if (Death.left == Death.right) then
		Death.left = nil
		Death.icon = "suicide"
	end
	
	table.insert( Deaths, Death )

end

local function DrawDeath( x, y, death, hud_deathnotice_time )

	local w, h = killicon.GetSize( death.icon )
	if ( !w || !h ) then return end
	
	local fadeout = ( death.time + hud_deathnotice_time ) - CurTime()
	
	local alpha = math.Clamp( fadeout * 255, 0, 255 )
	death.color1.a = alpha
	death.color2.a = alpha
	
	-- Draw Icon
--	killicon.Draw( x, y, death.icon, alpha )
	
	-- Draw KILLER
	if ( death.left ) then
		draw.SimpleText( "Death: "..death.right.." ["..death.pteam2.."] was "..death.Message.." by "..death.left.." ["..death.pteam1.."]" ,	"ChatFont", x - ( w / 2 ) + 230, y, Color(255,75,75,alpha), TEXT_ALIGN_RIGHT )
	end
	
	-- Draw VICTIM
--	draw.SimpleText( death.right,		"ChatFont", x + ( w / 2 ) + 16, y, death.color2, TEXT_ALIGN_LEFT )

	return ( y + h * 0.70 )

end


function GM:DrawDeathNotice( x, y )

	if ( GetConVarNumber( "cl_drawhud" ) == 0 ) then return end

	local hud_deathnotice_time = hud_deathnotice_time:GetFloat()

	x = x * ScrW()
	y = y * ScrH()
	
	-- Draw
	for k, Death in pairs( Deaths ) do

		if ( Death.time + hud_deathnotice_time > CurTime() ) then
	
			if ( Death.lerp ) then
				x = x * 0.3 + Death.lerp.x * 0.7
				y = y * 0.3 + Death.lerp.y * 0.7
			end
			
			Death.lerp = Death.lerp or {}
			Death.lerp.x = x
			Death.lerp.y = y
		
			y = DrawDeath( x, y, Death, hud_deathnotice_time )
		
		end
		
	end
	
	-- We want to maintain the order of the table so instead of removing
	-- expired entries one by one we will just clear the entire table
	-- once everything is expired.
	for k, Death in pairs( Deaths ) do
		if ( Death.time + hud_deathnotice_time > CurTime() ) then
			return
		end
	end
	
	Deaths = {}

end
