---------------- Zombies! ----------------

local ZombieData = ""

function ZombieCount()
	local AliveZombies = 0
	for k, v in pairs(Config[ "ZombieClasses" ]) do
		for _, ent in pairs(ents.FindByClass(k)) do AliveZombies = AliveZombies + 1 end
	end

	return AliveZombies
end


function LoadZombies()
if not file.IsDir("theeternalapocalypse/spawns/"..string.lower(game.GetMap()), "DATA") then
   file.CreateDir("theeternalapocalypse/spawns/"..string.lower(game.GetMap()))
end
	if file.Exists( "theeternalapocalypse/spawns/"..string.lower(game.GetMap()).."/zombies.txt", "DATA" ) then
		ZombieData = "" --reset it
		ZombieData = file.Read( "theeternalapocalypse/spawns/" .. string.lower(game.GetMap()) .. "/zombies.txt", "DATA" )
		print( "Zombie spawnpoints loaded" )
	else
		ZombieData = "" --just in case
		print( "No zombie spawnpoints found for this map" )
	end
end

-- note: added the ability to create bosses with this function, setting isboss to true will make the monster distribute its xp reward to all attackers and announce its death
function CreateZombie(class, pos, ang, xp, cash, isboss)
	local isboss = isboss or false
	local class = tostring(class)

	local SpawnZombie = ents.Create(class)
	SpawnZombie:SetPos(pos)
	SpawnZombie:SetAngles(ang)
	SpawnZombie.XPReward = xp
	SpawnZombie.MoneyReward = cash
	if isboss then
		SpawnZombie.BossMonster = true
		SpawnZombie.DamagedBy = {}
	else
		SpawnZombie.BossMonster = false
	end
	SpawnZombie:Spawn()
	SpawnZombie:Activate()
end


timer.Create( "RemoveDesertedZombies", 30, 0, function()
for k, v in pairs(Config[ "ZombieClasses" ]) do
	for _, ent in pairs(ents.FindByClass(k)) do CheckIfDesertedArea( ent ) end
end
end)


-- delete zombies every 30 seconds if there are no players nearby within radius of 5500 (in source units)
function CheckIfDesertedArea( ent )
if !ent:IsValid() then return end

local deserted = true
local plycheck = ents.FindInSphere(ent:GetPos(), 5500)
for k, v in pairs(plycheck) do
if v:IsPlayer() then deserted = false end
end
if deserted == true then ent:Remove() end
end


function SpawnRandomZombie(pos, ang)
	local dice = math.random(0, 100)
	local total = 0
	for k, v in pairs(Config[ "ZombieClasses" ]) do
		total = total + v["SpawnChance"]
		if total >= dice then
			CreateZombie(k, pos, ang, v["XPReward"], v["MoneyReward"], false)
			if GetConVar("tea_server_debugging"):GetInt() >= 2 then print("Zombie spawned:", "\n"..k, pos, ang, "XPReward: "..v["XPReward"], "MoneyReward: "..v["MoneyReward"]) end
			break
		end
	end
end

function SpawnRandomBoss(pos, ang)
	local dice = math.random(0, 100)
	local total = 0
	for k, v in pairs(Config[ "BossClasses" ]) do
		total = total + v["SpawnChance"]
		if total >= dice then
			v["BroadCast"]()
			timer.Simple(tonumber(v["SpawnDelay"]), function()
				SystemBroadcast(v["AnnounceMessage"], Color(255,105,105,255), false)
				for k, v in pairs(player.GetAll()) do BroadcastLua([[if GetConVar("tea_cl_soundboss"):GetInt() >= 1 then RunConsoleCommand("playgamesound", "music/stingers/hl1_stinger_song8.mp3") end]]) end
				CreateZombie(k, pos, ang, v["XPReward"], v["MoneyReward"], true)
				if GetConVar("tea_server_debugging"):GetInt() >= 2 then print("Zombie Boss spawned:", "\n"..k, pos, ang, "XPReward: "..v["XPReward"], "MoneyReward: "..v["MoneyReward"]) end
			end)
			break
		end
	end
end


