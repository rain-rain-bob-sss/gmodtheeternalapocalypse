--util.AddNetworkString("MakeProp")
util.AddNetworkString("ChangeModel")
util.AddNetworkString("ChangeProp")
util.AddNetworkString("CashBounty")
util.AddNetworkString("AddVault")
util.AddNetworkString("WithdrawVault")

util.AddNetworkString("tea_updatestamina") -- no functions for this in this file, see player_data.lua and cl_hud.lua
util.AddNetworkString("UpdateStats")
util.AddNetworkString("UpdatePeriodicStats")
util.AddNetworkString("UpdateStatistics")
util.AddNetworkString("UpdatePerks")
util.AddNetworkString("UpdateInventory")
util.AddNetworkString("UpdateTargetStats")
util.AddNetworkString("UpgradePerk")
util.AddNetworkString("UpdateVault")
util.AddNetworkString("UpdateRespawnTimer")

util.AddNetworkString("PlayerIsReady") -- used when player has finished loading entities and has called a gamemode function InitPostEntity
util.AddNetworkString("tea_damagefloater")

util.AddNetworkString("UseItem") -- for the following 4 below, see player_inventory.lua
util.AddNetworkString("DestroyItem") -- For destroying an item
util.AddNetworkString("UseGun")
util.AddNetworkString("BuyItem")
util.AddNetworkString("SellItem")
util.AddNetworkString("OpenTraderMenu") -- see cl_tradermenu.lua
util.AddNetworkString("CraftItem") -- see server/crafting.lua
util.AddNetworkString("CraftSpecialItem") -- see server/crafting.lua
util.AddNetworkString("SystemMessage")
util.AddNetworkString("RadioMessage")
util.AddNetworkString("UseDelay") -- delays on using items

util.AddNetworkString("RecvFactions") -- see factions.lua and cl_scoreboard.lua
util.AddNetworkString("CreateFaction") -- see factions.lua for below until WraithBlind
util.AddNetworkString("JoinFaction")
util.AddNetworkString("GiveLeader")
util.AddNetworkString("InviteFaction")
util.AddNetworkString("KickFromFaction")
util.AddNetworkString("DisbandFaction")
util.AddNetworkString("WraithBlind") -- rape your vision when you get hit by a wraith
util.AddNetworkString("PrestigeEffect") -- blinding effect but with white screen when prestiged
util.AddNetworkString("Payout") -- see cl_hud and server/npcspawns.lua
util.AddNetworkString("GainMasteryProgress") -- see server/mastery.lua
util.AddNetworkString("Prestige") -- see player_data.lua
util.AddNetworkString("BossKilled") -- called when boss is killed

util.AddNetworkString("tea_opentasksmenu")
util.AddNetworkString("tea_taskassign")
util.AddNetworkString("tea_taskprogress")
util.AddNetworkString("tea_taskcancel")
util.AddNetworkString("tea_taskcomplete")
util.AddNetworkString("tea_taskfinish")

util.AddNetworkString("tea_survivalstatsupdate")
util.AddNetworkString("tea_taskstatsupdate")
util.AddNetworkString("tea_player_ready_spawn")
util.AddNetworkString("tea_perksupdate")
util.AddNetworkString("tea_perksunlock")
util.AddNetworkString("tea_perksreset")

-- Misc network strings
util.AddNetworkString("tea_plyevent_vaultupdate")
util.AddNetworkString("tea_player_sendcharacters")


util.AddNetworkString("tea_admin_sendspawns")


--util.AddNetworkString("Respawn")

function GM:NetUpdateStats(ply)
	net.Start("UpdateStats")
	net.WriteFloat(math.Round(ply.Hunger))
	net.WriteFloat(math.Round(ply.Thirst))
	net.WriteFloat(math.Round(ply.Fatigue))
	net.WriteFloat(math.Round(ply.Infection))
	net.WriteFloat(ply.SurvivalTime)
	net.WriteFloat(math.Round(ply.Battery))
	net.WriteFloat(math.Round(ply.Oxygen))
	net.Send(ply)
