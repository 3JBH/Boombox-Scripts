loadstring(game:HttpGet("https://raw.githubusercontent.com/3JBH/BoomBox-Hub/main/Verts-Hub/Encrypt.lua"))("Encrypt")
loadstring(game:HttpGet("https://raw.githubusercontent.com/3JBH/BoomBox-Hub/main/Verts-Hub/Encrypt1.lua"))("Arabic String")
local Request, GetAsset = nil, nil
if (syn and syn.request) then
	Request = syn.request 
	GetAsset = getsynasset
	print("Synapse")
elseif (identifyexecutor():find("ScriptWare") and http.request) then
	Request = http.request
	GetAsset = getcustomasset
	print("Script-Ware")
elseif (KRNL_LOADED and request) then
	Request = request
	print("Krnl")
elseif request then 
	Request = request
	print("Unknown Exploit")
else
	warn("Your exploit don't support Request")
end	
local JSONEncode, JSONDecode = function(Input)
	return game:GetService("HttpService"):JSONEncode(Input)
end, function(Input)
	return game:GetService("HttpService"):JSONDecode(Input)
end
local UI = game:GetObjects("rbxassetid://7468123464")[1]
UI.Parent = game:GetService("CoreGui")
local Prefix
local file
if not isfolder("Verts-Hub") then
	makefolder("Verts-Hub")
end
if not isfolder("Verts-Hub/Presets") then
	makefolder("Verts-Hub/Presets")
end
local List = listfiles("Verts-Hub/Presets")
if not isfolder("Verts-Hub/Theme") then
	makefolder("Verts-Hub/Theme")
end
if not isfolder("Verts-Hub/Assets") then
	makefolder("Verts-Hub/Assets")
end
if not isfile("Verts-Hub/Assets/Changes.config") then
	writefile("Verts-Hub/Assets/Changes.config", "{}")
end
if isfile("config.vh") then
	file = readfile("config.vh")
	Prefix = JSONDecode(file)["Prefix"]
else
	writefile("config.vh", JSONEncode({
		["Prefix"] = "!"
	}))
	file = readfile("config.vh")
end
if not isfile("Verts-Hub/Presets/Defauult.preset") then
	writefile("Verts-Hub/Presets/Default.preset", "for i, v in next, tools do\n    coroutine.wrap(\n        function()\n            local BP, BG, F = v.POSV.Value, v.GYROV.Value\n            local a, vol = 1, 0\n            while vis do\n                vol = tools[#tools].Handle.Sound.PlaybackLoudness / sens\n                ro = math.rad(a / 2 + (i * (360 / #tools)))\n                F = CFrame.new(torso.Position) * CFrame.Angles(0, ro, 0) * CFrame.new(0, 0, vol + offset)\n                BP.Position = F.p\n                BG.CFrame = CFrame.new(BG.Parent.Position, torso.Position + Vector3.new(0,tilt+math.sin(-vol*2),0))\n                a = a + speed / 2.5\n                game:GetService(\"RunService\").Heartbeat:wait()\n                v.Handle.Velocity = Vector3.new(0, 0, 30)\n                v.Handle.AssemblyLinearVelocity = Vector3.new(30,0,0)\n            end\n        end\n    )()\nend\n    ")
end
local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character
local Ignore = {"rbxasset://sounds/action_footsteps_plastic.mp3", "rbxasset://sounds/impact_water.mp3", "rbxasset://sounds/uuhhh.mp3", "rbxasset://sounds/action_swim.mp3", "rbxasset://sounds/action_get_up.mp3", "rbxasset://sounds/action_falling.mp3", "rbxasset://sounds/action_jump.mp3", "rbxasset://sounds/action_jump_land.mp3"}
local Commands = {"Mute", "Loopmute", "Unloopmute", "Equip", "Dupe <amount>", "Stopdupe", "Rejoin", "Goto", "Noclip", "Clip", "Demesh", "Prefix"}
local UIS = game:GetService("UserInputService")
local UserInput = game:GetService("UserInputService")
local Mouse = game.Players.LocalPlayer:GetMouse()
local pg = true
local listadd = true
local selected = nil
local grab = false
local noclip = false
local LogPlay = false
local dcPlay = false
local Held = false
local BackPlay = false
local fileName
function Format(Int)
	return string.format("%02i", Int)
end
function getVersion(id)
	return tonumber(string.match(game:HttpGetAsync("http://www.roblox.com/studio/plugins/info?assetId=" .. tostring(tonumber(id))), "value=\"(%d+)\""))
end
function confuzzle(str)
	if tonumber(str) then
		str = ("0x%02x"):format(str)
	end
	return (str:gsub(".", function(s)
		return ("%%%02x"):format(s:byte())
	end))