function SpawnZombies()
	local zombiespawnenabled = GAMEMODE.ZombieSpawningEnabled
	if ZombieCount() > GAMEMODE.MaxZombies or !zombiespawnenabled then return false end
	if ZombieData != "" then
		local ZombiesList = string.Explode("\n", ZombieData)
		for k, v in RandomPairs( ZombiesList ) do
			Zed = string.Explode( ";", v )
			local pos = util.StringToType( Zed[1], "Vector" ) + Vector(0, 0, 5)
			local ang = util.StringToType( Zed[2], "Angle" )
			local inzedrange = true
			local zeds = ents.FindInSphere(pos, 150)
			for k, v in pairs(zeds) do
				if v.Type == "nextbot" or v:IsNPC() or v:IsPlayer() then inzedrange = false end -- ignore spawnpoints that are obstructed by zombies or players
			end

			local inplyrange = false
			local plycheck = ents.FindInSphere(pos, 5000)
			for k, v in pairs(plycheck) do
				if v:IsPlayer() then inplyrange = true end
			end

			if inplyrange == false or inzedrange == false then continue end
			if ZombieCount() > GAMEMODE.MaxZombies or !zombiespawnenabled then break end

			SpawnRandomZombie(pos + Vector(0, 0, 10), ang)
		end
	end
end

timer.Create("ZombieSpawnTimer", tonumber(Config["ZombieSpawnRate"]), 0, SpawnZombies)
concommand.Add("tea_dev_spawnzombies", function(ply, cmd)
	if !TEADevCheck(ply) then 
		SystemMessage(ply, translate.ClientGet(ply, "TEADevCheckFailed"), Color(255,205,205,255), true)
		ply:ConCommand("playgamesound buttons/button8.wav")
		return
	end
	SpawnZombies()
end)


function AddZombie(ply, cmd, args)
	if !SuperAdminCheck(ply) then 
		SystemMessage(ply, translate.ClientGet(ply, "TEASuperAdminCheckFailed"), Color(255,205,205,255), true)
		ply:ConCommand("playgamesound buttons/button8.wav")
		return
	end

	if ZombieData == "" then
		NewData = tostring(ply:GetPos()) ..";".. tostring(ply:GetAngles())
	else
		NewData = ZombieData .. "\n" .. tostring( ply:GetPos() ) .. ";" .. tostring( ply:GetAngles() )
	end
	
	file.Write( "theeternalapocalypse/spawns/"..string.lower(game.GetMap()).."/zombies.txt", NewData )
	
	LoadZombies() --reload them
	
	SendChat( ply, "Added a zombie spawnpoint at position "..tostring(ply:GetPos()).."!" )
	print("[SPAWNPOINTS MODIFIED] "..ply:Nick().." has added a zombie spawnpoint at position "..tostring(ply:GetPos()).."!")
	ate_DebugLog("[SPAWNPOINTS MODIFIED] "..ply:Nick().." has added a zombie spawnpoint at position "..tostring(ply:GetPos()).."!")
	ply:ConCommand( "playgamesound buttons/button3.wav" )
end
concommand.Add("tea_addzombiespawn", AddZombie)

function ClearZombies(ply, cmd, args)
	if !SuperAdminCheck(ply) then 
			SystemMessage(ply, translate.ClientGet(ply, "TEASuperAdminCheckFailed"), Color(255,205,205,255), true)
			ply:ConCommand("playgamesound buttons/button8.wav")
			return
	end
	if file.Exists("theeternalapocalypse/spawns/"..string.lower(game.GetMap()).."/zombies.txt", "DATA") then
		file.Delete("theeternalapocalypse/spawns/"..string.lower(game.GetMap()).."/zombies.txt")
		ZombieData = ""
	end
	SendChat(ply, "Deleted all zombie spawnpoints")
	print("[SPAWNPOINTS REMOVED] "..ply:Nick().." has deleted all zombie spawnpoints!")
	ate_DebugLog("[SPAWNPOINTS REMOVED] "..ply:Nick().." has deleted all zombie spawnpoints!")
	ply:ConCommand("playgamesound buttons/button15.wav")
end
concommand.Add("tea_clearzombiespawns", ClearZombies)

function SpawnBoss()
	if !GAMEMODE.CanSpawnBoss and table.Count(player.GetAll()) < 2 then return end
	local bspawned = false

	if ZombieData != "" then
		local ZombiesList = string.Explode("\n", ZombieData)
		for k, v in RandomPairs(ZombiesList) do
			Zed = string.Explode(";", v)
			local pos = util.StringToType( Zed[1], "Vector" )
			local ang = util.StringToType( Zed[2], "Angle" )
			local inzedrange = true
			local zeds = ents.FindInSphere(pos, 150)
			for k, v in pairs(zeds) do
				if v.Type == "nextbot" or v:IsNPC() or v:IsPlayer() then inzedrange = false end -- ignore spawnpoints that are obstructed by zombies or players
			end

			if bspawned == true then continue end
			if inzedrange == false then continue end
			SpawnRandomBoss( pos + Vector(0, 0, 40), ang )
			bspawned = true
		end
	end
