local UI = game:GetObjects("rbxassetid://7470816843")[1]
UI.Parent = game["CoreGui"]
local TweenService = game:GetService("TweenService")
local Main = UI["Frame"]
local themeImage = Main["Theme"]
local Pages = Main["Pages"]
local Side = Main["Side"]
local Close = Main["Close"]
local Layout = Pages["UIPageLayout"]
local Page1 = Pages["Page1"]
local Page2 = Pages["Page2"]
local Page3 = Pages["Page3"]
local SideLayout = Side["Layout"]
local MainButton = SideLayout["Main"]
local SettingsButton = SideLayout["Settings"]
local TogglesButton = SideLayout["Toggles"]
local Toggles = Page1["Selections"]
local Settings = Page2.Selections["ScrollingFrame"]
local Input = Page3.Input
local Save = Page3.Button
local Invis1 = Settings["1"]
local Invis2 = Settings["2"]
local Invis3 = Settings["3"]
local Invis4 = Settings["4"]
local Invis5 = Settings["5"]
local SpinLayout = Settings.SpinDirection.Frame["Layout"]
local OffsetLayout = Settings.SpinOffsets.Frame["Layout"]
local SideLayout = Settings.SideDirection.Frame["Layout"]
local RotationLayout = Settings.RotationDirection.Frame["Layout"]
local WaveLayout = Settings.WaveDirection.Frame["Layout"]
local TiltLayout = Settings.TiltDirection.Frame["Layout"]
local Color = Color3.fromRGB(140, 91, 204)
function slide(Str)
	Str.Frame:TweenPosition(UDim2.new(.733, 0, 0, 0), "In", "Linear", .1)
	wait(.1)
	Str.BackgroundColor3 = Color
end
function unslide(Str)
	Str.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "In", "Linear", .1)
	wait(.1)
	Str.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