end

function GM:NetUpdatePeriodicStats(ply)
	net.Start("UpdatePeriodicStats")
	net.WriteFloat(ply.Level)
	net.WriteFloat(ply.Prestige)
	net.WriteFloat(ply.Money)
	net.WriteFloat(ply.XP)
	net.WriteFloat(ply.StatPoints)
	net.WriteFloat(ply.PerkPoints)
	net.WriteFloat(ply.Bounty)
	net.Send(ply)
end

function GM:NetUpdatePerks(ply)
	net.Start("UpdatePerks")
	net.WriteFloat(ply.StatDefense)
	net.WriteFloat(ply.StatGunslinger)
	net.WriteFloat(ply.StatSpeed)
	net.WriteFloat(ply.StatVitality)
	net.WriteFloat(ply.StatKnowledge)
	net.WriteFloat(ply.StatMedSkill)
	net.WriteFloat(ply.StatStrength)
	net.WriteFloat(ply.StatEndurance)
	net.WriteFloat(ply.StatSalvage)
	net.WriteFloat(ply.StatBarter)
	net.WriteFloat(ply.StatEngineer)
	net.WriteFloat(ply.StatImmunity)
	net.WriteFloat(ply.StatSurvivor)
	net.WriteFloat(ply.StatAgility)
	net.WriteFloat(ply.StatScavenging)
	net.Send(ply)
end


function GM:NetUpdateStatistics(ply)
	net.Start("UpdateStatistics")
	net.WriteFloat(ply.BestSurvivalTime)
	net.WriteFloat(ply.ZKills)
	net.WriteFloat(ply.playerskilled)
	net.WriteFloat(ply.playerdeaths)
	net.WriteFloat(ply.MasteryMeleeXP)
	net.WriteFloat(ply.MasteryMeleeLevel)
	net.WriteFloat(ply.MasteryPvPXP)
	net.WriteFloat(ply.MasteryPvPLevel)
	net.Send(ply)
end

function GM:NetUpdatePlayerStatistics(ply, target)
	net.Start("UpdateTargetStats")
	net.WriteString(target:Nick())
	net.WriteFloat(target.BestSurvivalTime)
	net.WriteFloat(target.ZKills)
	net.WriteFloat(target.playerskilled)
	net.WriteFloat(target.playerdeaths)
	net.WriteFloat(target.MasteryMeleeXP)
	net.WriteFloat(target.MasteryMeleeLevel)
	net.WriteFloat(target:GetReqMasteryMeleeXP())
	net.WriteFloat(target.MasteryPvPXP)
	net.WriteFloat(target.MasteryPvPLevel)
	net.WriteFloat(target:GetReqMasteryPvPXP())
	net.Send(ply)
end

function GM:SendPlayerSurvivalStats(ply)
	net.Start("tea_survivalstatsupdate")
	net.WriteFloat(ply.LifeZKills)
	net.WriteFloat(ply.LifePlayerKills)
	net.Send(ply)
end

function GM:SendPlayerPerksUnlocked(ply)
	net.Start("tea_perksupdate")
	net.WriteTable(ply.UnlockedPerks)
	net.Send(ply)
end


function GM:SystemBroadcast(msg, color, sys) -- same as system message, just broadcasts it to everybody instead of accepting a ply argument
	for k, v in pairs(player.GetAll()) do
		net.Start("SystemMessage")
		net.WriteString(msg)
		net.WriteColor(color or Color(255,255,255))
		net.WriteBool(sys or false)
		net.Send(v)
	end
end

function GM:SystemTranslatedBroadcast(sys, color, msg, ...) -- same as system broadcast, except sends a translated string to everyone
	for k, v in pairs(player.GetAll()) do
		net.Start("SystemMessage")
		net.WriteString(translate.ClientFormat(v, msg, ...))
		net.WriteColor(color or Color(255,255,255))
		net.WriteBool(sys or false)
		net.Send(v)
	end
