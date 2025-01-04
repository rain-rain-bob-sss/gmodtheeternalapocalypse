-- Miscellaneous Items --

--[[ -- Use this function template for adding new items!
GM:CreateItem(itemid, {
    Cost = cost,
    Model = model,
    Weight = weight,
    Supply = supply,
    Rarity = rarity,
    Category = category,
    UseFunc = function(ply) return false end,
    DropFunc = function(ply) return true end

-- Additional variables if needed
    IsSecret = false,
})

]]

-- Sellables


local i = GM:CreateItem("item_radio", {
    Cost = 300,
    Model = "models/wick/wrbstalker/anomaly/items/dez_radio.mdl",
    Weight = 1,
    Supply = -1,
    Rarity = 2,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousesellable")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_radio") return drop end
})

i = GM:CreateItem("item_scrap", {
    Cost = 350,
    Model = "models/Gibs/helicopter_brokenpiece_02.mdl",
    Weight = 1,
    Supply = -1,
    Rarity = 2,
    Category = 1,
    UseFunc = function(ply) local armor = UseFunc_Armor(ply, 3, 0, 10, "npc/combine_soldier/zipline_hitground2.wav") return armor end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_scrap") return drop end
})

i = GM:CreateItem("item_chems", {
    Cost = 600,
    Model = "models/props_junk/plasticbucket001a.mdl",
    Weight = 1.5,
    Supply = -1,
    Rarity = 3,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousesellable")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_chems") return drop end
})

i = GM:CreateItem("item_tv", {
    Cost = 800,
    Model = "models/props_c17/tv_monitor01.mdl",
    Weight = 2,
    Supply = -1,
    Rarity = 3,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousesellable")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_tv") return drop end
})

i = GM:CreateItem("item_beer", {
    Cost = 1200,
    Model = "models/props/CS_militia/caseofbeer01.mdl",
    Weight = 5,
    Supply = -1,
    Rarity = 3,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousesellable")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_beer") return drop end
})

i = GM:CreateItem("item_hamradio", {
    Cost = 1500,
    Model = "models/props_lab/citizenradio.mdl",
    Weight = 2.5,
    Supply = -1,
    Rarity = 3,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousesellable")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_hamradio") return drop end
})

i = GM:CreateItem("item_computer", {
    Cost = 2000,
    Model = "models/props_lab/harddrive02.mdl",
    Weight = 4,
    Supply = -1,
    Rarity = 4,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousesellable")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_computer") return drop end
})

i = GM:CreateItem("item_blueprint_sawbow", {
    Cost = 5000,
    Model = "models/props_lab/clipboard.mdl",
    Weight = 0.25,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouseweapon")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_blueprint_sawbow") return drop end
})

i = GM:CreateItem("item_blueprint_railgun", {
    Cost = 5000,
    Model = "models/props_lab/clipboard.mdl",
    Weight = 0.25,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouseweapon")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_blueprint_railgun") return drop end
})




-- junk




i = GM:CreateItem("item_junk_tin", {
    Cost = 0,
    Model = "models/props_junk/garbage_metalcan002a.mdl",
    Weight = 0.1,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_tin") return drop end
})

i = GM:CreateItem("item_junk_boot", {
    Cost = 0,
    Model = "models/props_junk/Shoe001a.mdl",
    Weight = 0.17,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_boot") return drop end
})

i = GM:CreateItem("item_junk_paper", {
    Cost = 0,
    Model = "models/props_junk/garbage_newspaper001a.mdl",
    Weight = 0.12,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_paper") return drop end
})

i = GM:CreateItem("item_junk_keyboard", {
    Cost = 0,
    Model = "models/props_c17/computer01_keyboard.mdl",
    Weight = 0.23,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_keyboard") return drop end
})

i = GM:CreateItem("item_junk_gardenpot", {
    Cost = 0,
    Model = "models/props_junk/terracotta01.mdl",
    Weight = 0.25,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_gardenpot") return drop end
})

i = GM:CreateItem("item_junk_paint", {
    Cost = 0,
    Model = "models/props_junk/metal_paintcan001a.mdl",
    Weight = 0.25,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_paint") return drop end
})

i = GM:CreateItem("item_junk_doll", {
    Cost = 0,
    Model = "models/props_c17/doll01.mdl",
    Weight = 0.15,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_doll") return drop end
})

i = GM:CreateItem("item_junk_pot", {
    Cost = 0,
    Model = "models/props_interiors/pot02a.mdl",
    Weight = 0.2,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_pot") return drop end
})

i = GM:CreateItem("item_junk_hula", {
    Cost = 0,
    Model = "models/props_lab/huladoll.mdl",
    Weight = 0.1,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_hula") return drop end
})

i = GM:CreateItem("item_junk_nailbox", {
    Cost = 0,
    Model = "models/props_lab/box01a.mdl",
    Weight = 0.06,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_nailbox") return drop end
})