end
function genId(ToConvert)
	local function E(id, bool)
		return "&" .. confuzzle("assetversionid") .. (bool and "=\n\r" or "\n\r=") .. confuzzle(id) or ""
	end
	local IdStorage = {E(getVersion(ToConvert), true), E(307918992), E(307950810), E(363537554), E(359218057)}
	local function X()
		return tostring(table.remove(IdStorage, math.random(#IdStorage, #IdStorage)))
	end
	local RetId = ("\n" .. str(10) .. X() .. X() .. str(5) .. X()):rep(3)
	while #IdStorage > 0 do
		RetId = RetId .. X()
	end
	return tostring(RetId)
end
local Tween = function(Obj, Time, Style, Direction, Table)
	game:GetService("TweenService"):Create(Obj, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction], 0, false, 0), Table):Play()
end
function plr(String)
	local Found = {}
	local strl = String:lower()
	for i, v in pairs(game.Players:GetPlayers()) do
		if v.Name:lower():sub(1, #String) == String:lower() or v.DisplayName:lower():sub(1, #String) == String:lower() then
			table.insert(Found, v)
		end
	end
	return Found
end
function Visual(v)
	vis = true
	player = game.Players.LocalPlayer
	char = game.Players.LocalPlayer.Character
	tools = {}
	speed = 1
	offset = 1
	sens = 150
	tilt = 5
	if char.Humanoid.RigType == Enum.HumanoidRigType.R15 then
		torso = char.UpperTorso
	else
		torso = char.Torso
	end
	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Character
	end
	for i, v in pairs(char:GetDescendants()) do
		if v:IsA("Tool") then
			table.insert(tools, v)
		end
	end
	for i, v in pairs(char:GetDescendants()) do
		if v:IsA("Tool") then
			BG = Instance.new("BodyGyro", v.Handle)
			BG.Name = "GYRO"
			BG.MaxTorque = Vector3.new(1 / 0, 1 / 0, 1 / 0)
			BG.P = 1e5
			BP = Instance.new("BodyPosition", v.Handle)
			BP.Name = "BODYPOS"
			BP.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
			BP.P = 1e5
			BP.Position = v.Handle.Position
			BPV = Instance.new("ObjectValue", v)
			BPV.Name = "POSV"
			BPV.Value = BP
			BGV = Instance.new("ObjectValue", v)
			BGV.Name = "GYROV"
			BGV.Value = BG
			v.Handle:BreakJoints()
		end
	end
	loadstring(v)()
	wait(.05)
	for i, v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
		v:stop()
	end
	for i, v in next, tools do
		v.Unequipped:connect(function()
			vis = false
			pcall(function()
				v.Handle["GYRO"]:Remove()
				v.Handle["BODYPOS"]:Remove()
				v["POSV"]:Remove()
				v["GYROV"]:Remove()
			end)
		end)
	end
end
function Mesh()
	char = game.Players.LocalPlayer.Character
	for i, v in next, char:GetDescendants() do
		if v:IsA("SpecialMesh") then
			if v.Parent.Parent:IsA("Tool") then
				v:remove()
			end
		end
	end
end
function Equip()
	Player = game.Players.LocalPlayer
	local Arm
	if Player.Character:FindFirstChild("RightHand") then
		Arm = Player.Character["RightHand"]
	else
		Arm = Player.Character["Right Arm"]
	end
	for i, v in next, Player.Backpack:GetChildren() do
		if v:IsA("Tool") then
			v.Parent = Player.Character
			for _, x in pairs(Arm:GetChildren()) do
				if x.Name == "RightGrip" then
					local amt = _
					local num = 0
					for _ = 1, amt do
						wait()
						num = num + 1
						x.Name = "Grip_" .. num
					end
				end
			end
		end
	end
end
local Normal = {}
for i = 33, 126 do
	local x = string.char(i)
	Normal[x] = x
end
local function CleanStr(x)
	return x:lower():gsub(".", function(i)
		return Normal[i] or ""
	end):lower()
end
local function Unhash(x)
	return (x:gsub("%%(%x%x)", function(x)
		return string.char(tonumber(x, 16))
	end))
end
local Market = game:GetService("MarketplaceService")
function decryptAssetId(InputId)
	local IdCache, TestedCache = {}, {}
	InputId = CleanStr(Unhash(CleanStr(InputId)))
	while InputId:find("0x0x", 1, true) do
		InputId = InputId:gsub("0x0x", "0x")
	end
	for v in InputId:gsub("rbxassetid://", "id="):gsub("https?://www.roblox.com/asset/%?", ""):gmatch("([^&]+)") do
		local f = v:find("=", 1, true)
		local Ins = f and tonumber(v:sub(f + 1))
		if f and Ins and not table.find(TestedCache, Ins) and not table.find(IdCache, Ins) then
			TestedCache[#TestedCache + 1] = Ins
			if v:match("^assetversionid=") then
				local x = tonumber(game:HttpGet("" .. Ins))
				Ins = x or Ins
			end
			if not table.find(IdCache, Ins) then
				local a, b = pcall(Market.GetProductInfo, Market, Ins)
				if a and b and b.AssetTypeId == 3 then
					table.remove(IdCache)
					IdCache[#IdCache + 1] = tostring(Ins)
				end
			end
		end
	end
	return table.concat(IdCache, ", ")
end
function Dupe(Amount)
	local DropT = {}
	stopDupe = false
	local Pos = Player.Character.HumanoidRootPart.CFrame
	wait(.1)
	Player.Character:MoveTo(Vector3.new(0, 1e7, 0))
	wait(.15)
	Player.Character.HumanoidRootPart.Anchored = true
	for i = 1, Amount do
		if stopDupe then
			break
		end
		Player.Character:MoveTo(Vector3.new(0, 1e7, 0))
		wait(.15)
		for i, v in pairs(Player.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = Player.Character
				wait(.1)
				v.Parent = workspace
				table.insert(DropT, v)
			end
		end
		Player.Character:BreakJoints()
		Player.CharacterAdded:wait()
		Player.Character:MoveTo(Vector3.new(Pos))
		wait(.1)
		if stopDupe then
			break
		end
	end
	for i, v in pairs(DropT) do
		firetouchinterest(v.Handle, Player.Character.HumanoidRootPart, 0)
		repeat
			wait()
		until v.Parent == Player.Character
	end
	Player.Character.HumanoidRootPart.CFrame = Pos
end
function ChangeLog(aFeature1, aFeature2, aFixes1, aFixes2)
	local Gui = game:GetObjects("rbxassetid://7391627267")[1]
	Gui.Parent = game:GetService("CoreGui")
	local Main = Gui["Main"]
	local Features, Fixes = Main["New"], Main["Fixes"]
	local Feature1, Feature2 = Features["Feature1"], Features["Feature2"]
	local Description1, Description2 = Feature1["Description"], Feature2["Description"]
	local Fixes1, Fixes2 = Fixes["Fix1"], Fixes["Fix2"]
	Main["Position"] = UDim2.new(.499, 0, -2, 0)
	Feature1["Visible"] = false
	Feature2["Visible"] = false
	Fixes1["Visible"] = false
	Fixes2["Visible"] = false
	if aFeature1 then
		Feature1["Visible"] = true
		Feature1["Text"] = "    Added this (changelog)\n    "
		Description1["Text"] = "    All new features and fixes will appear here and in the discord\n    "
	end
	if aFeature2 then
		Feature2["Visible"] = true
		Feature2["Text"] = "    \n    "
		Description2["Text"] = "     \n    "
	end
	if aFixes1 then
		Fixes1["Visible"] = true
		Fixes1["Text"] = "    Fixed themes not working (I messed up the version)\n    "
	end
	if aFixes2 then
		Fixes2["Visible"] = true
		Fixes2["Text"] = "        \n    "
	end
	Main:TweenPosition(UDim2.new(.499, 0, .499, 0), "Out", "Linear", .5)
	wait(3)
	Main:TweenPosition(UDim2.new(.499, 0, 2, 0), "Out", "Linear", .5)
	writefile("Verts-Hub/Assets/Changes.config", JSONEncode({
		["ChangeVer"] = "1"
	}))
end
local Main = UI.Main
local Layout = Main.Layout
local Side = Main.Side
local SideLayout = Side.Layout
local Slider = Layout.Frame3.Length.Slider
local GameFrame = Layout.Frame1
local PlayersFrame = Layout.Frame2
local AntiFrame = Layout.Frame3
local LogFrame = Layout.Frame4
local DecodeFrame = Layout.Frame5
local VisualFrame = Layout.Frame6
local CmdFrame = Layout.Frame7
local SettingFrame = Layout.Frame8
local gButton = SideLayout.Button1
local pButton = SideLayout.Button2
local alButton = SideLayout.Button3
local lButton = SideLayout.Button4
local dButton = SideLayout.Button5
local vButton = SideLayout.Button6
local cButton = SideLayout.Button7
local sButton = SideLayout.Button8
local Close = Main.Top.Button
local Sync = AntiFrame.Sync
local VisButton = VisualFrame.Visualize
local Refresh = VisualFrame.Refresh
local Decode = DecodeFrame.Sync
local dCopy = DecodeFrame.Copy
local Copy = LogFrame.Layout.Copy
local WorkspaceL = LogFrame.Layout.Workspace
local GameL = LogFrame.Layout.Game
local lDecode = LogFrame.Layout.Decode
local Play = LogFrame.Layout.Play
local GrabTools = SettingFrame.GrabTools
local dPlay = DecodeFrame.Play
local presetButton = SettingFrame.PresetMaker
local Sync2 = VisualFrame.Sync
local BackButton = SettingFrame.BackPlay
local PlrName = Side.plrname
local PlrVH = Side.plrvhid
local PlrIcon = Side.plricon
local Output = DecodeFrame.Output
local Song = Layout.Frame3.Length.Song
local themeImage = Main.Image
local Input = AntiFrame.Input
local TpInput = AntiFrame.TimeInput
local CmdBar = CmdFrame.CmdBar
local vInput = VisualFrame.Input
local Offset = VisualFrame.Offset
local Speed = VisualFrame.Speed
local Sensitivity = VisualFrame.Sensitivity
local Tilt = VisualFrame.Tilt
local dInput = DecodeFrame.Input
local pInput = VisualFrame.pInput
local FileInput = DecodeFrame.FileInput
Main.Active = true
PlrName.Text = Player.Name
PlrVH.Text = "NiggerPoopSex"
PlrVH.TextSize = 10
PlrIcon.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. Player.UserId .. "&width=420&height=420&format=png"
Close.MouseButton1Down:connect(function()
	wait(.5)
	UI:remove()
	return
end)
function Slide()
	while pl do
		wait()
		local errors = pcall(function()
			local m
			if BackPlay then
				repeat
					wait()
				until BPlaying == true
				for i, v in pairs(Player.Backpack:GetDescendants()) do
					if v:IsA("Sound") then
						m = v
					end
				end
			else
				m = Player.Character:FindFirstChildOfClass("Tool"):FindFirstChildWhichIsA("Sound", true)
			end
			Slider.Position = UDim2.new(m.TimePosition / m.TimeLength, 0, -.381, 0)
			local t = m.TimeLength - m.TimePosition
			local seconds = math.floor(t % 60)
			local minutes = math.floor(t / 60) % 60
			local t2 = m.TimeLength
			local seconds2 = math.floor(t2 % 60)
			local minutes2 = math.floor(t2 / 60) % 60
			AntiFrame.Length.Pos.Text = Format(minutes) .. ":" .. Format(seconds)
			AntiFrame.Length.Left.Text = "-" .. Format(minutes2) .. ":" .. Format(seconds2)
			wait()
		end)
		if errors then
		else
			pl = false
		end
	end
end
local Dragging
Slider.MouseButton1Down:connect(function()
	if not pl then
		return
	else
		Dragging = true
		pl = false
		repeat
			Slider.Position = UDim2.new(0, (Mouse.X - Layout.Frame3.Length.AbsolutePosition.X), -.381, 0)
			if Slider.Position.X.Offset < 0 then
				Slider.Position = UDim2.new(0, 0, -.381, 0)
			elseif Slider.Position.X.Offset + Slider.Size.X.Offset > Layout.Frame3.Length.AbsoluteSize.X then
				Slider.Position = UDim2.new(0, (Layout.Frame3.Length.AbsoluteSize.X - Slider.Size.X.Offset), -.381, 0)
			end
			wait()
		until Dragging == false
	end
end)
Mouse.Button1Up:connect(function()
	Dragging = false
	pl = true
end)
Slider.MouseButton1Up:connect(function()
	Dragging = false
	Player = game.Players.LocalPlayer
	Char = Player.Character
	if not BackPlay then
		for i, v in pairs(Char:GetDescendants()) do
			if v:IsA("Tool") then
				for _, z in pairs(v:GetDescendants()) do
					if z:IsA("Sound") then
						z.TimePosition = (Slider.AbsolutePosition.X - Layout.Frame3.Length.AbsolutePosition.X) / (Layout.Frame3.Length.AbsoluteSize.X - Slider.Size.X.Offset) * z.TimeLength
					end
				end
			end
		end
	else
		for i, v in pairs(Player.Backpack:GetDescendants()) do
			if v:IsA("Tool") then
				for _, z in pairs(v:GetDescendants()) do
					if z:IsA("Sound") then
						z.TimePosition = (Slider.AbsolutePosition.X - Layout.Frame3.Length.AbsolutePosition.X) / (Layout.Frame3.Length.AbsoluteSize.X - Slider.Size.X.Offset) * z.TimeLength
					end
				end
			end
		end
	end
	if not Dragging then
		pl = true
		Slide()
	end
end)
pInput.FocusLost:connect(function()
	if pInput.Text == "" then
		pInput.Text = "Enter a User"
		wait(1)
		pInput.Text = ""
	end
	for i, v in pairs(plr(string.sub(pInput.Text, 1))) do
		torso = v.Character["HumanoidRootPart"]
	end
	wait(.5)
	pInput.Text = ""
end)
Speed.FocusLost:connect(function()
	if tonumber(Speed.Text) <= 35 then
		speed = tonumber(Speed.Text)
		wait(2.5)
		Speed.Text = ""
	else
		Speed.Text = "0-35 Only"
		wait(2.5)
		Speed.Text = ""
	end
end)
Sensitivity.FocusLost:connect(function()
	if tonumber(Sensitivity.Text) >= 20 and tonumber(Sensitivity.Text) <= 300 then
		sens = tonumber(Sensitivity.Text)
		wait(2.5)
		Sensitivity.Text = ""
	else
		Sensitivity.Text = "20-300 Only"
		wait(2.5)
		Sensitivity.Text = ""
	end
end)
Offset.FocusLost:connect(function()
	if tonumber(Offset.Text) <= 100 then
		offset = tonumber(Offset.Text)
		wait(2.5)
		Offset.Text = ""
	else
		Offset.Text = "0-100 Only"
		wait(2.5)
		Offset.Text = ""
	end
end)
Tilt.FocusLost:connect(function()
	if tonumber(Tilt.Text) <= 30 then
		tilt = tonumber(Tilt.Text)
		wait(2.5)
		Tilt.Text = ""
	else
		Tilt.Text = "0-30 Only"
		wait(2.5)
		Tilt.Text = ""
	end
end)
Sync.MouseButton1Down:connect(function()
	if not BackPlay then
		for i, v in pairs(Player.Character:GetDescendants()) do
			if v:IsA("Sound") then
				v.TimePosition = 0
			end
		end
	else
		for i, v in pairs(Player.Backpack:GetDescendants()) do
			if v:IsA("Sound") then
				v.TimePosition = 0
			end
		end
	end
end)
Sync2.MouseButton1Down:connect(function()
	if not BackPlay then
		for i, v in pairs(Player.Character:GetDescendants()) do
			if v:IsA("Sound") then
				v.TimePosition = 0
			end
		end
	else
		for i, v in pairs(Player.Backpack:GetDescendants()) do
			if v:IsA("Sound") then
				v.TimePosition = 0
			end
		end
	end
end)
GrabTools.MouseButton1Down:connect(function()
	if not grab then
		grab = true
		GrabTools.Image = "rbxassetid://3926305904"
		GrabTools.ImageRectOffset = Vector2.new(312, 4)
		GrabTools.ImageRectSize = Vector2.new(24, 24)
	else
		grab = false
		GrabTools.Image = ""
		GrabTools.ImageRectOffset = Vector2.new(0, 0)
		GrabTools.ImageRectSize = Vector2.new(0, 0)
	end
end)
BackButton.MouseButton1Down:connect(function()
	if not BackPlay then
		BackPlay = true
		BackButton.Image = "rbxassetid://3926305904"
		BackButton.ImageRectOffset = Vector2.new(312, 4)
		BackButton.ImageRectSize = Vector2.new(24, 24)
	else
		BackPlay = false
		BackButton.Image = ""
		BackButton.ImageRectOffset = Vector2.new(0, 0)
		BackButton.ImageRectSize = Vector2.new(0, 0)
	end
end)
Input.FocusLost:connect(function(Enter)
	if Enter then
		local errors = pcall(function()
			local Playing = game:GetService("MarketplaceService"):GetProductInfo(Input.Text:match("%d+")).Name
			Song.Text = "Playing : " .. Playing
		end)
		if errors then
		else
		end
	end
end)
vInput.FocusLost:connect(function(Enter)
	if Enter then
		local errors = pcall(function()
			local Playing = game:GetService("MarketplaceService"):GetProductInfo(vInput.Text:match("%d+")).Name
			Song.Text = "Playing : " .. Playing
		end)
		if errors then
		else
		end
	end
end)
TpInput.FocusLost:connect(function()
	for i, v in pairs(Player.Character:GetDescendants()) do
		if v:IsA("Sound") then
			v.TimePosition = tonumber(TpInput.Text)
		end
	end
	wait(1)
	TpInput.Text = ""
end)
for i, v in pairs(Player.Backpack:GetDescendants()) do
	if v:IsA("Tool") then
		v.Unequipped:connect(function()
			pcall(function()
				Slider:TweenPosition(UDim2.new(0, 0, -.381, 0))
				AntiFrame.Length.Pos.Text = "0:00"
				AntiFrame.Length.Left.Text = "-0:00"
				Song.Text = "Playing : Nothing"
				wait()
			end)
		end)
	end
end
Input.FocusLost:Connect(function()
	pl = true
	Slide()
end)
vInput.FocusLost:Connect(function()
	pl = true
	Slide()
end)
WorkspaceL.MouseButton1Down:connect(function()
	local wspace = workspace:GetDescendants()
	for i, v in pairs(LogFrame.AudioLogs:GetDescendants()) do
		if not v:IsA("UIListLayout") then
			v:remove()
		end
	end
	for i = 1, #wspace do
		local v = wspace[i]
		if v:IsA("Sound") then
			if v.IsLoaded ~= false and not table.find(Ignore, v.SoundId) then
				local Holder = LogFrame.Holder:clone()
				local Frame = Holder.AudioFrame
				inf, info = pcall(function()
					return game:GetService("MarketplaceService"):GetProductInfo(v.SoundId:gsub("rbxassetid://", "", 1):gsub("http://www.roblox.com/asset/%?id=", "", 1):gsub("https://www.roblox.com/asset/%?id=", "", 1))
				end)
				if inf then
					Frame.AudioName.Text = info.Name
				elseif v.SoundId:match("^rbxassetid://sounds/") then
					Frame.AudioName.Text = v.SoundId:gsub("rbxasset://sounds/", "", 1)
				else
					Frame.AudioName.Text = v.Name
				end
				Holder.Visible = true
				Holder.Name = v.SoundId
				Frame.AudioID.Text = v.SoundId:gsub("http://www.roblox.com/asset/%?id=", "", 1)
				Tween(LogFrame.AudioLogs, .2, "Quad", "Out", {
					CanvasSize = UDim2.new(0, 0, 0, LogFrame.AudioLogs.UIListLayout.AbsoluteContentSize.Y * 1.5)
				})
				Holder.Parent = LogFrame.AudioLogs
				Frame.Select.MouseButton1Down:connect(function()
					active = nil
					active = v.SoundId
				end)
			end
		end
	end
end)
GameL.MouseButton1Down:connect(function()
	local wspace = game:GetDescendants()
	for i, v in pairs(LogFrame.AudioLogs:GetDescendants()) do
		if not v:IsA("UIListLayout") then
			v:remove()
		end
	end
	for i = 1, #wspace do
		local v = wspace[i]
		if v:IsA("Sound") then
			if v.IsLoaded ~= false and not table.find(Ignore, v.SoundId) then
				local Holder = LogFrame.Holder:clone()
				local Frame = Holder.AudioFrame
				inf, info = pcall(function()
					return game:GetService("MarketplaceService"):GetProductInfo(v.SoundId:gsub("rbxassetid://", "", 1):gsub("http://www.roblox.com/asset/%?id=", "", 1):gsub("https://www.roblox.com/asset/%?id=", "", 1))
				end)
				if inf then
					Frame.AudioName.Text = info.Name
				elseif v.SoundId:match("^rbxassetid://sounds/") then
					Frame.AudioName.Text = v.SoundId:gsub("rbxasset://sounds/", "", 1)
				else
					Frame.AudioName.Text = v.Name
				end
				Holder.Visible = true
				Holder.Name = v.SoundId
				Frame.AudioID.Text = v.SoundId:gsub("http://www.roblox.com/asset/%?id=", "", 1)
				Tween(LogFrame.AudioLogs, .2, "Quad", "Out", {
					CanvasSize = UDim2.new(0, 0, 0, LogFrame.AudioLogs.UIListLayout.AbsoluteContentSize.Y * 1.5)
				})
				Holder.Parent = LogFrame.AudioLogs
				Frame.Select.MouseButton1Down:connect(function()
					active = nil
					active = v.SoundId
				end)
			end
		end
	end
end)
Play.MouseButton1Down:connect(function()
	if not LogPlay then
		LogPlay = true
		local Sound = Instance.new("Sound")
		Sound.Parent = Main
		Sound.Looped = true
		Sound.SoundId = active
		Sound.Volume = 2
		Sound:play()
		Play.Text = "Stop"
	else
		local Sound = Main.Sound
		Sound:remove()
		LogPlay = false
		Play.Text = "Play Audio"
	end
end)
Copy.MouseButton1Down:connect(function()
	setclipboard(active)
end)
FileInput.FocusLost:connect(function()
	if isfile(FileInput.Text) then
		local File = readfile(FileInput.Text)
		FileInput.Text = ""
		local Sound = Instance.new("Sound")
		Sound.SoundId = File
		Sound.Volume = 0
		Sound:play()
		local decode = decryptAssetId(File, Sound.TimeLength)
		Output.Text = decode
		wait(1)
		Sound:remove()
	else
		FileInput.Text = "Couldnt find file"
		wait(1)
		FileInput.Text = ""
	end
end)
lDecode.MouseButton1Down:connect(function()
	Output.Text = ""
	local Sound = Instance.new("Sound")
	Sound.SoundId = active
	Sound.Volume = 0
	Sound:play()
	Layout.UIPageLayout:JumpTo(DecodeFrame)
	local decode = decryptAssetId(active, Sound.TimeLength)
	Output.Text = decode
	wait(1)
	Sound:remove()
end)
Decode.MouseButton1Down:connect(function()
	Output.Text = ""
	local Sound = Instance.new("Sound")
	Sound.SoundId = dInput.Text
	Sound.Volume = 0
	Sound:play()
	Layout.UIPageLayout:JumpTo(DecodeFrame)
	local decode = decryptAssetId(dInput.Text, Sound.TimeLength)
	Output.Text = decode
	wait(1)
	Sound:remove()
end)
dCopy.MouseButton1Down:connect(function()
	setclipboard(Output.Text)
end)
Input.FocusLost:connect(function(Enter)
	if Enter then
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			v.Parent = game.Players.LocalPlayer.Character
		end
		wait()
		local ID = genId(Input.Text)
		ID = string.gsub(ID, ".", function(symbol)
			return symbol .. ("   "):rep(5)
		end)
		Header = "        [\"" .. str(5) .. "\"]\n         /$$    /$$                      /$$             \n        | $$   | $$                     | $$             \n        | $$   | $$ /$$$$$$   /$$$$$$  /$$$$$$   /$$$$$$$\n        |  $$ / $$//$$__  $$ /$$__  $$|_  $$_/  /$$_____/\n         \\  $$ $$/| $$$$$$$$| $$  \\__/  | $$   |  $$$$$$ \n          \\  $$$/ | $$_____/| $$        | $$ /$$\\____  $$\n           \\  $/  |  $$$$$$$| $$        |  $$$$//$$$$$$$/\n            \\_/    \\_______/|__/         \\___/ |_______/ \n        [\"" .. str(10) .. "\"]\n        "
		ID = "nil\n?\n " .. Header .. "        [\"Verts Hub | discord.gg/vDWrXZPpFW\"]" .. ID
		if not BackPlay then
			for i, v in next, Player.Character:GetDescendants() do
				if v:IsA("RemoteEvent") then
					v:FireServer("PlaySong", ID)
				end
			end
		else
			local tools2 = {}
			T = false
			for i, v in pairs(Player.Character:GetChildren()) do
				if v:IsA("Tool") then
					table.insert(tools2, v)
					T = true
				end
			end
			if not T then
				for i, v in pairs(Player.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Parent = Char
						table.insert(tools2, v)
					end
				end
			end
			for i, v in pairs(Char:GetDescendants()) do
				if v:IsA("RemoteEvent") then
					v:FireServer("PlaySong", ID)
				end
			end
			wait(.6)
			for i, v in next, tools2 do
				for _, x in pairs(v:GetDescendants()) do
					if x:IsA("Sound") then
						x.Parent = game:GetService("CorePackages")
						Player.Character.Humanoid:UnequipTools()
						wait(.2)
						for a, b in next, tools2 do
							x.Parent = b
						end
					end
				end
			end
			for i, v in pairs(Player.Backpack:GetDescendants()) do
				if v:IsA("Sound") then
					v:Play()
					BPlaying = true
				end
			end
			for i, v in pairs(Player:GetDescendants()) do
				if v:IsA("Sound") then
					v.TimePosition = 0
				end
			end
		end
	end
	wait(1)
	Input.Text = ""
end)
vInput.FocusLost:connect(function(Enter)
	if Enter then
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			v.Parent = game.Players.LocalPlayer.Character
		end
		wait()
		local ID = genId(vInput.Text)
		ID = string.gsub(ID, ".", function(symbol)
			return symbol .. ("   "):rep(5)
		end)
		Header = "        [\"" .. str(5) .. "\"]\n         /$$    /$$                      /$$             \n        | $$   | $$                     | $$             \n        | $$   | $$ /$$$$$$   /$$$$$$  /$$$$$$   /$$$$$$$\n        |  $$ / $$//$$__  $$ /$$__  $$|_  $$_/  /$$_____/\n         \\  $$ $$/| $$$$$$$$| $$  \\__/  | $$   |  $$$$$$ \n          \\  $$$/ | $$_____/| $$        | $$ /$$\\____  $$\n           \\  $/  |  $$$$$$$| $$        |  $$$$//$$$$$$$/\n            \\_/    \\_______/|__/         \\___/ |_______/ \n        [\"" .. str(10) .. "\"]\n        "
		ID = "nil\n?\n " .. Header .. "        [\"Verts Hub | discord.gg/vDWrXZPpFW\"]" .. ID
		if not BackPlay then
			for i, v in next, Player.Character:GetDescendants() do
				if v:IsA("RemoteEvent") then
					v:FireServer("PlaySong", ID)
				end
			end
		else
			local tools2 = {}
			T = false
			for i, v in pairs(Player.Character:GetChildren()) do
				if v:IsA("Tool") then
					table.insert(tools2, v)
					T = true
				end
			end
			if not T then
				for i, v in pairs(Player.Backpack:GetChildren()) do
					if v:IsA("Tool") then
						v.Parent = Char
						table.insert(tools2, v)
					end
				end
			end
			for i, v in pairs(Char:GetDescendants()) do
				if v:IsA("RemoteEvent") then
					v:FireServer("PlaySong", ID)
				end
			end
			wait(.6)
			for i, v in next, tools2 do
				for _, x in pairs(v:GetDescendants()) do
					if x:IsA("Sound") then
						x.Parent = game:GetService("CorePackages")
						Player.Character.Humanoid:UnequipTools()
						wait(.2)
						for a, b in next, tools2 do
							x.Parent = b
						end
					end
				end
			end
			for i, v in pairs(Player.Backpack:GetDescendants()) do
				if v:IsA("Sound") then
					v:Play()
					BPlaying = true
				end
			end
			for i, v in pairs(Player:GetDescendants()) do
				if v:IsA("Sound") then
					v.TimePosition = 0
				end
			end
		end
	end
	wait(1)
	vInput.Text = ""
end)
dPlay.MouseButton1Down:connect(function()
	if not dcPlay then
		dcPlay = true
		local Sound = Instance.new("Sound")
		Sound.Parent = Main
		Sound.Looped = true
		Sound.SoundId = "rbxassetid://" .. Output.Text
		Sound.Volume = 2
		Sound:play()
		dPlay.Text = "Stop Playing"
	else
		local Sound = Main.Sound
		Sound:remove()
		dcPlay = false
		dPlay.Text = "Play Output"
	end
end)
presetButton.MouseButton1Down:connect(function()
	if game.CoreGui:FindFirstChild("Preset") then
		game.CoreGui.Preset:remove()
		wait(.5)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/3JBH/BoomBox-Hub/main/Verts-Hub/Preset-Maker-Source.lua"))()
	else
		loadstring(game:HttpGet("https://raw.githubusercontent.com/3JBH/BoomBox-Hub/main/Verts-Hub/Preset-Maker-Source.lua"))()
	end
end)
game.Players.LocalPlayer.Chatted:connect(function(msg)
	local low = string.lower(msg)
	local args = string.split(msg, " ")
	if args[1] == Prefix .. "demesh" then
		mesh()
	end
	if args[1] == Prefix .. "goto" then
		for i, v in pairs(plr(args[2])) do
			Char:MoveTo(v.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -3))
		end
	end
	if args[1] == Prefix .. "equip" then
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			v.Parent = game.Players.LocalPlayer.Character
		end
	end
	if args[1] == Prefix .. "dupe" then
		Dupe(tonumber(args[2]))
	end
	if args[1] == Prefix .. "prefix" then
		writefile("config.vh", JSONEncode({
			["Prefix"] = args[2]
		}))
		Prefix = args[2]
	end
end)
CmdBar.FocusLost:connect(function()
	if string.sub(CmdBar.Text, 1, 6) == "demesh" then
		Mesh()
	end
	if string.sub(CmdBar.Text, 1, 6) == "noclip" then
		noclip = true
		game.RunService.Stepped:connect(function()
			if noclip then
				Char.Humanoid:ChangeState(11)
			end
		end)
	end
	if string.sub(CmdBar.Text, 1, 4) == "clip" then
		noclip = false
	end
	if string.sub(CmdBar.Text, 1, 5) == "goto " then
		for _, v in pairs(plr(string.sub(CmdBar.Text, 6))) do
			Char:MoveTo(v.Character.HumanoidRootPart.Position + Vector3.new(0, 0, -3))
		end
	end
	if string.sub(CmdBar.Text, 1, 4) == "mute" then
		for i, v in next, game:GetDescendants() do
			if v:IsA("Sound") and not v:IsDescendantOf(Player.Character) then
				v:stop()
				v.Volume = 0
			end
		end
	end
	if string.sub(CmdBar.Text, 1, 8) == "loopmute" then
		CmdBar.Text = ""
		_G.mute = true
		while _G.mute do
			wait(.05)
			for i, v in next, game:GetDescendants() do
				if v:IsA("Sound") and not v:IsDescendantOf(Player.Character) then
					v:stop()
					v.Volume = 0
				end
			end
		end
	end
	if string.sub(CmdBar.Text, 1, 10) == "unloopmute" then
		_G.mute = false
	end
	if string.sub(CmdBar.Text, 1, 5) == "equip" then
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			v.Parent = game.Players.LocalPlayer.Character
		end
		wait()
	end
	if string.sub(CmdBar.Text, 1, 5) == "dupe " then
		if not tonumber(string.sub(CmdBar.Text, 6)) then
		else
			Dupe(tonumber(string.sub(CmdBar.Text, 6)))
		end
		wait(1)
		CmdBar.Text = ""
	end
	if string.sub(CmdBar.Text, 1, 8) == "stopdupe" then
		stopDupe = true
	end
	if string.sub(CmdBar.Text, 1, 6) == "rejoin" then
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
	if string.sub(CmdBar.Text, 1, 7) == "prefix " then
		writefile("config.vh", JSONEncode({
			["Prefix"] = string.sub(CmdBar.Text, 8)
		}))
		Prefix = string.sub(CmdBar.Text, 8)
	end
	wait(1)
	CmdBar.Text = ""
end)
gButton.MouseButton1Down:connect(function()
	Layout.UIPageLayout:JumpTo(GameFrame)
end)
pButton.MouseButton1Down:connect(function()
	Layout.UIPageLayout:JumpTo(PlayersFrame)
end)
alButton.MouseButton1Down:connect(function()
	Layout.UIPageLayout:JumpTo(AntiFrame)
end)
lButton.MouseButton1Down:connect(function()
	Layout.UIPageLayout:JumpTo(LogFrame)
end)
dButton.MouseButton1Down:connect(function()
	Layout.UIPageLayout:JumpTo(DecodeFrame)
end)
vButton.MouseButton1Down:connect(function()
	Layout.UIPageLayout:JumpTo(VisualFrame)
end)
cButton.MouseButton1Down:connect(function()
	Layout.UIPageLayout:JumpTo(CmdFrame)
end)
sButton.MouseButton1Down:connect(function()
	Layout.UIPageLayout:JumpTo(SettingFrame)
end)
for i = 1, #Commands do
	local Holder = CmdFrame.Back.Holder:clone()
	Holder.Visible = true
	Holder.Parent = CmdFrame.Back.Commands
	Holder.CmdFrame.Label.Text = Commands[i]
	Holder.Name = Commands[i]
end
CmdBar.Changed:connect(function()
	for i, v in next, CmdFrame.Back.Commands:GetChildren() do
		if not v:IsA("UIListLayout") then
			if string.find(v.Name:lower(), CmdBar.Text:lower()) then
				v.Visible = true
			else
				v.Visible = false
			end
		end
	end
end)
game.Players.PlayerRemoving:connect(function()
	for i, v in next, PlayersFrame.Players:GetChildren() do
		if not v:IsA("UIListLayout") then
			v:remove()
			pg = true
		end
	end
	while pg do
		p = game.Players:GetPlayers()
		for i, v in next, p do
			for i = #p, #p do
				local Holder = PlayersFrame.Holder:clone()
				Holder.Visible = true
				Holder.PlrFrame.PlrName.Text = "@" .. v.Name
				Holder.PlrFrame.PlrDisplay.Text = v.DisplayName
				Holder.PlrFrame.Icon.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. v.UserId .. "&width=420&height=420&format=png"
				Holder.Parent = PlayersFrame.Players
				PlayersFrame.Players.CanvasSize = UDim2.new(0, 0, 0 - #p, 0)
				PlayersFrame.Players.CanvasSize = UDim2.new(0, 0, 0 + #p * 1.5, 0)
			end
			pg = false
		end
	end
end)
game.Players.PlayerAdded:connect(function()
	for i, v in next, PlayersFrame.Players:GetChildren() do
		if not v:IsA("UIListLayout") then
			v:remove()
			pg = true
		end
	end
	while pg do
		p = game.Players:GetPlayers()
		for i, v in next, p do
			for i = #p, #p do
				local Holder = PlayersFrame.Holder:clone()
				Holder.Visible = true
				Holder.PlrFrame.PlrName.Text = "@" .. v.Name
				Holder.PlrFrame.PlrDisplay.Text = v.DisplayName
				Holder.PlrFrame.Icon.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. v.UserId .. "&width=420&height=420&format=png"
				Holder.Parent = PlayersFrame.Players
				PlayersFrame.Players.CanvasSize = UDim2.new(0, 0, 0 - #p, 0)
				PlayersFrame.Players.CanvasSize = UDim2.new(0, 0, 0 + #p * 1.5, 0)
			end
			pg = false
		end
	end
end)
while pg do
	p = game.Players:GetPlayers()
	for i, v in next, p do
		for i = #p, #p do
			local Holder = PlayersFrame.Holder:clone()
			Holder.Visible = true
			Holder.PlrFrame.PlrName.Text = "@" .. v.Name
			Holder.PlrFrame.PlrDisplay.Text = v.DisplayName
			Holder.PlrFrame.Icon.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. v.UserId .. "&width=420&height=420&format=png"
			Holder.Parent = PlayersFrame.Players
			PlayersFrame.Players.CanvasSize = UDim2.new(0, 0, 0 - #p, 0)
			PlayersFrame.Players.CanvasSize = UDim2.new(0, 0, 0 + #p * 1.5, 0)
		end
		pg = false
	end
end
List = listfiles("Verts-Hub/Presets")
for i, v in next, List do
	for i = #List, #List do
		local Holder = VisualFrame.Back.Holder:clone()
		local Frame = Holder.VisFrame
		Frame.Button.Name = v:sub(19)
		Frame.Label.Text = v:sub(19):split(".")[1]
		Holder.Parent = VisualFrame.Back.Presets
		Holder.Visible = true
		VisualFrame.Back.Presets.CanvasSize = UDim2.new(0, 0, 0 - #List, 0)
		VisualFrame.Back.Presets.CanvasSize = UDim2.new(0, 0, 0 + #List / 5, 0)
	end
end
Refresh.MouseButton1Down:connect(function()
	List = listfiles("Verts-Hub/Presets")
	for i, v in next, VisualFrame.Back.Presets:GetChildren() do
		if v:IsA("Frame") then
			v:remove()
		end
	end
	for i, v in next, List do
		for i = #List, #List do
			local Holder = VisualFrame.Back.Holder:clone()
			local Frame = Holder.VisFrame
			Frame.Button.Name = v:sub(19)
			Frame.Label.Text = v:sub(19):split(".")[1]
			Holder.Parent = VisualFrame.Back.Presets
			Holder.Visible = true
			VisualFrame.Back.Presets.CanvasSize = UDim2.new(0, 0, 0 - #List, 0)
			VisualFrame.Back.Presets.CanvasSize = UDim2.new(0, 0, 0 + #List / 5, 0)
		end
	end
	for i, v in next, VisualFrame.Back.Presets:GetDescendants() do
		if v:IsA("TextButton") then
			v.MouseButton1Down:connect(function()
				selected = nil
				selected = v.Name
			end)
		end
	end
end)
for i, v in next, VisualFrame.Back.Presets:GetDescendants() do
	if v:IsA("TextButton") then
		v.MouseButton1Down:connect(function()
			selected = nil
			selected = v.Name
		end)
	end
end
VisButton.MouseButton1Down:connect(function()
	if selected then
		if vis then
			Tool = char:FindFirstChildOfClass("Tool")
			ID = Tool.Handle.Sound.SoundId:gsub("http://www.roblox.com/asset/%?id=", "", 1)
			Time = Tool.Handle.Sound.TimePosition
			char.Humanoid:UnequipTools()
			Visual(readfile("Verts-Hub/Presets/" .. selected, true))
			Speed.Text = ""
			Offset.Text = ""
			Sensitivity.Text = ""
			Tilt.Text = ""
			selected = nil
			for i, v in pairs(char:GetDescendants()) do
				if v:IsA("RemoteEvent") then
					v:FireServer("PlaySong", ID)
				end
			end
			wait(.5)
			for i, v in pairs(char:GetDescendants()) do
				if v:IsA("Sound") then
					v.TimePosition = Time
				end
			end
		else
			Visual(readfile("Verts-Hub/Presets/" .. selected, true))
			for i, v in next, char.Humanoid:GetPlayingAnimationTracks() do
				v:stop()
			end
			Speed.Text = ""
			Offset.Text = ""
			Sensitivity.Text = ""
			Tilt.Text = ""
			selected = nil
		end
	end
end)
workspace.ChildAdded:connect(function(v)
	char = game.Players.LocalPlayer.Character
	if grab then
		if v:IsA("Tool") then
			wait()
			firetouchinterest(v.Handle, char.HumanoidRootPart, 0)
		end
	end
end)
function dragify(Frame)
	dragToggle = nil
	local dragSpeed = 0
	dragInput = nil
	dragStart = nil
	local dragPos = nil
	function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {
			Position = Position
		}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end
dragify(Main)
UIS.InputBegan:connect(function(InputObj, Process)
	if InputObj.KeyCode == Enum.KeyCode.RightControl then
		if Main.Visible then
			Main.Visible = false
		else
			Main.Visible = true
		end
	end
end)
function startTheme()
	if readfile("Verts-Hub/Theme/theme.vh") then
		Main.Split:remove()
		function gif(url)
			fileName = math.random(1, 999999)
			writefile("Verts-Hub/Assets/" .. fileName .. ".webm", Request({
				Url = url
			}).Body)
			return
		end
		themeImage.Visible = true
		themeImage.ZIndex = 1
		loadstring(readfile("Verts-Hub/Theme/theme.vh", true))()
		if Enabled then
			gif(Theme["webmUrl"])
			themeImage.Size = Theme["Image-Size"]
			themeImage.Position = Theme["Image-Pos"]
			Main.BackgroundColor3 = Theme["Main-Color"]
			Main.Top.version.ZIndex = Theme["ZIndex"]
			Main.Top.name.ZIndex = Theme["ZIndex"]
			for i, v in pairs(Main:GetChildren()) do
				if not v:IsA("UICorner") then
					v.BackgroundTransparency = Theme["Transparency"]
				end
			end
			for i, v in pairs(Layout:GetDescendants()) do
				if not v:IsA("UICorner") and not v:IsA("UIPageLayout") and not v:IsA("UIListLayout") then
					v.ZIndex = Theme["ZIndex"]
					Slider.BackgroundColor3 = Theme["Slider-Color"]
				end
				if v:IsA("TextButton") and v:IsA("TextBox") then
					v.BackgroundTransparency = .15
				end
			end
			for i, v in pairs(Layout:GetChildren()) do
				if not v:IsA("UICorner") and not v:IsA("UIPageLayout") and not v:IsA("UIListLayout") and v:IsA("Frame") then
					v.BackgroundTransparency = Theme["Transparency"]
				end
			end
			for i, v in pairs(Side.Layout:GetChildren()) do
				if v:IsA("TextButton") and not v:IsA("UIListLayout") then
					v.ZIndex = Theme["ZIndex"]
				end
			end
			if Theme.Animated then
				themeImage["Video"] = GetAsset("Verts-Hub/Assets/" .. fileName .. ".webm")
				themeImage:play()
				wait(.2)
				delfile("Verts-Hub/Assets/" .. fileName .. ".webm")
			end
		end
	end
end
local g = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
GameFrame.gameName.Text = g.Name
GameFrame.gameDesc.Text = g.Description
GameFrame.gameIcon.Image = "rbxassetid://" .. g.IconImageAssetId
GameFrame.players:remove()
setfflag("AbuseReportScreenshotPercentage", 0)
setfflag("DFFlagAbuseReportScreenshot", "False")
UI["Name"] = str(15)
changeversion = "1"
changedecoded = JSONDecode(readfile("Verts-Hub/Assets/Changes.config"))
if changedecoded["ChangeVer"] == changeversion then
else
	ChangeLog(true, false, true, false)
end
startTheme()
while wait() do
	Player = game.Players.LocalPlayer
end
