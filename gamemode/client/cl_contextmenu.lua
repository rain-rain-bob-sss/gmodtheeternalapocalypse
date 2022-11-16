-------------------------------- Context Menu --------------------------------


function GM:OnContextMenuOpen()
	if IsValid(ContextMenu) then return end
	gui.EnableScreenClicker(true)
	timer.Create("EnableScreenClicker_CMenu", 0, 0, function() gui.EnableScreenClicker(true) end)
	CMenu()
	ContextMenu:SetVisible(true)
end

function GM:OnContextMenuClose()
	if !IsValid(ContextMenu) then return end
	ContextMenu:SetVisible(false)
	ContextMenu:Remove()
	if timer.Exists("EnableScreenClicker_CMenu") then timer.Destroy("EnableScreenClicker_CMenu") end
	gui.EnableScreenClicker(false)
end


function CMenu()
	ContextMenu = vgui.Create("DFrame")
	ContextMenu:SetSize(600, 600)
	ContextMenu:Center()
	ContextMenu:SetTitle("")
	ContextMenu:SetDraggable(false)
	ContextMenu:SetVisible(true)
	ContextMenu:ShowCloseButton(false)
	ContextMenu.Paint = function()
		surface.DrawCircle(ContextMenu:GetWide() / 2, ContextMenu:GetTall() / 2, 150, Color(100, 100, 100, 205))
		surface.DrawCircle(ContextMenu:GetWide() / 2, ContextMenu:GetTall() / 2, 140, Color(100, 100, 100, 205))
	end

	local NukeButton = vgui.Create("DButton", ContextMenu)
	NukeButton:SetSize(120, 40)
	NukeButton:Center()
	local x,y = NukeButton:GetPos()
	NukeButton:SetPos(x - 175, y - 125)
	NukeButton:SetText(translate.Get("clearprops"))
	NukeButton:SetTextColor(Color(255,155,155,255))
	NukeButton.Paint = function(panel)
		surface.SetDrawColor(250, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, NukeButton:GetWide(), NukeButton:GetTall())
		draw.RoundedBox(2, 0, 0, NukeButton:GetWide(), NukeButton:GetTall(), Color(0, 0, 0, 130))
	end
	NukeButton.DoClick = function()
		RunConsoleCommand("-menu_context")
		ConfirmPropDestroy()
	end

	local PrestigeButton = vgui.Create("DButton", ContextMenu)
	PrestigeButton:SetSize(120, 40)
	PrestigeButton:Center()
	local x,y = PrestigeButton:GetPos()
	PrestigeButton:SetPos(x + 175, y - 125)
	PrestigeButton:SetText(translate.Get("doprestige1"))
	PrestigeButton:SetTextColor(Color(255, 255, 0, 255))
	PrestigeButton.Paint = function(panel)
		surface.SetDrawColor(150, 150, 200, 255)
		surface.DrawOutlinedRect(0, 0, PrestigeButton:GetWide(), PrestigeButton:GetTall())
		draw.RoundedBox(2, 0, 0, PrestigeButton:GetWide(), PrestigeButton:GetTall(), Color(0, 0, 0, 130))
	end
	PrestigeButton.DoClick = function()
		RunConsoleCommand("-menu_context")
		WantToPrestige()
	end