end
timer.Create( "BossSpawnTimer", tonumber(Config[ "BossSpawnRate" ]), 0, SpawnBoss )


function StoreAttacker( target, dmginfo )
	local dmg = dmginfo:GetDamage()
	local attacker = dmginfo:GetAttacker()
	if (target.Type == "nextbot" or target:IsNPC()) and attacker:IsPlayer() then 
		if !target.BossMonster then target.LastAttacker = attacker else
			if !target.DamagedBy[attacker] then 
				target.DamagedBy[attacker] = math.Clamp(dmg, 0, target:GetMaxHealth())
			else
				target.DamagedBy[attacker] = math.Clamp(target.DamagedBy[attacker] + math.Clamp(dmg, 0, target:Health()), 0, target:GetMaxHealth())
			end
		end
	end
end
hook.Add("EntityTakeDamage", "StoreAttacker", StoreAttacker, HOOK_LOW)

function NPCReward(ent)
	local tea_server_xpreward = GetConVar("tea_server_xpreward"):GetFloat()
	local tea_server_moneyreward = GetConVar("tea_server_moneyreward"):GetFloat()

	if (ent.Type == "nextbot" or ent:IsNPC()) and (ent.XPReward and ent.MoneyReward) then
		if ent.LastAttacker and ent.LastAttacker:IsValid() then
		Payout(ent.LastAttacker, ent.XPReward * tea_server_xpreward, ent.MoneyReward * tea_server_moneyreward * (TEACashBonus(ent.LastAttacker) or 1))
		ent.LastAttacker.ZKills = ent.LastAttacker.ZKills + 1
		TEANetUpdateStatistics(ent.LastAttacker)
		elseif ent.DamagedBy then
			for k, v in pairs(ent.DamagedBy) do
				if !k:IsValid() then continue end
				local payxp = tonumber(v * ent.XPReward / ent:GetMaxHealth())	-- i really need to rework this one since doing 4 damage to bosses grants +1XP and +1$ reward
				local paycash = tonumber(v * ent.MoneyReward / ent:GetMaxHealth())
				Payout(k, math.Round(payxp * tea_server_xpreward), math.Round(paycash * tea_server_moneyreward * (TEACashBonus(k) or 1)))
				k:PrintMessage(3, "Damage dealt to boss: "..math.Round(v).." ("..math.Round((v * 100) / ent:GetMaxHealth()).."% damage)")
			end

			if GetConVar("tea_server_debugging"):GetInt() >= 1 then
				print("BOSS DEFEATED:\n")
				PrintTable(ent.DamagedBy)
			end

			net.Start("BossKilled")
			net.WriteTable(ent.DamagedBy)
			net.Broadcast()

			local EntDrop = ents.Create("loot_cache_boss")
			EntDrop:SetPos(ent:GetPos() + Vector(0, 0, 50))
			EntDrop:SetAngles(ent:GetAngles())
			EntDrop.LootType = table.Random(LootTableBoss)["Class"]
			EntDrop:Spawn()
			EntDrop:Activate()
		end
	end
end
hook.Add("EntityRemoved", "killpayouts", NPCReward)


function Payout(ply, xp, cash)
	if !ply:IsValid() or !ply:IsPlayer() then return end
	local CurXP = ply.XP
	local CurMoney = ply.Money
	local XPGain = xp * (TEAXPBonus(ply) or 1)
	local MoneyGain = cash
	local XPBonus = math.floor(XPGain * (ply.StatKnowledge * 0.02))
	local MoneyBonus = math.floor(MoneyGain * (ply.StatSalvage * 0.02))

	local TXPGain = XPGain + XPBonus
	local TMoneyGain = MoneyGain + MoneyBonus

	ply.XP = CurXP + TXPGain
	ply.Bounty = ply.Bounty + TMoneyGain
	ply:SetNWInt( "PlyBounty", ply.Bounty )
	print(ply:Nick().." gained "..TXPGain.." XP ("..XPGain..", +"..XPBonus.." with Knowledge Skill level "..ply.StatKnowledge..", Total "..ply.XP..") and "..TMoneyGain.." "..Config["Currency"].."s to their bounty ("..MoneyGain..", +"..MoneyBonus.." with Salvage Skill level "..ply.StatSalvage..", Total "..ply.Bounty..")")

	if tonumber(ply.Level) < GAMEMODE.MaxLevel + (GAMEMODE.LevelsPerPrestige * ply.Prestige) then PlayerGainLevel(ply) end
	net.Start("Payout")
	net.WriteFloat(TXPGain)
	net.WriteFloat(TMoneyGain)
	net.Send(ply)

	TEANetUpdatePeriodicStats(ply)