end

function GM:RadioBroadcast(time, msg, sender, rad)
	timer.Simple(time, function()
		for k, v in pairs(player.GetAll()) do
			net.Start("RadioMessage")
			net.WriteString(sender)
			net.WriteString(msg)
			net.WriteBool(rad)
			net.Send(v)
		end
	end)
end

function GM:RadioTranslatedBroadcast(time, sender, rad, msg, ...)
	timer.Simple(time, function(...)
		for k, v in pairs(player.GetAll()) do
			net.Start("RadioMessage")
			net.WriteString(sender)
			net.WriteString(translate.ClientFormat(v, msg, ...))
			net.WriteBool(rad)
			net.Send(v)
		end
	end)
end


net.Receive("ChangeProp", function(len, ply)
	if !ply:IsValid() or !ply:Alive() then return false end
	local model = net.ReadString()
	ply.SelectedProp = model
end)


net.Receive("ChangeModel", function(len, ply)
	if !ply:IsValid() or !ply:Alive() then return false end
	if (ply.NxtModelChange or 0) > CurTime() then
		ply:SystemMessage(Format("You can't change your playermodel now! Try again in %d seconds!", math.floor(ply.NxtModelChange - CurTime())), Color(255,155,155), true)
		return false
	end
	local model = net.ReadString()
	local col = net.ReadVector()
	ply.ChosenModel = model
	ply.ChosenModelColor = col

	ply.NxtModelChange = CurTime() + 60
	local success = gamemode.Call("RecalcPlayerModel", ply)
	if success then
		ply:PrintMessage(3, "Your playermodel has been changed!")
	end
end)


net.Receive("UpgradePerk", function(len, ply)
	local perk = net.ReadString()
	local amount = net.ReadUInt(16)

	local perk2 = "Stat"..perk
	local skill = GAMEMODE.StatConfigs[perk]
	local curskillamt = tonumber(ply[perk2])
	local mul = 1--(skill.Cost or 1) * (curskillamt >= skill.Max and 2 or 1)
	local max = skill.Max + (ply:HasPerk("empowered_skills") and skill.PerkMaxIncrease or 0)
	amt = math.min(amount, ply.StatPoints, max - curskillamt)
	local new = curskillamt + amt
	local cost = (amt * mul) + math.max(0, new - math.max(curskillamt, skill.Max))
	amt = math.min(amt, math.floor(ply.StatPoints-(cost-amt)), max - curskillamt)

	if tonumber(ply.StatPoints) < cost then
		ply:SendChat("You need skill points to upgrade skill!")
		return false
	end

	if amt < mul then return end
	if max < curskillamt and (tonumber(curskillamt) >= max) then
		ply:SendChat("You have reached the maximum number of points for this skill")
		return false
	end

	ply[perk2] = new
	ply.StatPoints = ply.StatPoints - cost
	ply:SetMaxHealth(GAMEMODE:CalcMaxHealth(ply))
	ply:SetMaxArmor(GAMEMODE:CalcMaxArmor(ply))
	ply:SetJumpPower(GAMEMODE:CalcJumpPower(ply))
	if GAMEMODE:GetDebug() >= DEBUGGING_ADVANCED then print(ply:Nick().." used "..amt * mul.." skill point(s) on "..perk.." skill ("..tonumber(ply.StatPoints).." skill points remaining)") end
	ply:SendChat(translate.ClientFormat(ply, "perkincreased", perk, amt))
	GAMEMODE:RecalcPlayerSpeed(ply)
	GAMEMODE:FullyUpdatePlayer(ply)
end)