-- this needs to be replaced with something else
	local SpecialButton = vgui.Create("DButton", ContextMenu)
	SpecialButton:SetSize(120, 40)
	SpecialButton:Center()
	local x,y = SpecialButton:GetPos()
	SpecialButton:SetPos(x + 175, y + 125)
	SpecialButton:SetText("WORK IN PROGRESS")
	SpecialButton:SetTextColor(Color(255, 255, 255, 255))
	SpecialButton.Paint = function(panel)
		surface.SetDrawColor(150, 250, 0, 255)
		surface.DrawOutlinedRect(0, 0, SpecialButton:GetWide(), SpecialButton:GetTall())
		draw.RoundedBox(2, 0, 0, SpecialButton:GetWide(), SpecialButton:GetTall(), Color(0, 0, 0, 130))
	end
	SpecialButton.DoClick = function()
		RunConsoleCommand("-menu_context")
	end

	local RefreshInvButton = vgui.Create("DButton", ContextMenu)
	RefreshInvButton:SetSize(120, 40)
	RefreshInvButton:Center()
	local x,y = RefreshInvButton:GetPos()
	RefreshInvButton:SetPos(x - 175, y + 125)
	RefreshInvButton:SetText(translate.Get("refreshinv"))
	RefreshInvButton:SetTextColor(Color(75, 150, 225, 255))
	RefreshInvButton.Paint = function(panel)
		surface.SetDrawColor(0, 100, 150, 255)
		surface.DrawOutlinedRect(0, 0, RefreshInvButton:GetWide(), RefreshInvButton:GetTall())
		draw.RoundedBox(2, 0, 0, RefreshInvButton:GetWide(), RefreshInvButton:GetTall(), Color(0, 0, 0, 130))
	end
	RefreshInvButton.DoClick = function()
		RunConsoleCommand("-menu_context")
		RunConsoleCommand("refresh_inventory")
	end

	local VersionButton = vgui.Create("DButton", ContextMenu)
	VersionButton:SetSize(120, 40)
	VersionButton:Center()
	local x,y = VersionButton:GetPos()
	VersionButton:SetPos(x, y - 180)
	VersionButton:SetText(translate.Get("gmver"))
	VersionButton:SetTextColor(Color(255, 255, 255, 255))
	VersionButton.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, VersionButton:GetWide(), VersionButton:GetTall())
		draw.RoundedBox(2, 0, 0, VersionButton:GetWide(), VersionButton:GetTall(), Color(0, 0, 0, 130))
	end
	VersionButton.DoClick = function()
		RunConsoleCommand("-menu_context")
		chat.AddText(Color(255,255,155,255), "Gamemode '"..GAMEMODE.Name.."' ("..GAMEMODE.AltName..") made by "..GAMEMODE.Author.." \nOriginal Creator of After The End (LegendofRobbo) \nVersion "..GAMEMODE.Version.." / "..GAMEMODE.Website)
	end

	local CashButton = vgui.Create("DButton", ContextMenu)
	CashButton:SetSize(120, 40)
	CashButton:Center()
	local x,y = CashButton:GetPos()
	CashButton:SetPos(x + 220, y)
	CashButton:SetText(translate.Get("dropcash"))
	CashButton:SetTextColor(Color(255, 255, 255, 255))
	CashButton.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, CashButton:GetWide(), CashButton:GetTall())
		draw.RoundedBox(2, 0, 0, CashButton:GetWide(), CashButton:GetTall(), Color(0, 0, 0, 130))
	end
	CashButton.DoClick = function()
		DropGoldMenu()
		RunConsoleCommand("-menu_context")
	end


	local PVPButton = vgui.Create("DButton", ContextMenu)
	PVPButton:SetSize(120, 40)
	PVPButton:Center()
	local x,y = PVPButton:GetPos()
	PVPButton:SetPos(x, y + 180)
	PVPButton:SetText(translate.Get("togglepvp"))
	PVPButton:SetTextColor(Color(255, 255, 255, 255))
	PVPButton.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, PVPButton:GetWide(), PVPButton:GetTall())
		draw.RoundedBox(2, 0, 0, PVPButton:GetWide(), PVPButton:GetTall(), Color(0, 0, 0, 130))
	end
	PVPButton.DoClick = function()
		RunConsoleCommand("tea_togglepvp")
		RunConsoleCommand("-menu_context")
	end

	local EmoButton = vgui.Create("DButton", ContextMenu)
	EmoButton:SetSize(120, 40)
	EmoButton:Center()
	local x,y = EmoButton:GetPos()
	EmoButton:SetPos(x - 220, y)
	EmoButton:SetText(translate.Get("emotes"))
	EmoButton:SetTextColor(Color(255, 255, 255, 255))
	EmoButton.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, EmoButton:GetWide(), EmoButton:GetTall())
		draw.RoundedBox(2, 0, 0, EmoButton:GetWide(), EmoButton:GetTall(), Color(0, 0, 0, 130))
	end
	EmoButton.DoClick = function()
		RunConsoleCommand("-menu_context")
		Emotes()
	end

end


