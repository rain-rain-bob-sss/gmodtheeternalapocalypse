local DropData = ""



function LoadAD()
if not file.IsDir("theeternalapocalypse/spawns/airdrops", "DATA") then
   file.CreateDir("theeternalapocalypse/spawns/airdrops")
end
	if file.Exists( "theeternalapocalypse/spawns/airdrops/" .. string.lower(game.GetMap()) .. ".txt", "DATA" ) then
		DropData = "" --reset it
		DropData = file.Read( "theeternalapocalypse/spawns/airdrops/" .. string.lower(game.GetMap()) .. ".txt", "DATA" )
		print( "Airdrop spawnpoints loaded" )
	else
		DropData = "" --just in case
		print( "No airdrop spawnpoints found for this map" )
	end
end
LoadAD()

function AddAD( ply, cmd, args )
	if !SuperAdminCheck( ply ) then 
		SystemMessage(ply, "You are not superadmin!", Color(255,205,205,255), true)
		ply:ConCommand( "playgamesound buttons/button8.wav" )
		return
	end

	local tr = util.TraceLine( {
		start = ply:GetPos(),
		endpos = ply:GetPos() + Vector(0, 0, 90000),
		mask = MASK_SOLID_BRUSHONLY,
	} )
	if !tr.HitSky then SystemMessage(ply, "You can only place airdrop spawns in areas that are visible to the skybox!", Color(255,205,205,255), true) return end
	local hitp = tr.HitPos - Vector( 0, 0, 80 )

	if( DropData == "" ) then
		NewData = tostring( hitp ) .. ";" .. tostring( ply:GetAngles() )
	else
		NewData = DropData .. "\n" .. tostring( hitp ) .. ";" .. tostring( ply:GetAngles() )
	end
	
	file.Write( "theeternalapocalypse/spawns/airdrops/" .. string.lower(game.GetMap()) .. ".txt", NewData )

	LoadAD() --reload them

	SendChat( ply, "Added an airdrop spawnpoint at position "..tostring(hitp).."!")
	print("[SPAWNPOINTS MODIFIED] "..ply:Nick().." has added an airdrop spawnpoint at position "..tostring(hitp).."!")
	ate_DebugLog("[SPAWNPOINTS MODIFIED] "..ply:Nick().." has added an airdrop spawnpoint at position "..tostring(hitp).."!")
	ply:ConCommand( "playgamesound buttons/button3.wav" )

end
concommand.Add( "ate_addairdropspawn", AddAD )


function ClearAD( ply, cmd, args )
if !SuperAdminCheck( ply ) then 
	SystemMessage(ply, "You are not superadmin!", Color(255,205,205,255), true)
	ply:ConCommand( "playgamesound buttons/button8.wav" )
	return
end

if file.Exists(	"theeternalapocalypse/spawns/airdrops/" .. string.lower(game.GetMap()) .. ".txt", "DATA") then
	file.Delete("theeternalapocalypse/spawns/airdrops/" .. string.lower(game.GetMap()) .. ".txt")
end
DropData = ""
SendChat( ply, "Deleted all airdrop spawnpoints" )
print("[SPAWNPOINTS REMOVED] "..ply:Nick().." has deleted all airdrop spawnpoints!")
ate_DebugLog("[SPAWNPOINTS REMOVED] "..ply:Nick().." has deleted all airdrop spawnpoints!")
ply:ConCommand( "playgamesound buttons/button15.wav" )
end
concommand.Add( "ate_clearairdropspawns", ClearAD )




function SpawnAirdrop()

if CanSpawnAirdrop != 1 and table.Count(player.GetAll()) < 5 then return end


RadioBroadcast(1, "Attention survivors! This announcement might be important.", "Shamus")
RadioBroadcast(5, "I got a little present for y'all to entertain yourselves with!", "Shamus")
RadioBroadcast(10, "Be careful survivors! That airdrop crate is fitted with an IFF jammer.", "Watchdog")
RadioBroadcast(15, "If you go near it you'll need to watch your back or risk being shot by other loot hunters!", "Watchdog")


timer.Simple(20, function()

local cratedropped = false

if  DropData == "" then return end

	local DropList = string.Explode( "\n", DropData )
	for k, v in RandomPairs( DropList ) do
		if cratedropped then break end
		local Booty = string.Explode( ";", v )
		local pos = util.StringToType( Booty[1], "Vector" )
		local ang = util.StringToType( Booty[2], "Angle" )

		local dropent = ents.Create( "airdrop_cache" )
		dropent:SetPos( pos )
		dropent:SetAngles( ang )
		local testinv = {
			["Junk"] = {math.random(0, 2), 1, 1},
			["Ammo"] = {math.random(1, 2), 1, 3},
			["Meds"] = {math.random(0, 1), 1, 3},
			["Food"] = {math.random(0, 2), 1, 3},
			["Sellables"] = {math.random(0, 1), 1, 2},
		}

		local dropchance = math.random(1, 150)
		if dropchance > 100 then
			testinv["TyrantWeapons"] = {1, 1, 1}
		elseif dropchance > 40 then
			testinv["FactionWeapons"] = {1, 1, 1}
		else
			testinv["RookieWeapons"] = {1, 1, 1}
		end

		local loot = RollLootTable( testinv )
		MakeLootContainer( dropent, loot )

		dropent:Spawn()
		dropent:Activate()
		cratedropped = true
	end


for k, v in pairs(player.GetAll()) do v:EmitSound("ambient/overhead/hel1.wav") end

SystemBroadcast( "An air drop crate has appeared!", Color(255,255,255,255), false)

end)

end
timer.Create( "AirdropSpawnTimer", tonumber(Config[ "AirdropSpawnRate" ]), 0, SpawnAirdrop )