end
Main.Active = true
Main.Draggable = true
local wave = false
local tilt = false
local rotation = false
local side = false
local active1 = false
local active2 = false
local active3 = false
local active4 = false
local active5 = false
local active6 = false
local spinx = false
local spiny = false
local spinz = false
local spinn = false
local offsetx = false
local offsety = false
local offsetz = false
local wavex = false
local wavey = false
local wavez = false
local tiltx = false
local tilty = false
local tiltz = false
local rotatex = false
local sidex = false
local sidey = false
local sidez = false
local spin1 = "0"
local spin2 = "0"
local spin3 = "0"
local wave1 = "0"
local wave2 = "0"
local wave3 = "0"
local tilt1 = "0"
local tilt2 = "0"
local tilt3 = "0"
local offset1 = "0"
local offset2 = "0"
local offset3 = "0"
local side1 = "0"
local side2 = "0"
local side3 = "0"
local rotate1 = "0"
local rotate2 = "0"
local rotate3 = "0"
Close.MouseButton1Down:connect(function()
	UI:remove()
end)
MainButton.MouseButton1Down:connect(function()
	Layout:JumpTo(Page3)
end)
SettingsButton.MouseButton1Down:connect(function()
	Layout:JumpTo(Page2)
end)
TogglesButton.MouseButton1Down:connect(function()
	Layout:JumpTo(Page1)
end)
Toggles.Wave.Button.MouseButton1Down:connect(function()
	if not wave then
		slide(Toggles.Wave.Button)
		wave = true
	else
		unslide(Toggles.Wave.Button)
		wave = false
		wave1 = "0"
		wave2 = "0"
		wave3 = "0"
	end
end)
Toggles.Tilt.Button.MouseButton1Down:connect(function()
	if not tilt then
		slide(Toggles.Tilt.Button)
		tilt = true
	else
		unslide(Toggles.Tilt.Button)
		tilt = false
		tilt1 = "0"
		tilt2 = "0"
		tilt3 = "0"
	end
end)
Toggles.Rotationn.Button.MouseButton1Down:connect(function()
	if not rotation then
		slide(Toggles.Rotationn.Button)
		rotation = true
	else
		unslide(Toggles.Rotationn.Button)
		rotation = false
		rotate1 = "0"
	end
end)
Toggles.Side.Button.MouseButton1Down:connect(function()
	if not side then
		slide(Toggles.Side.Button)
		side = true
	else
		unslide(Toggles.Side.Button)
		side = false
		side1 = "0"
		side2 = "0"
		side3 = "0"
	end
end)
Settings.SpinDirection.Button.MouseButton1Down:connect(function()
	local Frame = Settings.SpinDirection.Frame
	if not active1 then
		Invis1:TweenSize(UDim2.new(0, 317, 0, 91))
		Frame:TweenSize(UDim2.new(0, 317, 0, 100))
		Settings.SpinDirection.Button.Text = "▲"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = true
		end
		active1 = true
	else
		Invis1:TweenSize(UDim2.new(0, 317, 0, 0))
		Frame:TweenSize(UDim2.new(0, 317, 0, 0))
		Settings.SpinDirection.Button.Text = "▼"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = false
		end
		active1 = false
	end
end)
Settings.SpinOffsets.Button.MouseButton1Down:connect(function()
	local Frame = Settings.SpinOffsets.Frame
	if not active2 then
		Invis2:TweenSize(UDim2.new(0, 317, 0, 91))
		Frame:TweenSize(UDim2.new(0, 317, 0, 100))
		Settings.SpinOffsets.Button.Text = "▲"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = true
		end
		active2 = true
	else
		Invis2:TweenSize(UDim2.new(0, 317, 0, 0))
		Frame:TweenSize(UDim2.new(0, 317, 0, 0))
		Settings.SpinOffsets.Button.Text = "▼"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = false
		end
		active2 = false
	end
end)
Settings.WaveDirection.Button.MouseButton1Down:connect(function()
	local Frame = Settings.WaveDirection.Frame
	if not active3 then
		Invis3:TweenSize(UDim2.new(0, 317, 0, 91))
		Frame:TweenSize(UDim2.new(0, 317, 0, 100))
		Settings.WaveDirection.Button.Text = "▲"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = true
		end
		active3 = true
	else
		Invis3:TweenSize(UDim2.new(0, 317, 0, 0))
		Frame:TweenSize(UDim2.new(0, 317, 0, 0))
		Settings.WaveDirection.Button.Text = "▼"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = false
		end
		active3 = false
	end
end)
Settings.TiltDirection.Button.MouseButton1Down:connect(function()
	local Frame = Settings.TiltDirection.Frame
	if not active4 then
		Invis4:TweenSize(UDim2.new(0, 317, 0, 91))
		Frame:TweenSize(UDim2.new(0, 317, 0, 100))
		Settings.TiltDirection.Button.Text = "▲"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = true
		end
		active4 = true
	else
		Invis4:TweenSize(UDim2.new(0, 317, 0, 0))
		Frame:TweenSize(UDim2.new(0, 317, 0, 0))
		Settings.TiltDirection.Button.Text = "▼"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = false
		end
		active4 = false
	end
end)
Settings.RotationDirection.Button.MouseButton1Down:connect(function()
	local Frame = Settings.RotationDirection.Frame
	if not active5 then
		Invis5:TweenSize(UDim2.new(0, 317, 0, 91))
		Frame:TweenSize(UDim2.new(0, 317, 0, 100))
		Settings.RotationDirection.Button.Text = "▲"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = true
		end
		active5 = true
	else
		Invis5:TweenSize(UDim2.new(0, 317, 0, 0))
		Frame:TweenSize(UDim2.new(0, 317, 0, 0))
		Settings.RotationDirection.Button.Text = "▼"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = false
		end
		active5 = false
	end
end)
Settings.SideDirection.Button.MouseButton1Down:connect(function()
	local Frame = Settings.SideDirection.Frame
	if not active6 then
		Frame:TweenSize(UDim2.new(0, 317, 0, 100))
		Settings.SideDirection.Button.Text = "▲"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = true
		end
		active6 = true
	else
		Frame:TweenSize(UDim2.new(0, 317, 0, 0))
		Settings.SideDirection.Button.Text = "▼"
		wait(.5)
		for i, v in pairs(Frame:GetChildren()) do
			v.Visible = false
		end
		active6 = false
	end
end)
SpinLayout.X.Button.MouseButton1Down:connect(function()
	if not spinx then
		spinx = true
		spin1 = "ro"
		slide(SpinLayout.X.Button)
	else
		spinx = false
		spin1 = "0"
		unslide(SpinLayout.X.Button)
	end
end)
SpinLayout.Y.Button.MouseButton1Down:connect(function()
	if not spiny then
		spiny = true
		spin2 = "ro"
		slide(SpinLayout.Y.Button)
	else
		spiny = false
		spin2 = "0"
		unslide(SpinLayout.Y.Button)
	end
end)
SpinLayout.Z.Button.MouseButton1Down:connect(function()
	if not spinz then
		spinz = true
		spin3 = "ro"
		slide(SpinLayout.Z.Button)
	else
		spinz = false
		spin3 = "0"
		unslide(SpinLayout.Z.Button)
	end
end)
Settings.SpinDirection.Frame.None.Button.MouseButton1Down:connect(function()
	if not spinn then
		spinn = true
		spinz = false
		spiny = false
		spinx = false
		spin1 = "0"
		spin2 = "0"
		spin3 = "0"
		slide(Settings.SpinDirection.Frame.None.Button)
		unslide(SpinLayout.Z.Button)
		unslide(SpinLayout.Y.Button)
		unslide(SpinLayout.X.Button)
	else
		spinn = false
		unslide(Settings.SpinDirection.Frame.None.Button)
	end
end)
OffsetLayout.X.Button.MouseButton1Down:connect(function()
	if not offsetx then
		offsetx = true
		offset1 = "vol + offset"
		slide(OffsetLayout.X.Button)
	else
		offsetx = false
		offset1 = "0"
		unslide(OffsetLayout.X.Button)
	end
end)
OffsetLayout.Y.Button.MouseButton1Down:connect(function()
	if not offsety then
		offsety = true
		offset2 = "vol + offset"
		slide(OffsetLayout.Y.Button)
	else
		offsety = false
		offset2 = "0"
		unslide(OffsetLayout.Y.Button)
	end
end)
OffsetLayout.Z.Button.MouseButton1Down:connect(function()
	if not offsetz then
		offsetz = true
		offset3 = "vol + offset"
		slide(OffsetLayout.Z.Button)
	else
		offsetz = false
		offset3 = "0"
		unslide(OffsetLayout.Z.Button)
	end
end)
WaveLayout.X.Button.MouseButton1Down:connect(function()
	if not wavex then
		wavex = true
		wave1 = "vector"
		slide(WaveLayout.X.Button)
	else
		wavex = false
		wave1 = "0"
		unslide(WaveLayout.X.Button)
	end
end)
WaveLayout.Y.Button.MouseButton1Down:connect(function()
	if not wavey then
		wavey = true
		wave2 = "vector"
		slide(WaveLayout.Y.Button)
	else
		wavey = false
		wave2 = "0"
		unslide(WaveLayout.Y.Button)
	end
end)
WaveLayout.Z.Button.MouseButton1Down:connect(function()
	if not wavez then
		wavez = true
		wave3 = "vector"
		slide(WaveLayout.Z.Button)
	else
		wavez = false
		wave3 = "0"
		unslide(WaveLayout.Z.Button)
	end
end)
TiltLayout.X.Button.MouseButton1Down:connect(function()
	if not tiltx then
		tiltx = true
		tilt1 = "tilt"
		slide(TiltLayout.X.Button)
	else
		tiltx = false
		tilt1 = "0"
		unslide(TiltLayout.X.Button)
	end
end)
TiltLayout.Y.Button.MouseButton1Down:connect(function()
	if not tilty then
		tilty = true
		tilt2 = "tilt"
		slide(TiltLayout.Y.Button)
	else
		tilty = false
		tilt2 = "0"
		unslide(TiltLayout.Y.Button)
	end
end)
TiltLayout.Z.Button.MouseButton1Down:connect(function()
	if not tiltz then
		tiltz = true
		tilt3 = "tilt"
		slide(TiltLayout.Z.Button)
	else
		tiltz = false
		tilt3 = "0"
		unslide(TiltLayout.Z.Button)
	end
end)
RotationLayout.X.Button.MouseButton1Down:connect(function()
	if not rotatex then
		rotatex = true
		rotate1 = "xd/4"
		slide(RotationLayout.X.Button)
	else
		rotatex = false
		rotate1 = "0"
		unslide(RotationLayout.X.Button)
	end
end)
RotationLayout.Y.Button.MouseButton1Down:connect(function()
	if not rotatey then
		rotatey = true
		rotate2 = "xd/4"
		slide(RotationLayout.Y.Button)
	else
		rotatey = false
		rotate2 = "0"
		unslide(RotationLayout.Y.Button)
	end
end)
RotationLayout.Z.Button.MouseButton1Down:connect(function()
	if not rotatez then
		rotatez = true
		rotate3 = "xd/4"
		slide(RotationLayout.Z.Button)
	else
		rotatez = false
		rotate3 = "0"
		unslide(RotationLayout.Z.Button)
	end
end)
SideLayout.X.Button.MouseButton1Down:connect(function()
	if not sidex then
		sidex = true
		side1 = "math.sin((a/#tools/2),0) * 4"
		offset1 = "0"
		slide(SideLayout.X.Button)
	else
		sidex = false
		side1 = "0"
		unslide(SideLayout.X.Button)
	end
end)
SideLayout.Y.Button.MouseButton1Down:connect(function()
	if not sidey then
		sidey = true
		side2 = "math.sin((a/#tools/2),0) * 4"
		offset2 = "0"
		slide(SideLayout.Y.Button)
	else
		sidey = false
		side2 = "0"
		unslide(SideLayout.Y.Button)
	end
end)
SideLayout.Z.Button.MouseButton1Down:connect(function()
	if not sidez then
		sidez = true
		side3 = "math.sin((a/#tools/2),0) * 4"
		offset3 = "0"
		slide(SideLayout.Z.Button)
	else
		sidez = false
		side3 = "0"
		unslide(SideLayout.Z.Button)
	end
end)
Input.FocusLost:connect(function()
	Save.MouseButton1Down:connect(function()
		print(spin1, spin2, spin3)
		template = "for i, v in next, tools do\n    coroutine.wrap(\n        function()\n            local BP, BG, F = v.POSV.Value, v.GYROV.Value\n            local a, xd, vol = 1, 1, 0\n            local wave = 1\n            while vis do\n                vol = tools[#tools].Handle.Sound.PlaybackLoudness / sens\n                ro = math.rad(a / 2 + (i * (360 / #tools)))\n                vector = math.sin((wave/25)+(i/#tools)*(math.pi*2),0)\n                F = CFrame.new(torso.Position + Vector3.new(" .. wave1 .. ", " .. wave2 .. ", " .. wave3 .. ")) * CFrame.Angles(" .. spin1 .. ", " .. spin2 .. ", " .. spin3 .. ") * CFrame.new(" .. offset1 .. " + " .. side1 .. ", " .. offset2 .. " + " .. side2 .. ", " .. offset3 .. "  + " .. side3 .. ")\n                BP.Position = F.p\n                BG.CFrame = CFrame.new(BG.Parent.Position, torso.Position + Vector3.new(" .. tilt1 .. "," .. tilt2 .. "," .. tilt3 .. ")) * CFrame.Angles(" .. rotate1 .. ", " .. rotate2 .. ", " .. rotate3 .. ")\n                a = a + speed / 2.5\n                xd = xd + 1 / 8\n                wave = wave + 1\n                game:GetService(\"RunService\").Heartbeat:wait()\n                v.Handle.Velocity = Vector3.new(0, 0, 30)\n                v.Handle.AssemblyLinearVelocity = Vector3.new(30,0,0)\n            end\n        end\n    )()\nend\n"
		writefile("Verts-Hub/Presets/" .. Input.Text .. ".preset", (template))
	end)
end)
for i, v in pairs(Main.Side.Layout:GetChildren()) do
	if not v:IsA("UIListLayout") then
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
function startTheme()
	if readfile("Verts-Hub/Theme/theme.vh") then
		Side["BackgroundTransparency"] = 1
		Side["Hide"]:remove()
		themeImage["Visible"] = true
		themeImage["ZIndex"] = 1
		loadstring(readfile("Verts-Hub/Theme/theme.vh", true))
		if Theme.Picture then
			for i, v in pairs(Main:GetDescendants()) do
				if v["Name"] == "Circle" then
					v["BackgroundColor3"] = Theme["Slider-Color"]
				end
			end
			Color = Theme["Slider-Color"]
			if Theme.Animated then
				while wait() do
					for i = 1, #Theme.Picture do
						wait()
						themeImage.Image = "rbxassetid://" .. Theme.Picture[i]
					end
				end
			end
		end
	end
end
SettingsButton.MouseButton1Down:connect(function()
	if wave then
		Settings.WaveDirection.Visible = true
	else
		Settings.WaveDirection.Visible = false
	end
	if tilt then
		Settings.TiltDirection.Visible = true
	else
		Settings.TiltDirection.Visible = false
	end
	if rotation then
		Settings.RotationDirection.Visible = true
	else
		Settings.RotationDirection.Visible = false
	end
	if side then
		Settings.SideDirection.Visible = true
	else
		Settings.SideDirection.Visible = false
	end
end)
startTheme()
