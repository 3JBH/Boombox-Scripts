local TweenService = game:GetService("TweenService")
local UI = game:GetObjects("rbxassetid://7471025278")[1]
UI.Parent = game["CoreGui"]
local Main = UI["Main"]
local NotifyFrame = UI.Notifaction
local AntiArea = Main["AntiLogArea"]
local MiscArea = Main["MiscArea"]
local Input = AntiArea["Input"]
local AntiLayout = AntiArea["Layout"]
local Play = AntiLayout["Play"]
local Sync = AntiLayout["Sync"]
local MiscLayout = MiscArea["Layout"]
local Amount = MiscLayout["Amount"]
local TimePos = MiscLayout["TimePos"]
local DupeB = MiscLayout["Dupe"]
local Close = Main["Close"]
local Player = game.Players.LocalPlayer
function notify(arg)
	if arg then
		NotifyFrame.Description.Text = arg
	else
		NotifyFrame.Description.Text = "Blank Notifaction"
	end
	NotifyFrame:TweenPosition(UDim2.new(0, 0, .825, 0), "Out", "Linear", .5)
	wait(2.5)
	NotifyFrame:TweenPosition(UDim2.new(-2, 0, .825, 0), "Out", "Linear", 2.5)
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
function Format(Int)
	return string.format("%02i", Int)
end
function getVersion(id)
	return tonumber(string.match(game:HttpGetAsync("http://www.roblox.com/studio/plugins/info?assetId=" .. tostring(tonumber(id))), "value=\"(%d+)\""))
end
function confuzzle(text)
	if type(text) == "number" then
		text = string.format("0x%X", text)
	end
	return (string.gsub(text, ".", function(symbol)
		return string.format(({"%%%x", "%%%X"})[math.random(2)], string.byte(string[({"upper", "lower"})[math.random(2)]](symbol)))
	end))
