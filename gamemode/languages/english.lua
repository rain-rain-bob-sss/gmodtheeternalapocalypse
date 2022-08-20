--[[
English is the standard language that you should base your ID's off of.
If something isn't found in your language file then it will fall back to English.
Valid languages (from gmod's menu): bg cs da de el en en-PT es-ES et fi fr ga-IE he hr hu it ja ko lt nl no pl pt-BR pt-PT ru sk sv-SE th tr uk vi zh-CN zh-TW
You MUST use one of the above when using translate.AddLanguage
]]

--[[Examples"
LANGUAGE.gamemodename = "The Eternal Apocalypse"
translate.Get("gamemodename")
]]

translate.AddLanguage("en", "English")

--HUD translations

LANGUAGE.Health = "Health"
LANGUAGE.Armor = "Armor"
LANGUAGE.Money = "Money"
LANGUAGE.Level = "Level"
LANGUAGE.Prestige = "Prestige"
LANGUAGE.Timesurvived = "Time Survived"
LANGUAGE.Stamina = "Stamina"
LANGUAGE.Hunger = "Hunger"
LANGUAGE.Thirst = "Thirst"
LANGUAGE.Fatigue = "Fatigue"
LANGUAGE.Infection = "Infection"
LANGUAGE.Bounty = "Bounty"
LANGUAGE.Pts = "Pts"
LANGUAGE.XPGained = "XP Gained"
LANGUAGE.MoneyGained = "Cash Gained"
LANGUAGE.CanRespawnIn = "You can respawn in"
LANGUAGE.CanNowRespawn = "You are now able to respawn!"
LANGUAGE.Seconds = "seconds"
LANGUAGE.Second = "second"
LANGUAGE.NeedToEatHunger = "WARNING! You are starving, you need to eat something!"
LANGUAGE.NeedToDrinkThirst = "WARNING! You are dying from dehydration, drink something!"
LANGUAGE.NeedToSleepFatigue = "WARNING! You are about to die from fatigue, find somewhere to sleep!"
LANGUAGE.NeedToCureInfection = "WARNING! You are about to die from infection, find a cure!"
LANGUAGE.Pleasewait = "Please wait..."
LANGUAGE.WillWakeupIn = "You will wake up in"
LANGUAGE.SleepText = "This panel will be closed if you die in your sleep or if the timer runs out"
LANGUAGE.PressPickUp = "Press E to pick up"

--Context Menu

LANGUAGE.ClearmyProps = "Clear my Props"
LANGUAGE.Killself = "End your misery"
LANGUAGE.RefreshInv = "Refresh Inventory"
LANGUAGE.GMVer = "Gamemode Version"
LANGUAGE.DropMoney = "Drop Money"
LANGUAGE.TogglePVP = "Toggle PVP"
LANGUAGE.Emotes = "Emotes"
LANGUAGE.ClearingProps = "Clearing Props..."
LANGUAGE.DoIt = "Do it!"
LANGUAGE.DoPrestige = "Prestige!"

--Prop Menu

LANGUAGE.PropMNPSheet1 = "Flimsy Props"
LANGUAGE.PropMNPSheet1_d = "Flimsy props aren't particularly strong and can be damaged by everything. On the upside they are dirt cheap."
LANGUAGE.PropMNPSheet2 = "Strong Props"
LANGUAGE.PropMNPSheet2_d = "Strong props can only be damaged by explosives or zombie attacks. They are a bit more costly than flimsy props though."
LANGUAGE.PropMNPSheet3 = "Faction Structures"
LANGUAGE.PropMNPSheet3_d = "This menu contains special structres such as functional doors, base components etc."
LANGUAGE.PlaceBlueprint = "Place Blueprint"


--Scoreboard (Inventory, Factions, Scoreboard, Help)

LANGUAGE.Inventory = "Inventory"
LANGUAGE.Inventory_d = "Manage your stuff"
LANGUAGE.CurrentlyCarrying = "Currently Carrying"
LANGUAGE.MaxWeight = "Max Carry Weight"
LANGUAGE.NoArmor = "No Armor"
LANGUAGE.ArmorProtection = "Protection"
LANGUAGE.ArmorSpeed = "Speed"
LANGUAGE.Use = "Use"
LANGUAGE.Drop = "Drop"
LANGUAGE.Agility = "Agility"
LANGUAGE.Barter = "Barter"
LANGUAGE.Damage = "Damage"
LANGUAGE.Defense = "Defense"
LANGUAGE.Engineer = "Engineer"
LANGUAGE.Endurance = "Endurance"
LANGUAGE.Immunity = "Immunity"
LANGUAGE.Knowledge = "Knowledge"
LANGUAGE.MedSkill = "MedSkill"
LANGUAGE.Salvage = "Salvage"
LANGUAGE.Speed = "Speed"
LANGUAGE.Strength = "Strength"
LANGUAGE.Survivor = "Survivor"
LANGUAGE.ItemID = "Item ID"
LANGUAGE.kg = "kg"
LANGUAGE.Factions = "Factions"
LANGUAGE.CreateFaction = "Create a new faction"
LANGUAGE.ManageFaction = "Manage your faction"
LANGUAGE.LeaveFaction = "Leave your faction"
LANGUAGE.JoinFaction = "Join Faction"
LANGUAGE.Leader = "Leader"
LANGUAGE.Members = "Members"
LANGUAGE.Base = "Base"
LANGUAGE.Scoreboard = "Scoreboard"
LANGUAGE.Faction = "Faction"
LANGUAGE.Ping = "Ping"
LANGUAGE.Frags = "Kills"
LANGUAGE.Deaths = "Deaths"
LANGUAGE.Mute = "Mute"
LANGUAGE.Profile = "Profile"
LANGUAGE.PvP = "PvP"
LANGUAGE.Help = "Help"
LANGUAGE.ChangeModel = "Change Model"
LANGUAGE.MySkills = "My Skills"
LANGUAGE.MySkills_d = "Upgrade your stats"
LANGUAGE.Inc1Stat_1 = "Increase"
LANGUAGE.Inc1Stat_2 = "by 1"

--Loot Menu

LANGUAGE.TakeItems = "Take Items"
LANGUAGE.Take = "Take"
LANGUAGE.StoreItems = "Store Items"

--Trader

LANGUAGE.TraderSoldItem = "Sold item '%s' for %d %ss!"
LANGUAGE.TraderBoughtItem = "Purchased item '%s' for %d %ss!"


--Items (too much to do, adding translates for this is just literally a lot harder than i thought)

LANGUAGE.Bandage = "Bandage"
LANGUAGE.Bandage_d = "A rolled up bandage that can be used to stop bleeding or to splint broken limbs.\nRestores 11 health, effectiveness is increased by 2.5% per MedSkill point."
LANGUAGE.Medkit = "Medkit"
LANGUAGE.Medkit_d = "An all-purpose medkit. Used to treat injuries of various types and severities - wounds, burns, poisonings, etc.\nRestores 45 health, healing effectiveness is increased by 2.5% per MedSkill point and treats 5% of infection."
LANGUAGE.ArmyMedkit = "Army Medkit"
LANGUAGE.ArmyMedkit_d = "A specialized medical set to fight against physical damage and blood loss.\nIn it is included a component for blood coagulation, antibiotics, immunal stimulators, and painkillers.\nRestores 70 health, healing effectiveness is increased by 2.5% per MedSkill point and treats 20% of infection."
LANGUAGE.ScientificMedkit = "Scientific Medkit"
LANGUAGE.ScientificMedkit_d = "High end medical set designed for use in The Zone. This medkit includes items used to stop bleeding, treat burns, clean wounds, and treat a variety of different injuries.\nIt also includes anti-radiation pills and medicine.\nRestores 100 health, healing effectiveness is increased by 2.5% per MedSkill point and treats 60% of infection."
LANGUAGE.Antidote = "Antidote"
LANGUAGE.Antidote_d = "A rare and expensive antidote that is capable of curing the zombie plague, It's a shame this wasn't invented until most of the world had already been overrun.\nDoesn't restore any health, but treats 40% of infection."
LANGUAGE.Egg = "Raw Egg"
LANGUAGE.Egg_d = "A raw egg. Restores 4% hunger, but dehydrates 1% thirst."
LANGUAGE.Milk = "Old Milk"
LANGUAGE.Milk_d = "An old milk. Restores 11% hunger and quenches 20% thirst."
LANGUAGE.Soda = "Can of Softdrink"
LANGUAGE.Soda_d = "An old pre apocalyptic softdrink, it even still has bubbles left in it! Restores 1% health, 8% hunger, 35% thirst, 5% stamina and recovers 1% of sleep."
LANGUAGE.EnergyDrink = "Energy Drink 'S.T.A.L.K.E.R.'"
LANGUAGE.EnergyDrink_d = "This is an excellent energy drink consisting of caffeine, taurine and a mixture of rejuvenating vitamins. Just the ticket when you're too tired to push forward!\nRestores 1% health, 5% hunger, 30% thirst, 55% of stamina and recovers 8% of sleep."
LANGUAGE.NonstopEnergyDrink = "'Nonstop' Energy Drink"
LANGUAGE.NonstopEnergyDrink_d = "This drink will instantly rejuvenate your mind and body. This drink is similar to the common energy drink, but also heals you, reduces radiation somewhat, reduces hunger, and gives you more endurance.\nOf course it's a bit expensive, but the price is worth it! Restores 2% health, 6% hunger, 32% thirst, 85% of stamina and recovers 11% of sleep."
LANGUAGE.BeerBottle = "Bottle of Beer"
LANGUAGE.BeerBottle_d = "Makes the apocalypse a bit more bearable. Restores 1% health, 9% hunger, 5% thirst, but drains 15% stamina and gives 10% fatigue."
LANGUAGE.TinnedRations = "Tinned Rations"
LANGUAGE.TinnedRations_d = "A tin of god knows what, the label fell off a long time ago. Restores 3% health, 20% hunger, but dehydrates 10% thirst."
LANGUAGE.Potato = "Potato"
LANGUAGE.Potato_d = "A potato, tastes awful raw but it's edible nonetheless. Restores 2% health, 22% hunger, but dehydrates 8% thirst."
LANGUAGE.TraderSpecial = "Trader's Special"
LANGUAGE.TraderSpecial_d = "A box of rather dubious looking meat and ramen, prepared for you by your friendly local trader. Restores 4% health, 47% Hunger, 4% stamina but dehydrates 15% thirst."
LANGUAGE.RiverTrout = "River Trout"
LANGUAGE.RiverTrout_d = "A tasty, fresh river trout. Restores 5% health, 65% Hunger, but dehydrates 4% thirst."
LANGUAGE.Melon = "Watermelon"
LANGUAGE.Melon_d = "A fresh, tasty watermelon, fresh from the farming compounds up in the mountains. Restores 7% health, 85% Hunger, 20% thirst and 3% stamina."
LANGUAGE.Burger = "Cheez Burger"
LANGUAGE.Burger_d = "Can i haz cheez burger? Restores 30% health, 100% hunger and 15% thirst, 90% stamina and recovers 25% of sleep."
LANGUAGE.Hotdog = "Hot Dog"
LANGUAGE.Hotdog_d = "A Hot Dog. Restores 20% health, 80% hunger, 10% thirst, 40% stamina and recovers 15% of sleep."
LANGUAGE.Donut = "Donut"
LANGUAGE.Donut_d = "A donut. Restores 2% health, 25% hunger, 5% stamina and recovers 1% of sleep, but dehydrates 7% of thirst."
LANGUAGE.Bed = "Bed"
LANGUAGE.Bed_d = "Allows you to sleep and set your spawnpoint (your spawnpoint depends on your bed location).\nHeals by 10% when used."
LANGUAGE.SleepingBag = "Sleeping Bag"
LANGUAGE.SleepingBag_d = "A sleeping bag that can be re-used. Sleeping in the open may attract zombies."
LANGUAGE.AmnesiaPills = "Amnesia Pills"
LANGUAGE.AmnesiaPills_d = "USE THIS AT YOUR OWN RISK\nA bottle of pills that cause you to forget everything you've ever learned. Resets all your stats and refunds your stat points."
LANGUAGE.ArmorBattery = "Armor Battery"
LANGUAGE.ArmorBattery_d = "An Armor Battery used to boost protection in combat.\nRestores 15% Armor Battery, with +2% effectiveness per Engineer skill."
LANGUAGE.ArmorKevlar = "Kevlar Plate"
LANGUAGE.ArmorKevlar_d = "A part of kevlar armor mostly used to protect user from severe bullet wounds.\nRestores 35% Armor battery, with +2% effectiveness per Engineer skill."
LANGUAGE.Radio = "Radio"
LANGUAGE.Radio_d = "An old radio. It doesn't work anymore, but traders may pay money for this find."
LANGUAGE.ScrapMetal = "Scrap Metal"
LANGUAGE.ScrapMetal_d = "Scrap metal. It doesn't really do anything but you may still use it to improve your armor condition.\nIncreases 10% Armor Battery, +2% Effectiveness per Engineer skill."
LANGUAGE.Chemicals = "Chemicals"
LANGUAGE.Chemicals_d = "Some old chemicals that might be useful for explosives. The trader will pay good money for this."
LANGUAGE.OldTV = "Old TV"
LANGUAGE.OldTV_d = "An old television that appears to be intact. The trader will pay good money for this."
LANGUAGE.CrateofBeer = "Crate of Beer"
LANGUAGE.CrateofBeer_d = "A crate of unopened beer. The trader will pay good money for this."
LANGUAGE.HamRadio = "Ham Radio"
LANGUAGE.HamRadio_d = "A working ham radio. The trader will pay good money for this."
LANGUAGE.OldPC = "Old Computer"
LANGUAGE.OldPC_d = "Working computers are a very rare find these days. The trader will pay good money for this"
LANGUAGE.SawBowBlueprint = "Saw-Bow Blueprint"
LANGUAGE.SawBowBlueprint_d = "A clipboard containing some highly interesting blueprints for a crossbow that fires sawblades. I should take this to the trader and see what he thinks."
LANGUAGE.RailgunBlueprint = "Railgun Blueprint"
LANGUAGE.RailgunBlueprint_d = "A clipboard containing some highly interesting blueprints for a high tech railgun. I should take this to the trader and see what he thinks."
LANGUAGE.EmptyTin = "Empty Tin"
LANGUAGE.EmptyTin_d = "This once contained food, now it only contains despair."
LANGUAGE.OldBoot = "Old Boot"
LANGUAGE.OldBoot_d = "Smells like cheesy feet"
LANGUAGE.OldNewspaper = "Old Newspaper"
LANGUAGE.OldNewspaper_d = "The latest news and gossip from 1993."
LANGUAGE.Keyboard = "Keyboard"
LANGUAGE.Keyboard_d = "There aren't any computers left to connect this to..."
LANGUAGE.GardenPot = "Garden Pot"
LANGUAGE.GardenPot_d = "There's no time for watching grass grow these days."
LANGUAGE.BucketPaint = "Bucket of Dried Paint"
LANGUAGE.BucketPaint_d = "Dried up old paint."
LANGUAGE.ToyDoll = "Toy Doll"
LANGUAGE.ToyDoll_d = "Creepy looking little bastard."
LANGUAGE.TinPot = "Rusted Tin Pot"
LANGUAGE.TinPot_d = "This could be useful if it wasn't rusted through at the bottom."
LANGUAGE.HulaDoll = "Hula Doll"
LANGUAGE.HulaDoll_d = "Wind it up and it does the macarena! pretty cool but you can't eat it, fuck it or use it as a weapon so in the trash it goes."
LANGUAGE.Nailbox = "Empty Nail Box"
LANGUAGE.Nailbox_d = "This once contained nails, now a family of cockroaches live in it."
LANGUAGE.Twig = "Twig"
LANGUAGE.Twig_d = "Get some wood."
LANGUAGE.FuelTank = "Fuel Tank"
LANGUAGE.FuelTank_d = "An empty fuel tank, used to craft vehicles."
LANGUAGE.CarWheel = "Car Wheel"
LANGUAGE.CarWheel_d = "A car wheel fitted with a tyre that still holds air."
LANGUAGE.EngineOil = "Engine Oil (1L)"
LANGUAGE.EngineOil_d = "A bottle of engine lubricant, required to make an engine run without exploding."
LANGUAGE.BatteryCell = "Battery Cell"
LANGUAGE.BatteryCell_d = "A standard battery used in many different things."
LANGUAGE.ECB = "Electronic Control Box"
LANGUAGE.ECB_d = "An electronic control box used in the construction of various vehicles and special weapons."
LANGUAGE.SmallEngine = "Small engine"
LANGUAGE.SmallEngine_d = "A small petrol engine, it looks to be in decent condition."
LANGUAGE.LargeEngine = "Large engine"
LANGUAGE.LargeEngine_d = "A big block engine, this looks like a bit of love and care would restore it to working order."
LANGUAGE.PistolAmmo = "Pistol Ammo Box"
LANGUAGE.PistolAmmo_d = "An ammo box that contains 100 pistol rounds."
LANGUAGE.M9kSMGAmmo = "[M9k] SMG Ammo Box"
LANGUAGE.M9kSMGAmmo_d = "Ammo used for M9k SMG Weapons. Contains 100 SMG rounds."
LANGUAGE.M9kAssaultRifleAmmo = "[M9k] Assault Rifle Ammo"
LANGUAGE.M9kAssaultRifleAmmo_d = "Ammo used for M9k Assault Weapons. Contains 100 Assault Rifle rounds."
LANGUAGE.M9kSniperRifleAmmo = "[M9k] Sniper Rifle Ammo"
LANGUAGE.M9kSniperRifleAmmo_d = "Ammo used for M9k Sniper Weapons. Contains 50 Sniper Rifle rounds."
LANGUAGE.MagnumAmmo = "Magnum Bullets"
LANGUAGE.MagnumAmmo_d = "An ammo box that contains 50 magnum rounds."
LANGUAGE.BuckshotAmmo = "Buckshot Ammo"
LANGUAGE.BuckshotAmmo_d = "An ammo box that contains 50 shotgun rounds."
LANGUAGE.RifleAmmo = "Rifle Ammo Box"
LANGUAGE.RifleAmmo_d = "An ammo box that contains 100 assault rifle rounds."
LANGUAGE.SniperAmmo = "Sniper Ammo"
LANGUAGE.SniperAmmo_d = "An ammo box that contains 50 sniper rifle bullets."
LANGUAGE.SteelBolts = "Steel Bolts"
LANGUAGE.SteelBolts_d = "An bundle of 6 steel bolts."
LANGUAGE.SteelBoltsCrate = "Steel Bolts Crate"
LANGUAGE.SteelBoltsCrate_d = "A crate that contains 25 steel bolts."
LANGUAGE.RPGRound = "RPG Rocket"
LANGUAGE.RPGRound_d = "A missile designed for use with the RPG launcher."

-- Weapons (need a translator helper for this one)

LANGUAGE.NoobCannon = "Noob Cannon"
LANGUAGE.NoobCannon_d = "My first peashooter, given to all players that are under level 10 and at prestige 0 when they spawn."
LANGUAGE.PigSticker = "Pig Sticker"
LANGUAGE.PigSticker_d = "A combat knife that can save your ass if you run out of ammo."
LANGUAGE.Axe = "Axe"
LANGUAGE.Axe_d = "Can i axe you a question?"
LANGUAGE.BuildersWrench = "Builder's Wrench"
LANGUAGE.BuildersWrench_d = "A wrench that is required to build and repair props and base components.  Can also be used as a bashing weapon though it isn't very effective."
LANGUAGE.ScrapSword = "Scrap Sword"
LANGUAGE.ScrapSword_d = "A massive, heavy blade made of rusty scrap metal welded together.  I hope you have taken your tetanus vaccine in case you cut yourself."
LANGUAGE.G20Gov = "G20 Gov Issue"
LANGUAGE.G20Gov_d = "A newer model of glock that was popular among police and servicemen before the apocalpyse."
LANGUAGE.FN_FiveSeven = "FN FiveSeven"
LANGUAGE.FN_FiveSeven_d = "A fast firing pistol that spews a hail of small high velocity bullets."
LANGUAGE.U45Whisper = "U-45 Whisper"
LANGUAGE.U45Whisper_d = "A silencable pistol that used to be popular among swat and miltary outfits."
LANGUAGE.Warren50 = "Warren .50"
LANGUAGE.Warren50_d = "A powerful and flashy pistol that fires heavy magnum rounds, warrens are still in high demand despite their high skill requirement to use effectively."
LANGUAGE.PythonMagnum = "Python Magnum"
LANGUAGE.PythonMagnum_d = "A bulky revolver that fires large caliber magnum bullets."
LANGUAGE.DualCutlass = "Dual Cutlass-9s"
LANGUAGE.DualCutlass_d = "A pair of custom built pistols that once belonged to a gunslinger of great renown."
LANGUAGE.HandCannon = "Hand Cannon"
LANGUAGE.HandCannon_d = "This thing is fucking huge, i hope i can fire it without breaking my wrist."
LANGUAGE.MP11PDW = "MP-11 PDW"
LANGUAGE.MP11PDW_d = "An old machine pistol, makes for a decent close quarters weapon but performs poorly at longer ranges. Uses pistol ammo."
LANGUAGE.RG900 = "RG-900"
LANGUAGE.RG900_d = "A modern tactical machine pistol fitted with an integrated silencer. Uses pistol ammo."
LANGUAGE.KohlK5A = "Kohl K5-A"
LANGUAGE.KohlK5A_d = "This old german SMG may be an outdated design but it still packs a punch on the battlefield. Uses pistol rounds."
LANGUAGE.StingerSR = "Stinger SR"
LANGUAGE.StingerSR_d = "A burst fire machine pistol designed to be accurate enough to go toe to toe with longer range attackers. Uses pistol ammo."
LANGUAGE.BoschSterlingB60 = "Bosch-Sterling B-60"
LANGUAGE.BoschSterlingB60_d = "A dated but still reasonably effective SMG with an interesting side loading magazine. Uses pistol ammo."
LANGUAGE.KohlK8 = "Kohl K8"
LANGUAGE.KohlK8_d = "The last weapon design released by Kohl before germany was overrun by the zombies, this is a modern SMG that offers excellent power, efficiency and accuracy. Uses pistol ammo."
LANGUAGE.KohlK8C = "Kohl K8-C"
LANGUAGE.KohlK8C_d = "An accurate carbine variant of the kohl K8 smg. Uses pistol ammo"
LANGUAGE.TheShredder = "The Shredder"
LANGUAGE.TheShredder_d = "An experimental SMG that fires a hail of small high velocity bullets. Uses pistol ammo."
LANGUAGE.M3Enforcer = "M3 Enforcer"
LANGUAGE.M3Enforcer_d = "A 12 guage pump shotgun that was commonly used by police and sport shooters before the apocalpyse. Uses shotgun ammo."
LANGUAGE.XS12Sweeper = "XS-12 Sweeper"
LANGUAGE.XS12Sweeper_d = "A 12 guage pump shotgun that was commonly used by police and sport shooters before the apocalpyse. Uses shotgun ammo." --same text as M3Enforcer_d
LANGUAGE.XR15Ranger = "XR-15 Ranger"
LANGUAGE.XR15Ranger_d = "An iconic american rifle that has been kept up to modern standards via constant upgrades."
LANGUAGE.FusilF1 = "Fusil F1"
LANGUAGE.FusilF1_d = "A tough, accurate rifle that was used in large numbers by the european union as they tried to quell the zombie plague."
LANGUAGE.StugCommando = "Stug Commando"
LANGUAGE.StugCommando_d = "A shortened version of the Stug 556LR Sniper that has been optimized for use as an assault rifle."
LANGUAGE.KrukovKA74 = "Krukov KA-74"
LANGUAGE.KrukovKA74_d = "A basic but still highly effective russian assault rifle."
LANGUAGE.LiorL303 = "Lior L303"
LANGUAGE.LiorL303_d = "A rugged assault rifle that was used by the Saudi Union before their homeland was nuked in an attempt to halt the spread of zombies."
LANGUAGE.FNScar = "FN SCAR"
LANGUAGE.FNScar_d = "The pinnacle of modern assault rifles, was produced in very small numbers before the apocalyose so a gun like this is a rare find indeed.  Uses rifle ammo."
LANGUAGE.SawtoothLMG4 = "Sawtooth LMG-4"
LANGUAGE.SawtoothLMG4_d = "A bulky light machine gun built to provide constant suppression against enemies in combat."
LANGUAGE.Antelope762 = "Antelope 7.62"
LANGUAGE.Antelope762_d = "A scoped sporting rifle that was often used for hunting before the zombie apocalypse.  Uses sniper ammo."
LANGUAGE.KohlK24Scimitar = "Kohl K24 Scimitar"
LANGUAGE.KohlK24Scimitar_d = "A burst fire sniper created by kohl to give infantry squads long range capabilites in battle."
LANGUAGE.BlackhawkSniper = "Blackhawk Sniper"
LANGUAGE.BlackhawkSniper_d = "A powerful military sniper fitted with a silencer and NVG scope.  Uses sniper ammo."
LANGUAGE.ThePunisher = "The Punisher"
LANGUAGE.ThePunisher_d = "A massively powerful sniper rifle chambered in the .50BMG cartridge.  Uses sniper ammo."
LANGUAGE.ExplosiveCrossbow = "Explosive Crossbow"
LANGUAGE.ExplosiveCrossbow_d = "A crossbow cobbled together from various spare parts, it can fire explosive bolts.  Uses steel bolts."
LANGUAGE.Winchester = "WINchester"
LANGUAGE.Winchester_d = "They don't call this the WINchester for nothing amirite.  Uses Magnum rounds."
LANGUAGE.PerrinP64 = "Perrin P-64"
LANGUAGE.PerrinP64_d = "A russian weapon designed to put assualt rifle levels of firepower in the hands of tankers and support crews.  Uses pistol rounds."
LANGUAGE.Dammerung = "Dammerung Assault Shotgun"
LANGUAGE.Dammerung_d = "A fully automatic 20 round assault shotgun that chews anybody in the room into pulpy red goop.  Uses shotgun rounds."
LANGUAGE.RPGLauncher = "RPG Launcher"
LANGUAGE.RPGLauncher_d = "An RPG launcher primarily designed for busting vehicles or fortifications.  Uses rockets."
LANGUAGE.TheFuckinator = "The Fuckinator"
LANGUAGE.TheFuckinator_d = "Point away from face."
LANGUAGE.TheGermanator = "The Germanator"
LANGUAGE.TheGermanator_d = "An antique SMG that fires an unnecessarily large caliber bullet. Uses pistol ammo."
LANGUAGE.RM807 = "RM-807"
LANGUAGE.RM807_d = "A 12 guage pump shotgun that fires extra strength magnum shells. Uses shotgun ammo."
LANGUAGE.MADCrowbar = "[MAD] Crowbar"
LANGUAGE.MADCrowbar_d = "A Crowbar???? Is it the one which Gordon Freeman used??"
LANGUAGE.WarrenFalcon45 = "Warren Falcon .45"
LANGUAGE.WarrenFalcon45_d = "A classic pistol that has been in use for over 100 years and still stands tall on the battlefield. Uses Pistol Ammo."
LANGUAGE.SPAS12Shorty = "SPAS12 Shorty"
LANGUAGE.SPAS12Shorty_d = "A pump shotgun that has been cut down from its' original length to save on weight. \nIt has also been modded with an alternate slamfire mode that fires 2 rounds in quick succession. (E + RMB to toggle between fire modes)"
LANGUAGE.WarrenLBR = "Warren LBR"
LANGUAGE.WarrenLBR_d = "A powerful semi-auto battle rifle that is a rebuilt version of an old and popular design."
LANGUAGE.PlasmaLauncher = "Experimental Plasma Cannon"
LANGUAGE.PlasmaLauncher_d = "The EPC is an experimental plasma launcher that uses no ammo and fires highly volatile and explosive plasma blasts.\n*Unused weapon, sorry about that.*"
LANGUAGE.GAU8CChaingun = "GAU-8C Chaingun"
LANGUAGE.GAU8CChaingun_d = "An enormous minigun that spews a constant stream of hot lead. Uses Rifle Ammo."
LANGUAGE.PipeBomb = "Pipe Bomb"
LANGUAGE.PipeBomb_d = "An explosive pipe bomb that can be useful for blowing up crowds of zombies or raining fire on enemy bases."
LANGUAGE.DistressFlare = "Distress Flare"
LANGUAGE.DistressFlare_d = "A distress flare that is useful for lighting up dark areas."
LANGUAGE.FragGrenade = "Frag Grenade"
LANGUAGE.FragGrenade_d = "A high powered military fragmentation grenade, these are a relatively rare find in this post apocalyptic world."
LANGUAGE.MolotovCocktail = "Molotov Cocktail"
LANGUAGE.MolotovCocktail_d = "A bottle full of petrol with a burning rag stuffed into the top.  Perfect for hosting a zombie BBQ."

--M9k Guns (currently adding descriptions for these)

LANGUAGE.M9KColtPython = "[M9k] Colt Python"
LANGUAGE.M9KColtPython_d = "Colt Python from M9k Small Arms. Uses Magnum ammo."
LANGUAGE.M9kGlock18 = "[M9k] Glock 18"
LANGUAGE.M9kGlock18_d = "Glock 18 from M9k Small Arms. Uses Pistol ammo."
LANGUAGE.M9kHK45C = "[M9k] HK45C"
LANGUAGE.M9kHK45C_d = "HK45C from M9k Small Arms. Uses Pistol ammo."
LANGUAGE.M9kBerettaM92 = "[M9k] Beretta M92"
LANGUAGE.M9kBerettaM92_d = "Beretta M92 from M9k Small Arms. Uses Pistol ammo."
LANGUAGE.M9kP08Luger = "[M9k] P08 Luger"
LANGUAGE.M9kP08Luger_d = "P08 Luger from M9k Small Arms. Uses Pistol ammo."
LANGUAGE.M9kRagingBull = "[M9k] Raging Bull"
LANGUAGE.M9kRagingBull_d = "Raging Bull from M9k Small Arms. Uses Magnum ammo."
LANGUAGE.M9kScopedTaurus = "[M9k] Scoped Raging Bull"
LANGUAGE.M9kScopedTaurus_d = "Scoped Raging Bull from M9k Small Arms. Uses Magnum ammo."
LANGUAGE.M9kRemington1858 = "[M9k] Remington 1858"
LANGUAGE.M9kRemington1858_d = "Remington 1858 from M9k Small Arms. Uses Magnum ammo."
LANGUAGE.M9kSWModel3Russian = "[M9k] S&W Model 3 Russian"
LANGUAGE.M9kSWModel3Russian_d = "S&W Model 3 Russian from M9k Small Arms. Uses Magnum ammo."
LANGUAGE.M9kSWModel500 = "[M9k] S&W Model 500"
LANGUAGE.M9kSWModel500_d = "S&W Model 500 from M9k Small Arms. Uses Magnum ammo."
LANGUAGE.M9kSWModel627 = "[M9k] S&W Model 627"
LANGUAGE.M9kSWModel627_d = "S&W Model 627 from M9k Small Arms. Uses Magnum ammo."
LANGUAGE.M9kSigSauerP229R = "[M9k] Sig Sauer P229R"
LANGUAGE.M9kSigSauerP229R_d = "Sig Sauer P229R from M9k Small Arms. Uses Pistol ammo."
LANGUAGE.M9kACR = "[M9k] ACR"
LANGUAGE.M9kAK47 = "[M9k] AK-47"
LANGUAGE.M9kAK74 = "[M9k] AK-74"
LANGUAGE.M9kAMD65 = "[M9k] AMD 65"
LANGUAGE.M9kAN94 = "[M9k] AN-94"
LANGUAGE.M9kASVal = "[M9k] AS Val"
LANGUAGE.M9kF2000 = "[M9k] F2000"
LANGUAGE.M9kFNFal = "[M9k] FN Fal"
LANGUAGE.M9kG36 = "[M9k] G36"
LANGUAGE.M9kHK416 = "[M9k] HK 416"
LANGUAGE.M9kHKG3A3 = "[M9k] HK G3A3"
LANGUAGE.M9kL85 = "[M9k] L85"
LANGUAGE.M9kM16A4ACOG = "[M9k] M16A4 ACOG"
LANGUAGE.M9kSR3MVikhr = "[M9k] SR-3M Vikhr"
LANGUAGE.M9kSteyrAUGA3 = "[M9k] Steyr AUG A3"
LANGUAGE.M9kTAR21 = "[M9k] TAR-21"
LANGUAGE.M9kAresShrike = "[M9k] Ares Shrike"
LANGUAGE.M9kFG42 = "[M9k] FG 42"
LANGUAGE.M9kM1918Bar = "[M9k] M1918 BAR"
LANGUAGE.M9kM60 = "[M9k] M60"
LANGUAGE.M9kM60_d = "The best Weapon reborn - M60. Uses M9k Assault rifle ammo."
LANGUAGE.M9kPKM = "[M9k] PKM"
LANGUAGE.M9kBenneliM3 = "[M9k] Benneli M3"
LANGUAGE.M9kBrowningAuto5 = "[M9k] Browning Auto 5"
LANGUAGE.M9kIthacaM37 = "[M9k] Ithaca M37"
LANGUAGE.M9kMossberg590 = "[M9k] Mossberg 590"
LANGUAGE.M9kPancorJackhammer = "[M9k] Pancor Jackhammer"
LANGUAGE.M9kSPAS12 = "[M9k] SPAS 12"
LANGUAGE.M9kStriker12 = "[M9k] Striker 12"
LANGUAGE.M9kWinchester1897 = "[M9k] Winchester 1897"
LANGUAGE.M9kWinchester87 = "[M9k] Winchester 87"
LANGUAGE.M9kBarretM82 = "[M9k] Barret M82"
LANGUAGE.M9kBarretM98B = "[M9k] Barret M98B"
LANGUAGE.M9kDragunovSVU = "[M9k] Dragunov SVU"
LANGUAGE.M9kSL8 = "[M9k] SL8"
LANGUAGE.M9kIntervention = "[M9k] Intervention"
LANGUAGE.M9kM24 = "[M9k] M24"
LANGUAGE.M9kPSG1 = "[M9k] PSG-1"
LANGUAGE.M9kRemington7615P = "[M9k] Remington 7615P"
LANGUAGE.M9kSVT40 = "[M9k] SVT 40"
LANGUAGE.M9kThompsonContenderG2 = "[M9k] Thompson Contender G2"
LANGUAGE.M9kAACHoneyBadger = "[M9k] AAC Honey Badger"
LANGUAGE.M9kHKMP5 = "[M9k] HK MP5"
LANGUAGE.M9kHKMP7 = "[M9k] HK MP7"
LANGUAGE.M9kHKUMP45 = "[M9k] HK UMP45"
LANGUAGE.M9kKACPDW = "[M9k] KAC PDW"
LANGUAGE.M9kKRISSVector = "[M9k] KRISS Vector"
LANGUAGE.M9kMagpulPDR = "[M9k] Magpul PDR"
LANGUAGE.M9kMP5SD = "[M9k] MP5SD"
LANGUAGE.M9kMP9 = "[M9k] MP9"
LANGUAGE.M9kTEC9 = "[M9k] TEC-9"
LANGUAGE.M9kTommyGun = "[M9k] Tommy Gun"
LANGUAGE.M9kUZI = "[M9k] UZI"

/*
LANGUAGE.M9kACR_d = 
LANGUAGE.M9kAK47_d = 
LANGUAGE.M9kAK74_d = 
LANGUAGE.M9kAMD65_d = 
LANGUAGE.M9kAN94_d = 
LANGUAGE.M9kASVal_d = 
LANGUAGE.M9kF2000_d = 
LANGUAGE.M9kFNFal_d = 
LANGUAGE.M9kG36_d = 
LANGUAGE.M9kHK416_d = 
LANGUAGE.M9kHKG3A3_d = 
LANGUAGE.M9kL85_d = 
LANGUAGE.M9kM16A4ACOG_d = 
LANGUAGE.M9kSR3MVikhr_d = 
LANGUAGE.M9kSteyrAUGA3_d = 
LANGUAGE.M9kTAR21_d = 
LANGUAGE.M9kAresShrike_d = 
LANGUAGE.M9kFG42_d = 
LANGUAGE.M9kM1918Bar_d = 
LANGUAGE.M9kPKM_d = 
LANGUAGE.M9kBenneliM3_d = 
LANGUAGE.M9kBrowningAuto5_d = 
LANGUAGE.M9kIthacaM37_d = 
LANGUAGE.M9kMossberg590_d = 
LANGUAGE.M9kPancorJackhammer_d = 
LANGUAGE.M9kSPAS12_d = 
LANGUAGE.M9kStriker12_d = 
LANGUAGE.M9kWinchester1897_d = 
LANGUAGE.M9kWinchester87_d = 
LANGUAGE.M9kBarretM82_d = 
LANGUAGE.M9kBarretM98B_d = 
LANGUAGE.M9kDragunovSVU_d = 
LANGUAGE.M9kSL8_d = 
LANGUAGE.M9kIntervention_d = 
LANGUAGE.M9kM24_d = 
LANGUAGE.M9kPSG1_d = 
LANGUAGE.M9kRemington7615P_d = 
LANGUAGE.M9kSVT40_d = 
LANGUAGE.M9kThompsonContenderG2_d = 
LANGUAGE.M9kAACHoneyBadger_d = 
LANGUAGE.M9kHKMP5_d = 
LANGUAGE.M9kHKMP7_d = 
LANGUAGE.M9kHKUMP45_d = 
LANGUAGE.M9kKACPDW_d = 
LANGUAGE.M9kKRISSVector_d = 
LANGUAGE.M9kMagpulPDR_d = 
LANGUAGE.M9kMP5SD_d = 
LANGUAGE.M9kMP9_d = 
LANGUAGE.M9kTEC9_d = 
LANGUAGE.M9kTommyGun_d = 
LANGUAGE.M9kUZI_d = 
*/

--Armor

LANGUAGE.LeatherJacket = "Leather Jacket"
LANGUAGE.LeatherJacket_d = "A number of stiff leather pads stitched into your suit, will protect you against cuts and bites but it won't stop a bullet\nProtection: 5%\nSpeed: No impact\nAttachment Slots: 1\nBattery: 0\nMax Carry Weight: +0kg"
LANGUAGE.ChainmailSuit = "Chainmail Suit"
LANGUAGE.ChainmailSuit_d = "A chainmail vest and leather pad combo that is worn underneath your oversuit\nProtection: 7.5%\nSpeed: Decreased (-1)\nAttachment Slots: 1\nBattery: 0\nMax Carry Weight: +0kg"
LANGUAGE.BanditJacket = "Bandit Jacket"
LANGUAGE.BanditJacket_d = "A chainmail vest and leather pad combo that is worn underneath your oversuit\nProtection: 8%\nSpeed: Decreased (-1)\nAttachment Slots: 1\nBattery: 0\nMax Carry Weight: +0kg"
LANGUAGE.ScrapArmor = "Scrap Armor"
LANGUAGE.ScrapArmor_d = "A set of scrap metal attached to your suit via straps and clips, offers good protection for the price range but it's rather bulky and heavy\nProtection: 12.5%\nSpeed: Decreased (-3.5)\nAttachment Slots: 2\nBattery: 0\nMax Carry Weight: +0kg"
LANGUAGE.BrownTrenchcoatArmor = "Brown Trenchcoat Armor"
LANGUAGE.BrownTrenchcoatArmor_d = "CHEEKI BREEKI! it may look like an old overcoat but there's actually a light flak jacket and leather padding under there that offers ok-ish protection\nProtection: 10%\nSpeed: Decreased (-1)\nAttachment Slots: 2\nBattery: 0\nMax Carry Weight: +0kg"
LANGUAGE.BlackTrenchcoatArmor = "Black Trenchcoat Armor"
LANGUAGE.BlackTrenchcoatArmor_d = "It may look like a black, old overcoat, but there's actually a medium-weight flak jacket and leather padding under there that offers a good-ish protection\nProtection: 15%\nSpeed: Decreased (-1.75)\nAttachment Slots: 2\nBattery: 0\nMax Carry Weight: +0kg"
LANGUAGE.GuerillaMercArmor = "Guerilla Mercenary Armor"
LANGUAGE.GuerillaMercArmor_d = "A flak jacket worn with various other garments. It provides a good mix of protection and mobility for an affordable price.\nProtection: 15.625%\nSpeed: Decreased (-2)\nAttachment Slots: 2\nBattery: 50\nMax Carry Weight: +0kg"
LANGUAGE.ArcticMercArmor = "Arctic Mercenary Armor"
LANGUAGE.ArcticMercArmor_d = "A flak jacket worn with various other garments, protecting user from cold. It provides a good protection and mobility.\nProtection: 16.25%\nSpeed: Decreased (-1.75)\nAttachment Slots: 2\nBattery: 50\nMax Carry Weight: +0kg"
LANGUAGE.LeetMercArmor = "Leet Mercenary Armor"
LANGUAGE.LeetMercArmor_d = "A flak jacket worn with various other garments. It provides a good mix of protection and mobility for an affordable price.\nProtection: 15%\nSpeed: Decreased (-2)\nAttachment Slots: 2\nBattery: 50\nMax Carry Weight: +0kg"
LANGUAGE.PhoenixMercArmor = "Phoenix Mercenary Armor"
LANGUAGE.PhoenixMercArmor_d = "A flak jacket worn with various other garments. It provides a good mix of protection and mobility for an affordable price.\nIn addition, this armor set includes additional kevlar plates and provides mask to hide face from others.\nProtection: 20%\nSpeed: Decreased (-2)\nAttachment Slots: 2\nBattery: 50\nMax Carry Weight: +0kg"
LANGUAGE.PoliceGasmaskArmor = "Police Gasmask Armor"
LANGUAGE.PoliceGasmaskArmor_d = "Heavy gear used by swat teams and other special operations personnel. Gas mask is included in this set, protecting user from various gases.\nProtection: 17.5%\nSpeed: Decreased (-5)\nAttachment Slots: 2\nBattery: 50\nMax Carry Weight: +0kg"
LANGUAGE.PoliceRiotArmor = "Police Riot Armor"
LANGUAGE.PoliceRiotArmor_d = "Heavy riot gear used by swat teams and other special operations personnel.\nProtection: 25%\nSpeed: Decreased (-55)\nAttachment Slots: 2\nBattery: 50\nMax Carry Weight: +0kg"
LANGUAGE.PoliceSWATArmor = "Police SWAT Armor"
LANGUAGE.PoliceSWATArmor_d = "Heavy gear used by swat teams and other special operations personnel. A set of kevlar plates is included, protecting user from various dangers.\nProtection: 23.75%\nSpeed: Decreased (-5.375)\nAttachment Slots: 2\nBattery: 50\nMax Carry Weight: +0kg"
LANGUAGE.PoliceUrbanArmor = "Police Urban Armor"
LANGUAGE.PoliceUrbanArmor_d = "Heavy riot gear used by swat teams and other special operations personnel, including medium-weight kevlar plates to provide better protection..\nProtection: 27.5%\nSpeed: Decreased (-5)\nAttachment Slots: 2\nBattery: 50\nMax Carry Weight: +0kg"
LANGUAGE.SunriseArmor = "Sunrise-5 Armor"
LANGUAGE.SunriseArmor_d = "A set of custom armor built by a veteran survivor.\nProtection: 30%\nSpeed: Decreased (-3)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +0kg"
LANGUAGE.DolgArmor = "PSZ-9d Duty Armor"
LANGUAGE.DolgArmor_d = "A set of custom armor built by duty soldiers to increase their protection.\nProtection: 37.5%\nSpeed: Decreased (-4.25)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +0kg"
LANGUAGE.SvobodaArmor = "Wind of Freedom Suit"
LANGUAGE.SvobodaArmor_d = "A set of light armor armor built by a veteran survivor.\nProtection: 30%\nSpeed: Decreased (-2.75)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +0kg"
LANGUAGE.MonolithArmor = "Monolith Armor"
LANGUAGE.MonolithArmor_d = "A set of sunrise armor that is used by Monolithians.\nProtection: 35%\nSpeed: Decreased (-3.5)\nAttachment Slots: 3\nBattery: 150\nMax Carry Weight: +0kg"
LANGUAGE.MilitaryGreenArmor = "SKAT-9 Military Armor"
LANGUAGE.MilitaryGreenArmor_d = "A set of high end military armor used by military stalkers for operations.\nProtection: 42.5%\nSpeed: Decreased (-5)\nAttachment Slots: 2\nBattery: 100\nMax Carry Weight: +0kg"
LANGUAGE.MilitaryBlackArmor = "SKAT-10 Military Armor"
LANGUAGE.MilitaryBlackArmor_d = "A set of very high end military armor used by master military stalkers for special operations.\nProtection: 47.5%\nSpeed: Decreased (-7)\nAttachment Slots: 2\nBattery: 125\nMax Carry Weight: +5kg"
LANGUAGE.ExoArmor = "Exoskeleton"
LANGUAGE.ExoArmor_d = "A set of armor consisting of heavy flak plating supported by a network of struts and servomotors.\nProtection: 60%\nSpeed: Decreased (-12.5)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +30kg"
LANGUAGE.MercExoArmor = "Mercenary Exoskeleton"
LANGUAGE.MercExoArmor_d = "A set of armor consisting of heavy flak plating supported by a network of struts and servomotors.\nUnlike regular exoskeleton, contains lighter parts, giving a slight impact on protection, and making it easier to move around with it.\nProtection: 57.5%\nSpeed: Decreased (-10.5)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +30kg"
LANGUAGE.DolgExoArmor = "Duty Exoskeleton"
LANGUAGE.DolgExoArmor_d = "A set of armor consisting of quite heavy flak plating, giving superior protection and supported by a network of struts and servomotors.\nIt is designed for operations provided by 'Duty', and is not suitable for wandering around.\nProtection: 65%\nSpeed: Decreased (-13)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +30kg"
LANGUAGE.SvobodaExoArmor = "Freedom Exoskeleton"
LANGUAGE.SvobodaExoArmor_d = "A set of armor consisting of heavy flak plating supported by a network of struts and servomotors.\nProtection: 55%\nSpeed: Decreased (-11)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +25kg"
LANGUAGE.MonolithExoArmor = "Monolith Exoskeleton"
LANGUAGE.MonolithExoArmor_d = "A set of armor consisting of heavy flak plating supported by a network of struts and servomotors.\nProtection: 62.5%\nSpeed: Decreased (-12.5)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +30kg"
LANGUAGE.CS2GogglesArmor = "CS2 Goggles Armor"
LANGUAGE.CS2GogglesArmor_d = "An experimental armor that provides wearer suitable protection, great battery capacity and increases movement speed of user wearing it.\nProtection: 40%\nSpeed: Increased (1.25)\nAttachment Slots: 3\nBattery: 100\nMax Carry Weight: +5kg"

--LootTable (planning to make rework of loot chat send instead)

LANGUAGE.L_Bandage = "2x Bandages"
LANGUAGE.L_Medkit = "1x Medkit"
LANGUAGE.L_Antidote = "1x Antidote"
LANGUAGE.L_Soda = "2x Softdrinks"
LANGUAGE.L_Tinnedfood = "2x Tinned Rations"
LANGUAGE.L_Melon = "1x Melon"
LANGUAGE.L_PistolAmmo = "2x Pistol Ammo Box"
LANGUAGE.L_MagnumAmmo = "2x Magnum Ammo Box"
LANGUAGE.L_ShotgunAmmo = "2x Shotgun Ammo Box"
LANGUAGE.L_RifleAmmo = "1x Rifle Ammo Box"
LANGUAGE.L_SniperAmmo = "1x Sniper Ammo Box"
LANGUAGE.L_M9kSMGAmmo = "2x [M9k] SMG Ammo Box"
LANGUAGE.L_M9kAssaultAmmo = "1x [M9k] Assault Rifle Ammo Box"
LANGUAGE.L_PigSticker = "1x Pig Sticker"
LANGUAGE.L_Scrap = "2x Scrap Metal"
LANGUAGE.L_Chems = "1x Chemicals"
LANGUAGE.L_PipeBomb = "2x Pipe Bomb"
LANGUAGE.L_Flare = "2x Distress Flare"
LANGUAGE.L_FragGrenade = "2x Frag Grenade"

--Item Chat send

LANGUAGE.PlyLevelUp = "Congratulations! You are now level %d, you have gained 1 skill point and %d %ss!"
LANGUAGE.PlyHasPrestiged = "You have prestiged to Prestige %d! You have gained %d %ss!"
LANGUAGE.PlayerPrestigedTo = "%s has prestiged to Prestige level %d!"
LANGUAGE.PlyPrestigedTo1 = "You have prestiged to Prestige %d! You now have 1.05x cash gaining from killing zombies!"
LANGUAGE.PlyPrestigedTo2 = "You have prestiged to Prestige %d! You now spawn with +5 more health!"
LANGUAGE.PlyPrestigedTo3 = "You have prestiged to Prestige %d! You now can carry +2kg more!"
LANGUAGE.PlyPrestigedTo4 = "You have prestiged to Prestige %d! You now have +10 jumppower!"
LANGUAGE.PlyPrestigedTo5 = "You have prestiged to Prestige %d! You now spawn with +5 more armor!"
LANGUAGE.PlyPrestigedTo10 = "You have prestiged to Prestige %d! You now can carry +3kg more!"
LANGUAGE.PlyPrestigedTo15 = "You have prestiged to Prestige %d! You now have 0.95x damage taken from all sources!"
LANGUAGE.PlyPrestigedTo20 = "You have prestiged to Prestige %d! Everytime you prestige, you start with 5 skill points instead of 0!"
LANGUAGE.PlyPrestigedTo25 = "You have prestiged to Prestige %d! You now have 1.1x XP gaining multiplier!"
LANGUAGE.PlyCaughtInfection = "You have caught infection!"
LANGUAGE.PlayerHasJoined = "%s has joined the server"
LANGUAGE.PlayerHasSpawned = "%s has spawned into the game"
LANGUAGE.FactionSelectNewFacLeader = "%s has been randomly selected to be the new leader of %s!"
LANGUAGE.ItemNoUse = "This is just useless trash"
LANGUAGE.ItemNoUseWeapon = "I should probably take this to the trader, He might be able to build this thing"
LANGUAGE.ItemNoUseVehicle = "I should find a vehicle dealer so i can build a vehicle with this"
LANGUAGE.ItemNoUseSellable = "I should probably take this to the trader, I don't have any use for it"
LANGUAGE.ItemNoUseCooldown = "Can't use multiple items at the time"
LANGUAGE.ItemNoUseCooldownAmmo = "Can't resupply ammo while using an item"
LANGUAGE.ItemNoUseCooldownFrag = "Can't use frags while using an item"
LANGUAGE.ItemNoUseCooldownWeapon = "Can't equip weapon while using an item"


--Other

LANGUAGE.PlySpawnProtEnabled = "Spawn protection enabled for %s second(s)"
LANGUAGE.PlySpawnProtExpired = "Spawn protection expired"
LANGUAGE.description = "No Description"
LANGUAGE.Total = "Total"
LANGUAGE.None = "None"
LANGUAGE.AcceptModelChange = "Accept Changes"
LANGUAGE.Cost = "Cost"
LANGUAGE.x_turned_on_noclip = "%s turned on noclip."
LANGUAGE.x_turned_off_noclip = "%s turned off noclip."