function ConfirmPropDestroy()
	local ConfirmFrame = vgui.Create("DFrame")
	ConfirmFrame:SetSize(300, 200)
	ConfirmFrame:Center()
	ConfirmFrame:SetTitle(translate.Get("clearingprops"))
	ConfirmFrame:SetDraggable(false)
	ConfirmFrame:SetVisible(true)
	ConfirmFrame:SetAlpha(0)
	ConfirmFrame:AlphaTo(255, 0.3, 0)
	ConfirmFrame:ShowCloseButton(true)
	ConfirmFrame:MakePopup()
	ConfirmFrame.Paint = function()
	draw.RoundedBox(2, 0, 0, ConfirmFrame:GetWide(), ConfirmFrame:GetTall(), Color(0, 0, 0, 200))
	surface.SetDrawColor(150, 150, 0, 255)
	surface.DrawOutlinedRect(0, 0, ConfirmFrame:GetWide(), ConfirmFrame:GetTall())
	end

	local derptext = vgui.Create("DLabel", ConfirmFrame)
	derptext:SetFont("TargetIDSmall")
	derptext:SetColor(Color(205,205,205,255))
	derptext:SetText("Are you sure?\nThis will delete all your active props and\nyou will not be refunded for them!\nIf you want to be refunded you will need\nto salvage your props by pressing R with\nbuild tool")
	derptext:SizeToContents()
	derptext:SetPos(10, 30)

	local doclear = vgui.Create("DButton", ConfirmFrame)
	doclear:SetSize(120, 40)
	doclear:SetPos(90, 140)
	doclear:SetText(translate.Get("doit"))
	doclear:SetTextColor(Color(255, 255, 255, 255))
	doclear.Paint = function(panel)
	surface.SetDrawColor(150,150,0,255)
	surface.DrawOutlinedRect(0,0, doclear:GetWide(), doclear:GetTall())
	draw.RoundedBox(2,0,0, doclear:GetWide(), doclear:GetTall(), Color(0,0,0,130))
	end
	doclear.DoClick = function()
	RunConsoleCommand("tea_clearmyprops")
	ConfirmFrame:Remove()
	end

end


function WantToPrestige()
	local WantToPrestigeFrame = vgui.Create("DFrame")
	WantToPrestigeFrame:SetSize(700,400)
	WantToPrestigeFrame:Center()
	WantToPrestigeFrame:SetTitle("Prestiging information panel")
	WantToPrestigeFrame:SetDraggable(false)
	WantToPrestigeFrame:SetVisible(true)
	WantToPrestigeFrame:SetAlpha(0)
	WantToPrestigeFrame:AlphaTo(255, 0.5, 0)
	WantToPrestigeFrame:ShowCloseButton(true)
	WantToPrestigeFrame:MakePopup()
	WantToPrestigeFrame.Paint = function()
		draw.RoundedBox(2, 0, 0, WantToPrestigeFrame:GetWide(), WantToPrestigeFrame:GetTall(), Color(0, 0, 0, 200))
		surface.SetDrawColor(150,150,0,255)
		surface.DrawOutlinedRect(0, 0, WantToPrestigeFrame:GetWide(), WantToPrestigeFrame:GetTall())
	end

	local prestigetext = vgui.Create("DLabel", WantToPrestigeFrame)
	prestigetext:SetFont("TargetIDSmall")
	prestigetext:SetColor(Color(205,205,205,255))
	prestigetext:SetText("Prestiging allows you to gain more levels depending on your Prestige level.\
It will also give you some advantage, depending on your Prestige.\
You need to be at least level "..GAMEMODE.MaxLevel.." (plus "..GAMEMODE.LevelsPerPrestige.." depending on prestige level) to prestige\
Additionally, if you prestige to a level that doesn't grant any additional buffs, \nyou will gain cash instead.\n\
Prestige 1 = Gain 5% more overall cash from killing zombies\
Prestige 2 = Spawn with 5 additional health\
Prestige 3 = +2kg max carry weight\
Prestige 4 = Jump +10 units higher\
Prestige 5 = Spawn with 5 additional armor\
Prestige 6 = +3kg max carry weight\
Prestige 8 = Take 5% less damage from all sources\
Prestige 10 = Start with 5 skill points every prestige\
Prestige 15 = Gain XP at 1.1x multiplier")
	prestigetext:SizeToContents()
	prestigetext:SetPos(10,30)

	local doprestige = vgui.Create("DButton", WantToPrestigeFrame)
	doprestige:SetSize(120, 40)
	doprestige:SetPos(290, 340)
	doprestige:SetText(translate.Get("doprestige2"))
	doprestige:SetTextColor(Color(255, 255, 255, 255))
	doprestige.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, doprestige:GetWide(), doprestige:GetTall())
		draw.RoundedBox(2, 0, 0, doprestige:GetWide(), doprestige:GetTall(), Color(0, 0, 0, 130))
	end
	doprestige.DoClick = function()
		WantToPrestigeFrame:Remove()
		local levelrequiredforprestige = GAMEMODE.MaxLevel + (GAMEMODE.LevelsPerPrestige * Myprestige)
		if Mylevel >= levelrequiredforprestige then
			ConfirmPrestige()
		else
			chat.AddText(Color(255,255,255,255), "[System] ", Color(255,155,155,255), "You must be at least level "..levelrequiredforprestige.." to prestige!")
			surface.PlaySound("buttons/button10.wav")
		end
	end
