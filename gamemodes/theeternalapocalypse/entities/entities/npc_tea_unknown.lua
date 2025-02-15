AddCSLuaFile()

ENT.Base = "npc_tea_basic"
ENT.PrintName = "? ? ?" -- unknown zombie, not included (but also unfinished)
ENT.Category = ""
ENT.Author = "Uklejamini"
ENT.Purpose = "???????"
ENT.Spawnable = true
ENT.AdminOnly = true

function ENT:SetUpStats()

-- animations for the StartActivity function
	self.AttackAnim = (ACT_MELEE_ATTACK1)
	self.WalkAnim = (ACT_WALK)
	self.RunAnim = (ACT_WALK)

	self.FlinchAnim = (ACT_FLINCH_PHYSICS)
	self.FallAnim = (ACT_IDLE_ON_FIRE)

	self.ZombieStats = {
		["Model"] = "models/zombie/classic.mdl",

		["Damage"] = 90,
		["PropDamage"] = 150,
		["Force"] = 300,
		["Infection"] = 18,
		["Reach"] = 85,
		["StrikeDelay"] = 0.1,
		["AfterStrikeDelay"] = 0.2,

		["Health"] = 29000,
		["MoveSpeedWalk"] = 80,
		["MoveSpeedRun"] = 145,
		["VisionRange"] = 1200,
		["LoseTargetRange"] = 1500,

		["Ability1"] = false,
		["Ability1Range"] = 0,
		["Ability1Cooldown"] = 0,
		["Ability1TrigDelay"] = 0,
	}


	self.AttackSounds = {"npc/zombie/zo_attack1.wav",
		"npc/zombie/zo_attack2.wav"
	}

	self.AlertSounds = {"npc/zombie/zombie_alert1.wav", 
		"npc/zombie/zombie_alert2.wav", 
		"npc/zombie/zombie_alert3.wav"
	}

	self.IdleSounds = {
		"npc/zombie/zombie_voice_idle1.wav",
		"npc/zombie/zombie_voice_idle2.wav",
		"npc/zombie/zombie_voice_idle3.wav",
		"npc/zombie/zombie_voice_idle4.wav",
		"npc/zombie/zombie_voice_idle5.wav",
		"npc/zombie/zombie_voice_idle6.wav",
		"npc/zombie/zombie_voice_idle7.wav",
		"npc/zombie/zombie_voice_idle8.wav",
		"npc/zombie/zombie_voice_idle9.wav"
	}

	self.PainSounds = {"npc/zombie/zombie_pain1.wav",
		"npc/zombie/zombie_pain2.wav", 
		"npc/zombie/zombie_pain3.wav", 
		"npc/zombie/zombie_pain4.wav", 
		"npc/zombie/zombie_pain5.wav", 
		"npc/zombie/zombie_pain6.wav"
	}

	self.DieSounds = {"npc/zombie/zombie_die1.wav",
		"npc/zombie/zombie_die2.wav", 
		"npc/zombie/zombie_die3.wav"
	}

	self.DoorBreak = Sound("npc/zombie/zombie_pound_door.wav")

	self.Hit = Sound("npc/zombie/zombie_hit.wav")
	self.Miss = Sound("npc/zombie/claw_miss1.wav")

	self.CanScream = true
	self.RageLevel = 0
	self.SpeedBuff = 10

	self.Ability1CD = CurTime()
	self.SpawnTime = CurTime()
end

function ENT:Think()
	if !SERVER then return end
	if !IsValid(self) then return end

-- need to drown them in water otherwise the stupid fucks will just skip happily along the sea floor
	if self:WaterLevel() >= 3 then
		local drown = DamageInfo()
		drown:SetDamage(10000)
		drown:SetDamageType(DMG_DROWN)
		drown:SetAttacker(game.GetWorld())
		drown:SetDamageForce(Vector(0, 0, 0))
		self:TakeDamageInfo(drown)
	end
	local col = math.sin(30 * (CurTime() - self.SpawnTime))
	self:SetColor(Color(127,0,col * 255,col * 255))
	self:SetMaterial("models/effects/vol_lightmask01")
end