i = GM:CreateItem("item_junk_twig", {
    Cost = 0,
    Model = "models/props/cs_office/Snowman_arm.mdl",
    Weight = 0.1,
    Supply = -1,
    Rarity = RARITY_TRASH,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnouse")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_junk_twig") return drop end
})


-- crafting related


i = GM:CreateItem("item_craft_fueltank", {
    Cost = 500,
    Model = "models/props_junk/metalgascan.mdl",
    Weight = 0.25,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousevehicle")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_craft_fueltank") return drop end
})

i = GM:CreateItem("item_craft_wheel", {
    Cost = 300,
    Model = "models/props_vehicles/carparts_wheel01a.mdl",
    Weight = 1.5,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousevehicle")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_craft_wheel") return drop end
})

i = GM:CreateItem("item_craft_oil", {
    Cost = 500,
    Model = "models/props_junk/garbage_plasticbottle001a.mdl",
    Weight = 1,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousevehicle")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_craft_oil") return drop end
})

i = GM:CreateItem("item_craft_battery", {
    Cost = 500,
    Model = "models/Items/car_battery01.mdl",
    Weight = 0.6,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousecraftable")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_craft_battery") return drop end
})

i = GM:CreateItem("item_craft_ecb", {
    Cost = 250,
    Model = "models/props_lab/reciever01b.mdl",
    Weight = 0.35,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousecraftable")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_craft_ecb") return drop end
})

i = GM:CreateItem("item_craft_engine_small", {
    Cost = 1000,
    Model = "models/gibs/airboat_broken_engine.mdl",
    Weight = 3,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousevehicle")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_craft_engine_small") return drop end
})

i = GM:CreateItem("item_craft_engine_large", {
    Cost = 3000,
    Model = "models/props_c17/TrapPropeller_Engine.mdl",
    Weight = 5,
    Supply = -1,
    Rarity = 11,
    Category = 1,
    UseFunc = function(ply) ply:SendChat(translate.ClientGet(ply, "itemnousevehicle")) return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_craft_engine_large") return drop end
})

-- Misc


i = GM:CreateItem("item_boss_shard", {
    Cost = 45000,
    Model = "models/props_junk/rock001a.mdl",
    Weight = 1,
    Supply = -1,
    Rarity = RARITY_EVENT,
    Category = 1,
    UseFunc = function(ply)
        local random = table.Random({
            "This is going to be a terrible time...",
            "Calm before the storm...",
            "A boss is being created by the unknown powers...",
            "There is no going back now...",
        })
        GAMEMODE:SystemBroadcast(random, Color(115,205,205), false)
        GAMEMODE:SpawnBoss(#player.GetAll() + 8, true)
    return true end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_boss_shard") return drop end
})

i = GM:CreateItem("item_difficulty_shard", {
    Cost = 35000,
    Model = "models/props_junk/rock001a.mdl",
    Weight = 1,
    Supply = -1,
    Rarity = RARITY_EVENT,
    Category = 1,
    UseFunc = function(ply)
        if GAMEMODE.InfectionLevelIncreaseType ~= 1 then PrintMessage(3, "Item is unusable currently at the moment due to config setting (GAMEMODE.InfectionLevelIncreaseType need to be 1)") return false end
        local random = table.Random({
            "You feel like zombies suddenly become stronger...",
            "Zombies become stronger. This isn't good...",
            "You are not going to survive this...",
        })

        local set = math.max(0, GAMEMODE:GetInfectionLevel() + 50)
        GAMEMODE:SystemBroadcast(random.." ("..GAMEMODE:GetInfectionLevel().."% -> "..set.."%)", Color(115,205,205), false)
        GAMEMODE:SetInfectionLevel(set)
    return true end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_difficulty_shard") return drop end
})

i = GM:CreateItem("item_money", {
    Cost = 0,
    Model = "models/props/cs_assault/Money.mdl",
    Weight = 0,
    Supply = -1,
    Rarity = RARITY_COMMON,
    Category = 1,
    UseFunc = function(ply) ply:SendChat("Added "..ply.Inventory["item_money"].."$ to account") ply.Money = ply.Money + ply.Inventory["item_money"] ply.Inventory["item_money"] = nil return false end,
    DropFunc = function(ply) ply:SendChat("You may not drop this item.") --[[local drop = UseFunc_DropItem(ply, "item_money") return drop]] return false end
})

i = GM:CreateItem("item_moneyprinter", {
    Cost = 0,
    Model = "models/props_c17/consolebox01a.mdl",
    Weight = 5,
    Supply = -1,
    Rarity = 6,
    Category = 1,
    UseFunc = function(ply) ply:SendChat("Added "..ply.Inventory["item_money"].."$ to account") ply.Money = ply.Money + ply.Inventory["item_money"] ply.Inventory["item_money"] = nil return false end,
    DropFunc = function(ply) local drop = UseFunc_DropItem(ply, "item_moneyprinter") return drop end
})