net.Receive("CashBounty", function(len, ply)
	if !ply:IsValid() or !ply:Alive() then return false end

	local trader = false
	local plycheck = ents.FindInSphere(ply:GetPos(), 150)

	for k, v in pairs(plycheck) do
		if v:GetClass() == "tea_trader" then trader = true break end
	end
	if !trader then ply:SystemMessage("You are not in a trader area!", Color(255,205,205), true) return false end
	if ply.Bounty <= 0 then ply:SystemMessage("You don't have any bounty to cash in!", Color(255,205,205), true) return false end

	ply.Money = tonumber(ply.Money) + tonumber(ply.Bounty)
	if GAMEMODE:GetDebug() >= DEBUGGING_NORMAL then print(ply:Nick().." cashed in their bounty and received "..tonumber(math.floor(ply.Bounty)).." "..GAMEMODE.Config["Currency"].."s") end
	ply:SystemMessage(Format("You cashed in your bounty and received %s %ss!", tonumber(math.floor(ply.Bounty)), GAMEMODE.Config["Currency"]), Color(205,255,205), true)
	ply.Bounty = 0
	ply:SetNWInt("PlyBounty", ply.Bounty)

	GAMEMODE:NetUpdatePeriodicStats(ply)
end)

net.Receive("UpdateTargetStats", function(len, ply)
	local target = net.ReadEntity()
	if !ply:IsValid() or !target:IsValid() then return false end
	
	GAMEMODE:NetUpdatePlayerStatistics(ply, target)
end)

net.Receive("PlayerIsReady", function(len, ply)
	if ply.IsReady then return end
	ply.IsReady = true
	gamemode.Call("PlayerReady", ply)
end)

net.Receive("tea_player_ready_spawn", function(len, ply)
	net.Start("tea_player_ready_spawn")
	net.WriteBool(tobool(ply.HasSpawnedReady))
	net.Send(ply)

	if !ply.HasSpawnedReady then
		GAMEMODE:SystemBroadcast(translate.Format("plspawned", ply:Nick()), Color(255,255,155,255), false)
		-- GAMEMODE:SystemBroadcast(Format("#tea.chat_message.plspawned", ply:Nick()), Color(255,255,155,255), false)
	end
	ply.HasSpawnedReady = true
	ply:Spawn()

	if ply.LastSessionInfo then
		if ply.LastSessionInfo["health"] then
			ply:SetHealth(ply.LastSessionInfo["health"])
		end

		if ply.LastSessionInfo["armor"] then
			ply:SetArmor(ply.LastSessionInfo["armor"])
		end

		if ply.LastSessionInfo["health"] then
			ply.Bounty = ply.LastSessionInfo["bounty"]
		end

		if ply.LastSessionInfo["stamina"] then
			ply.Stamina = ply.LastSessionInfo["stamina"]
		end

		if ply.LastSessionInfo["oxygen"] then
			ply.Stamina = ply.LastSessionInfo["oxygen"]
		end

		if ply.LastSessionInfo["hunger"] then
			ply.Hunger = ply.LastSessionInfo["hunger"]
		end

		if ply.LastSessionInfo["thirst"] then
			ply.Thirst = ply.LastSessionInfo["thirst"]
		end

		if ply.LastSessionInfo["fatigue"] then
			ply.Fatigue = ply.LastSessionInfo["fatigue"]
		end

		if ply.LastSessionInfo["infection"] then
			ply.Infection = ply.LastSessionInfo["infection"]
		end

		if ply.LastSessionInfo["battery"] then
			ply.Battery = ply.LastSessionInfo["battery"]
		end

		if ply.LastSessionInfo["hpregen"] then
			ply.HPRegen = ply.LastSessionInfo["hpregen"]
		end

		if ply.LastSessionInfo["survivaltime"] then
			ply.SurvivalTime = CurTime() - ply.LastSessionInfo["survivaltime"]
		end

		if ply.LastSessionInfo["zombiekills"] then
			ply.LifeZKills = ply.LastSessionInfo["zombiekills"]
		end

		if ply.LastSessionInfo["playerkills"] then
			ply.LifePlayerKills = ply.LastSessionInfo["playerkills"]
		end

		local lastmap = ply.LastSessionInfo["lastmap"]

		if lastmap == game.GetMap() then
			if ply.LastSessionInfo["lastpos"] then
				ply:SetPos(ply.LastSessionInfo["lastpos"])
			end

			if ply.LastSessionInfo["lastang"] then
				ply:SetEyeAngles(ply.LastSessionInfo["lastang"])
			end
		end

		if ply.LastSessionInfo["weapons"] then
			for _,wep in pairs(ply.LastSessionInfo["weapons"]) do
				local w = ply:Give(wep[1], true)
				if w:IsValid() then
					w:SetClip1(wep[2])
					w:SetClip2(wep[3])
				end
			end
		end

		if ply.LastSessionInfo["ammo"] then
			for _,ammo in pairs(ply.LastSessionInfo["ammo"]) do
				ply:SetAmmo(ammo[2],ammo[1])
			end
		end

		if ply.LastSessionInfo["heldweapon"] then
			ply:SelectWeapon(ply.LastSessionInfo["heldweapon"])
		end

		ply.LastSessionInfo = nil
	end
end)