end
function genId(ToConvert)
	local function E(id, bool)
		return tostring(("&" .. confuzzle("assetversionid") .. (bool and "=\n\r" or "\n\r=") .. confuzzle(id) or ""))
	end
	local IdStorage = {E(getVersion(ToConvert), true), E(359218057), E(363537554), E(307950810), E(307918992)}
	local function X()
		return tostring(table.remove(IdStorage, math.random(#IdStorage, #IdStorage)))
	end
	local RetId = string.rep("\n=ƒ=ƒ=ƒ=ƒ=ƒ=ƒ\n" .. X() .. "\n=ƒ=ƒ=ƒ=ƒ=ƒ=ƒ\n" .. X() .. "\n=ƒ=ƒ=ƒ=ƒ=ƒ=ƒ\n", 4)
	while #IdStorage > 0 do
		RetId = RetId .. X()
	end
	return tostring(RetId)
end
Main["Active"] = true
Main["Draggable"] = true
NotifyFrame.Description["TextWrapped"] = true
Close["MouseButton1Down"]:connect(function()
	UI:Remove()
end)
Input.FocusLost:connect(function()
	if not tonumber(Input.Text) then
		notify("Invalid Audio ID provided")
	end
end)
Amount.FocusLost:connect(function()
	if not tonumber(Amount.Text) then
		notify("Invalid dupe amount")
	end
end)
DupeB.MouseButton1Down:connect(function()
	notify("Duping " .. tonumber(Amount.Text) .. " Tools")
	Dupe(tonumber(Amount.Text))
	wait()
	Amount.Text = ""
end)
Play.MouseButton1Down:connect(function()
	if not tonumber(Input.Text) then
		notify("Invalid Audio ID provided")
		return
	end
	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Character
	end
	wait()
	local Bait = confuzzle("142376088")
	local ID = genId(Input.Text)
	ID = string.gsub(ID, "%X%x", function(symbol)
		return symbol .. string.rep("  ", 2)
	end)
	Bait = string.gsub(Bait, "%x%x", function(symbol)
		return symbol .. string.rep("   ", 2)
	end)
	h = "&\n?\n     <verts>\n        " .. confuzzle(Bait) .. "\n     </>\n     <string>\n        " .. Player.Name .. " <- cool kid\n     </>\n     <lol nigger>\n     </>\n?"
	ID = "0\n?\n \n\n\n\n          [ verts ? discord.gg/uv9D4XGRtP ]" .. ID .. h
	for i, v in next, Player.Character:GetDescendants() do
		if v:IsA("RemoteEvent") then
			v:FireServer("PlaySong", ID)
		end
	end
	wait(1)
	Input.Text = ""
end)
Sync.MouseButton1Down:connect(function()
	for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("Sound") then
			v.TimePosition = 0
		end
	end
	notify("Synced all boomboxes")
end)
TimePos.FocusLost:connect(function()
	for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("Sound") then
			v.TimePosition = tonumber(TimePos.Text)
		end
	end
	notify("Synced all boomboxes to \"" .. tonumber(TimePos.Text) .. "\"")
	wait(.5)
	TimePos.Text = ""
end)
for i, v in pairs(UI:GetDescendants()) do
	if v.Name == "Circle" then
		v.BackgroundColor3 = Color3.fromRGB(136, 96, 255)
	end
end
for i, v in pairs(UI:GetDescendants()) do
	if v:IsA("TextBox") then
		v.ClipsDescendants = true
		local ColorR = v.BackgroundColor3.R * 255
		local ColorG = v.BackgroundColor3.G * 255
		local ColorB = v.BackgroundColor3.B * 255
		local HoverIn = TweenService:Create(v, TweenInfo.new(.17, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(ColorR + 25, ColorG + 25, ColorB + 25)
		})
		local HoverOut = TweenService:Create(v, TweenInfo.new(.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
			BackgroundColor3 = Color3.fromRGB(ColorR, ColorG, ColorB)
		})
		v.MouseEnter:Connect(function()
			HoverIn:play()
		end)
		v.MouseLeave:Connect(function()
			HoverOut:play()
		end)
		local Circle = v.Circle
		v.MouseEnter:connect(function(X, Y)
			v.FocusLost:connect(function()
				local Clone = Circle:Clone()
				Clone.Parent = v
				Clone.Position = UDim2.new(0, X - v.AbsolutePosition.X, 0, Y - v.AbsolutePosition.Y - 36)
				Clone.Visible = true
				TweenService:Create(Clone, TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1,
					Size = UDim2.new(1.5, 0, 1.5, 0)
				}):play()
				wait(.4)
				Clone:remove()
				v.MouseLeave:connect(function()
					X = nil
					Y = nil
				end)
			end)
		end)
	end
end
for i, v in pairs(UI:GetDescendants()) do
	if v:IsA("TextButton") then
		local ColorR = v.BackgroundColor3.R * 255
		local ColorG = v.BackgroundColor3.G * 255
		local ColorB = v.BackgroundColor3.B * 255
		local HoverIn = TweenService:Create(v, TweenInfo.new(.17, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(ColorR + 25, ColorG + 25, ColorB + 25)
		})
		local HoverOut = TweenService:Create(v, TweenInfo.new(.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
			BackgroundColor3 = Color3.fromRGB(ColorR, ColorG, ColorB)
		})
		v.MouseEnter:Connect(function()
			HoverIn:play()
		end)
		v.MouseLeave:Connect(function()
			HoverOut:play()
		end)
		local Circle = v.Circle
		v.MouseButton1Down:connect(function(X, Y)
			local Clone = Circle:Clone()
			Clone.Parent = v
			Clone.Position = UDim2.new(0, X - v.AbsolutePosition.X, 0, Y - v.AbsolutePosition.Y - 36)
			Clone.Visible = true
			TweenService:Create(Clone, TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
				BackgroundTransparency = 1,
				Size = UDim2.new(1.5, 0, 1.5, 0)
			}):play()
			wait(.4)
			Clone:remove()
		end)
	end
end
for i, v in pairs(UI:GetDescendants()) do
	if v:IsA("TextBox") then
		v.Changed:connect(function(x)
			if x == "Text" then
				TweenService:Create(v, TweenInfo.new(.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
					TextColor3 = Color3.fromRGB(136, 96, 255)
				}):play()
			end
			if v.Text == "" then
				v.TextColor3 = Color3.fromRGB(255, 255, 255)
			end
		end)
	end
end