end

-- doesn't work for some reason, so leave it
function ZombieDealDamage(ply, zed, dmgmin, dmgmax, force, infection)
	local damageInfo = DamageInfo()
	local dmg1 = math.random(dmgmin, dmgmax)

	local armorvalue = 0
	local plyarmor = ply:GetNWString("ArmorType")

	if plyarmor and plyarmor != "none" then
		local armortype = ItemsList[plyarmor]
		armorvalue = tonumber((armortype["ArmorStats"]["reduction"]) / 100)
	end

	local armorbonus = dmg1 * armorvalue
	local defencebonus = dmg1 * (0.015 * ply.StatDefense)
	local dmg2 = dmg1 - (defencebonus + armorbonus)

	damageInfo:SetAttacker(zed)
	damageInfo:SetDamage(dmg2)
	damageInfo:SetDamageType(DMG_CLUB)

	local force = ply:GetAimVector() * force
	force.z = 32
	damageInfo:SetDamageForce(force)

	ply:TakeDamageInfo(damageInfo)
	ply:EmitSound("npc/zombie/zombie_hit.wav", 100, math.random(80, 110))
	ply:ViewPunch(VectorRand():Angle() * 0.05)
	ply:SetVelocity(force)
	if math.random(0, 100) > (100 - (infection * (1 - (0.04 * ply.StatImmunity)))) then
		ply.Infection = ply.Infection + math.random(60,300)
	end
end


function TestZombies(ply, cmd, args)
	if !ply:IsValid() then return end
	if !SuperAdminCheck(ply) then 
		SystemMessage(ply, translate.ClientGet(ply, "TEASuperAdminCheckFailed"), Color(255,205,205,255), true)
		ply:ConCommand( "playgamesound buttons/button8.wav" )
		return
	end

	local class = tostring(args[1]) or "npc_ate_basic"
	local vStart = ply:GetShootPos()
	local vForward = ply:GetAimVector()
	local trace = {}
	trace.start = vStart
	trace.endpos = vStart + (vForward * 5000)
	trace.filter = ply
	local tr = util.TraceLine( trace )

	local SpawnZombie = ents.Create(class)
	SpawnZombie:SetPos(tr.HitPos)
	SpawnZombie:SetAngles(Angle(0, 0, 0))
	SpawnZombie.XPMin = 1
	SpawnZombie.XPMax = 1
	SpawnZombie.MoneyMin = 1
	SpawnZombie.MoneyMax = 1
	SpawnZombie:Spawn()
	SpawnZombie:Activate()

	undo.Create("Test Zombie")
	undo.AddEntity(SpawnZombie)
	undo.SetPlayer(ply)
	undo.Finish()

	SystemMessage(ply, "Spawned zombie "..class, Color(205,255,205,255), true)
	ate_DebugLog("[ADMIN COMMAND USED] "..ply:Nick().." has spawned a zombie "..class.."!")
	print("[ADMIN COMMAND USED] "..ply:Nick().." has spawned a zombie "..class.."!")
end
concommand.Add("tea_dev_createtestzombie", TestZombies)

function SpawnTestZombie(ply, cmd, args)
	if !ply:IsValid() then return end
	if !TEADevCheck(ply) then 
		SystemMessage(ply, translate.ClientGet(ply, "TEADevCheckFailed"), Color(255,205,205,255), true)
		ply:ConCommand("playgamesound buttons/button8.wav")
		return
	end

	local class = tostring(args[1]) or "npc_ate_basic"
	local xp = tonumber(args[2]) or 100
	local cash = tonumber(args[3]) or 50
	local isboss = tobool(args[4]) or false
	local shouldsendchat = tostring(args[5]) or true
	
	local vStart = ply:GetShootPos()
	local vForward = ply:GetAimVector()
	local trace = {}
	trace.start = vStart
	trace.endpos = vStart + (vForward * 5000)
	trace.filter = ply
	local tr = util.TraceLine(trace)
	
	CreateZombie(class, tr.HitPos, Angle(0,0,0), xp, cash, isboss)
	if tobool(shouldsendchat) then SystemMessage(ply, "Spawned zombie "..class.." with reward of "..xp.." XP and "..cash.." cash! (Is boss zombie: "..tostring(isboss)..")", Color(205,255,205,255), true) end
end
concommand.Add("tea_dev_spawnzombie", SpawnTestZombie)