net.Receive("tea_perksunlock", function(len, pl)
	local perk = net.ReadString()

	local perkl = GAMEMODE.PerksList[perk]
	if !perkl then return end
	local cost = GAMEMODE.PerksList[perk].Cost

	if pl.UnlockedPerks[perk] then
		pl:SendChat("You have already unlocked this perk!")
		return false
	end

	if tonumber(pl.PerkPoints) < cost then
		pl:SendChat("You need "..cost.." to unlock this perk!")
		return false
	end

	if tonumber(pl.Prestige) < perkl.PrestigeReq then
		pl:SendChat("You need to have prestige "..perkl.PrestigeReq.." to unlock this perk!")
		return false
	end

	pl.UnlockedPerks[perk] = true
	pl.PerkPoints = pl.PerkPoints - cost

	if perkl.OnUnlock then
		perkl.OnUnlock(pl)
	end


	pl:SetMaxHealth(GAMEMODE:CalcMaxHealth(pl))
	pl:SetMaxArmor(GAMEMODE:CalcMaxArmor(pl))
	pl:SetJumpPower(GAMEMODE:CalcJumpPower(pl))
--	if GAMEMODE:GetDebug() >= DEBUGGING_ADVANCED then print(pl:Nick().." used "..amt * mul.." skill point(s) on "..perk.." skill ("..tonumber(pl.StatPoints).." skill points remaining)") end
	pl:SendChat("You unlocked perk: "..perkl.Name)
	GAMEMODE:RecalcPlayerSpeed(pl)
	GAMEMODE:SendPlayerPerksUnlocked(pl)
	GAMEMODE:NetUpdatePeriodicStats(pl)
end)

net.Receive("tea_perksreset", function(len, pl)
	local costpoints = 0
	local points = pl.PerkPoints

	for perk,_ in pairs(pl.UnlockedPerks) do
		local perkinfo = GAMEMODE.PerksList[perk]

		costpoints = costpoints + perkinfo.Cost
		points = points + perkinfo.Cost

		if perkinfo.OnReset then
			perkinfo.OnReset(pl)
		end
	end
	
	local finalcost = 2000 * costpoints + (costpoints * 500*((costpoints-1)/2))

	if finalcost <= 0 then return end
	if pl.Money < finalcost then
		pl:SystemMessage("You do not have enough money to reset your perks!", Color(255,0,0), true)
		return
	end


	pl.PerkPoints = points
	pl.Money = pl.Money - finalcost
	pl.UnlockedPerks = {}
	pl:SystemMessage("Reset all your perks and refunded perk points for "..finalcost.." "..GAMEMODE.Config["Currency"].."s!")

	pl:SetMaxHealth(GAMEMODE:CalcMaxHealth(pl))
	pl:SetMaxArmor(GAMEMODE:CalcMaxArmor(pl))
	pl:SetJumpPower(GAMEMODE:CalcJumpPower(pl))
	GAMEMODE:RecalcPlayerSpeed(pl)
	GAMEMODE:SendPlayerPerksUnlocked(pl)
	GAMEMODE:NetUpdatePeriodicStats(pl)
end)