end

function ConfirmPrestige()
	local PrestigeFrame = vgui.Create("DFrame")
	PrestigeFrame:SetSize(300, 200)
	PrestigeFrame:Center()
	PrestigeFrame:SetTitle("Prestige?")
	PrestigeFrame:SetDraggable(false)
	PrestigeFrame:SetVisible(true)
	PrestigeFrame:SetAlpha(0)
	PrestigeFrame:AlphaTo(255, 0.5, 0)
	PrestigeFrame:ShowCloseButton(true)
	PrestigeFrame:MakePopup()
	PrestigeFrame.Paint = function()
		draw.RoundedBox(2, 0, 0, PrestigeFrame:GetWide(), PrestigeFrame:GetTall(), Color(0, 0, 0, 200))
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, PrestigeFrame:GetWide(), PrestigeFrame:GetTall())
	end

	local confirmprestigetext = vgui.Create("DLabel", PrestigeFrame)
	confirmprestigetext:SetFont("TargetIDSmall")
	confirmprestigetext:SetColor(Color(205,205,205,255))
	confirmprestigetext:SetText("ARE YOU SURE?\nThis will reset your level and your skills!\nYou will gain 1 prestige.\nYour skills points will not be refunded!\nThis cannot be undone!")
	confirmprestigetext:SizeToContents()
	confirmprestigetext:SetPos(10, 30)

	local confirmprestige = vgui.Create("DButton", PrestigeFrame)
	confirmprestige:SetSize(120, 40)
	confirmprestige:SetPos(90, 140)
	confirmprestige:SetText("Do it!")
	confirmprestige:SetTextColor(Color(255, 255, 255, 255))
	confirmprestige.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, confirmprestige:GetWide(), confirmprestige:GetTall())
		draw.RoundedBox(2, 0, 0, confirmprestige:GetWide(), confirmprestige:GetTall(), Color(0, 0, 0, 130))
	end
	confirmprestige.DoClick = function()
		PrestigeFrame:Remove()
		net.Start("Prestige")
		net.SendToServer()
	end
end

function DropGoldMenu()
	if IsValid(AdarFrame) then AdarFrame:Remove() end
	AdarFrame = vgui.Create("DFrame")
	AdarFrame:SetSize(300, 200)
	AdarFrame:Center()
	AdarFrame:SetTitle("Dropping Money...")
	AdarFrame:SetDraggable(false)
	AdarFrame:SetVisible(true)
	AdarFrame:SetAlpha(0)
	AdarFrame:AlphaTo(255, 0.3, 0)
	AdarFrame:ShowCloseButton(true)
	AdarFrame:MakePopup()
	AdarFrame.Paint = function()
		draw.RoundedBox(2, 0, 0, AdarFrame:GetWide(), AdarFrame:GetTall(), Color(0, 0, 0, 200))
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, AdarFrame:GetWide(), AdarFrame:GetTall())
	end

	local derptext = vgui.Create("DLabel", AdarFrame)
	derptext:SetFont("TargetIDSmall")
	derptext:SetColor(Color(205,205,205,255))
	derptext:SetText("How much cash do you want to drop?")
	derptext:SizeToContents()
	derptext:SetPos(10, 30)

	local derptext2 = vgui.Create("DLabel", AdarFrame)
	derptext2:SetFont("TargetIDSmall")
	derptext2:SetColor(Color(205,255,205,255))
	derptext2:SetText("Current Cash: "..Mymoney)
	derptext2:SizeToContents()
	derptext2:SetPos(10, 50)

	local Cash = vgui.Create("DNumberWang", AdarFrame)
	Cash:SetPos(10, 70)
	Cash:SetSize(150, 30)
	Cash:SetValue(1)
	Cash:SetMin(1)
	Cash:SetMax(99999999)

	local dodropcash = vgui.Create("DButton", AdarFrame)
	dodropcash:SetSize(120, 40)
	dodropcash:SetPos(90, 140)
	dodropcash:SetText("Drop Cash")
	dodropcash:SetTextColor(Color(255, 255, 255, 255))
	dodropcash.Paint = function(panel)
		surface.SetDrawColor(150,150,0,255)
		surface.DrawOutlinedRect(0, 0, dodropcash:GetWide(), dodropcash:GetTall())
		draw.RoundedBox(2, 0, 0, dodropcash:GetWide(), dodropcash:GetTall(), Color(0, 0, 0, 130))
	end
	dodropcash.DoClick = function()
		RunConsoleCommand("tea_dropcash", Cash:GetValue())
		AdarFrame:Remove()
	end