function GM:SendSpawnsToPlayer(pl, spawn)
	net.Start("tea_admin_sendspawns")
	net.WriteString(spawn)

	local spawns = {}
	if spawn == "zombies" then
		local SpawnsList = string.Explode("\n", ZombieData)
		for k,v in pairs(SpawnsList) do
			local Spawning = string.Explode(";", v)
			local pos  = util.StringToType(Spawning[1], "Vector")
			local ang  = util.StringToType(Spawning[2], "Angle")

			table.insert(spawns, {pos, ang})
		end
	elseif spawn == "loots" then
		local SpawnsList = string.Explode("\n", LootData)
		for k,v in pairs(SpawnsList) do
			local Spawning = string.Explode(";", v)
			local pos  = util.StringToType(Spawning[1], "Vector")
			local ang  = util.StringToType(Spawning[2], "Angle")

			table.insert(spawns, {pos, ang})
		end

	elseif spawn == "traders" then
		local SpawnsList = string.Explode("\n", TradersData)
		for k,v in pairs(SpawnsList) do
			local Spawning = string.Explode(";", v)
			local pos  = util.StringToType(Spawning[1], "Vector")
			local ang  = util.StringToType(Spawning[2], "Angle")

			table.insert(spawns, {pos, ang})
		end
	elseif spawn == "taskdealers" then
		local SpawnsList = string.Explode("\n", TaskDealersData)
		for k,v in pairs(SpawnsList) do
			local Spawning = string.Explode(";", v)
			local pos  = util.StringToType(Spawning[1], "Vector")
			local ang  = util.StringToType(Spawning[2], "Angle")

			table.insert(spawns, {pos, ang})
		end
	elseif spawn == "airdrops" then
		local SpawnsList = string.Explode("\n", DropData)
		for k,v in pairs(SpawnsList) do
			local Spawning = string.Explode(";", v)
			local pos  = util.StringToType(Spawning[1], "Vector")
			local ang  = util.StringToType(Spawning[2], "Angle")

			table.insert(spawns, {pos, ang})
		end
	elseif spawn == "playerspawns" then
		local SpawnsList = string.Explode("\n", GAMEMODE.PlayerSpawnsData)
		for k,v in pairs(SpawnsList) do
			local Spawning = string.Explode(";", v)
			local pos  = util.StringToType(Spawning[1], "Vector")
			local ang  = util.StringToType(Spawning[2], "Angle")
			local name = tostring(Spawning[3])

			table.insert(spawns, {pos, ang, name})
		end
	end
	net.WriteTable(spawns)
	net.Send(pl)
end


function GM:SendAllSpawnsToPlayer(pl)
	self:SendSpawnsToPlayer(pl, "zombies")
	self:SendSpawnsToPlayer(pl, "loots")
	self:SendSpawnsToPlayer(pl, "traders")
	self:SendSpawnsToPlayer(pl, "taskdealers")
	self:SendSpawnsToPlayer(pl, "airdrops")
	self:SendSpawnsToPlayer(pl, "playerspawns")
end

local meta = FindMetaTable("Player")
if not meta then return end

function meta:SendUseDelay(delay)
	if !self:IsValid() or !self:Alive() then return end
	net.Start("UseDelay")
	net.WriteFloat(delay)
	net.Send(self)
end

function meta:NWSendStamina()
	net.Start("tea_updatestamina")
	net.WriteFloat(self.Stamina)
	net.Send(self)
end