end


function Emotes()
	local EmoteFrame = vgui.Create("DFrame")
	EmoteFrame:SetSize(300, 400)
	EmoteFrame:Center()
	EmoteFrame:SetTitle("Emotes")
	EmoteFrame:SetDraggable(false)
	EmoteFrame:SetVisible(true)
	EmoteFrame:SetAlpha(0)
	EmoteFrame:AlphaTo(255, 0.3, 0)
	EmoteFrame:ShowCloseButton(true)
	EmoteFrame:MakePopup()
	EmoteFrame.Paint = function()
		draw.RoundedBox(2, 0, 0, EmoteFrame:GetWide(), EmoteFrame:GetTall(), Color(0, 0, 0, 200))
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, EmoteFrame:GetWide(), EmoteFrame:GetTall())
	end

	local derptext = vgui.Create("DLabel", EmoteFrame)
	derptext:SetFont("TargetIDSmall")
	derptext:SetColor(Color(205,205,205,255))
	derptext:SetText("Expressive Emotes")
	derptext:SizeToContents()
	derptext:SetPos(10, 20)

	local derptext = vgui.Create("DLabel", EmoteFrame)
	derptext:SetFont("TargetIDSmall")
	derptext:SetColor(Color(205,205,205,255))
	derptext:SetText("Goofy Emotes")
	derptext:SizeToContents()
	derptext:SetPos(160, 20)

	local derptext = vgui.Create("DLabel", EmoteFrame)
	derptext:SetFont("TargetIDSmall")
	derptext:SetColor(Color(205,205,205,255))
	derptext:SetText("RP Emotes")
	derptext:SizeToContents()
	derptext:SetPos(10, 250)

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 40)
	emtb:SetText("Greeting")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "wave")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 75)
	emtb:SetText("Cheer")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "cheer")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 110)
	emtb:SetText("Laugh")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "laugh")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 145)
	emtb:SetText("Tumbs up")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "agree")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 180)
	emtb:SetText("Disagree")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "disagree")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 215)
	emtb:SetText("Bow")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "bow")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 270)
	emtb:SetText("Halt!")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "halt")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 305)
	emtb:SetText("Forward")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "forward")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(10, 340)
	emtb:SetText("Regroup")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "group")
		EmoteFrame:Remove()
	end


	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(160, 40)
	emtb:SetText("Robot Dance")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "robot")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(160, 75)
	emtb:SetText("Sexy Dance")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "muscle")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(160, 110)
	emtb:SetText("Zombie Impersonation")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "zombie")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(160, 145)
	emtb:SetText("Boogie")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "dance")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(160, 180)
	emtb:SetText("Kung Fu")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "pers")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(160, 215)
	emtb:SetText("Come Get Some")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "becon")
		EmoteFrame:Remove()
	end

	local emtb = vgui.Create("DButton", EmoteFrame)
	emtb:SetSize(120, 30)
	emtb:SetPos(160, 250)
	emtb:SetText("Salute")
	emtb:SetTextColor(Color(255, 255, 255, 255))
	emtb.Paint = function(panel)
		surface.SetDrawColor(150, 150, 0, 255)
		surface.DrawOutlinedRect(0, 0, emtb:GetWide(), emtb:GetTall())
		draw.RoundedBox(2, 0, 0, emtb:GetWide(), emtb:GetTall(), Color(0, 0, 0, 130))
	end
	emtb.DoClick = function()
		RunConsoleCommand("act", "salute")
		EmoteFrame:Remove()
	end

end