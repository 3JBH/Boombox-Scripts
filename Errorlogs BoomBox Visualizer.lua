local Players = game:GetService("Players")
local Me = Players.LocalPlayer
local NetworkAccess = coroutine.create(function()
    settings().Physics.AllowSleep = false
    while game:GetService("RunService").RenderStepped:Wait() do
        for _, Players in pairs(Players:GetPlayers()) do
            if Players ~= Me then
                Players.MaximumSimulationRadius = 0 
                sethiddenproperty(Players, "SimulationRadius", 0) 
            end 
        end
        Me.MaximumSimulationRadius = math.pow(math.huge,math.huge)
        setsimulationradius(math.huge) 
    end 
end) 
coroutine.resume(NetworkAccess)
local Equasym = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Rams = Instance.new("Folder")
local RS = Instance.new("Frame")
local LS = Instance.new("Frame")
local MD = Instance.new("Frame")
local MU = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Welcome = Instance.new("TextLabel")
local info = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local done = Instance.new("ImageButton")
local hourglass_full = Instance.new("ImageButton")
local Button = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local Checking = Instance.new("TextLabel")
local discord = Instance.new("TextLabel")
local blur = Instance.new("BlurEffect", game.Lighting)
local ts = game:GetService("TweenService")
local tv = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
local ts = game:GetService("TweenService")
local ti = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
rainbowing = false
Frame.Position = UDim2.new(0.5, 0, 0, 0)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
blur.Size = 0
hourglass_full.ImageColor3 = Color3.fromRGB(255, 255, 0)
function rot(kj)
    local h24 = coroutine.create(function()
        local h25 = TweenInfo.new(0.4, Enum.PoseEasingStyle.Bounce, Enum.EasingDirection.Out, 0, false, 0)
        local p = {
            Rotation = kj.Rotation + 360
        }
        local mv = ts:Create(kj, h25, p)
        mv:Play()
    end)
    coroutine.resume(h24)
end
function uhoh(s)
    local slide = {
        Position = UDim2.new(0.5, 0, s, 0)
    }
    local sliding = ts:Create(Frame, tv, slide)
    sliding:Play()
end
local function blury(v, x)
    local mb = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
    local prop = {
        Size = x
    }
    local m = ts:Create(v, mb, prop)
    m:Play()
end
function ImgT(v, x)
    local mb = TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
    local prop = {
        ImageTransparency = x
    }
    local m = ts:Create(v, mb, prop)
    m:Play()
end
wait(0.3)
uhoh(0.5)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Equasym.Name = "Equasym"
Equasym.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Equasym.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = Equasym
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(130, 203, 255)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.5, 0, -0.5, 0)
Frame.Size = UDim2.new(0, 371, 0, 286)
Rams.Name = "Rams"
Rams.Parent = Frame
Frame.Draggable = true
RS.Name = "RS"
RS.Parent = Rams
RS.BackgroundColor3 = Color3.fromRGB(38, 41, 45)
RS.BorderSizePixel = 0
RS.Position = UDim2.new(0.973045826, 0, 0, 0)
RS.Size = UDim2.new(0, 10, 0, 286)
LS.Name = "LS"
LS.Parent = Rams
LS.BackgroundColor3 = Color3.fromRGB(38, 41, 45)
LS.BorderSizePixel = 0
LS.Size = UDim2.new(0, 10, 0, 286)
MD.Name = "MD"
MD.Parent = Rams
MD.BackgroundColor3 = Color3.fromRGB(38, 41, 45)
MD.BorderSizePixel = 0
MD.Position = UDim2.new(0, 0, 0.965034962, 0)
MD.Size = UDim2.new(0, 371, 0, 10)
MU.Name = "MU"
MU.Parent = Rams
MU.BackgroundColor3 = Color3.fromRGB(38, 41, 45)
MU.BorderSizePixel = 0
MU.Size = UDim2.new(0, 371, 0, 10)
UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.00, Color3.fromRGB(38, 41, 45)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(34, 35, 43))})
UIGradient.Rotation = -90
UIGradient.Parent = Frame
Welcome.Name = "Welcome"
Welcome.Parent = Frame
Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome.BackgroundTransparency = 1.000
Welcome.Position = UDim2.new(0.172506735, 0, 0.062937066, 0)
Welcome.Size = UDim2.new(0, 243, 0, 50)
Welcome.Font = Enum.Font.Arial
Welcome.Text = ""
Welcome.TextColor3 = Color3.fromRGB(0, 0, 0)
Welcome.TextScaled = true
Welcome.TextSize = 14.000
Welcome.TextWrapped = true
info.Name = "info"
info.Parent = Frame
info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
info.BackgroundTransparency = 1.000
info.Position = UDim2.new(0.172506735, 0, 0.237762243, 0)
info.Size = UDim2.new(0, 243, 0, 147)
info.SizeConstraint = Enum.SizeConstraint.RelativeXX
info.Font = Enum.Font.Arial
info.Text = ""
info.TextColor3 = Color3.fromRGB(0, 0, 0)
info.TextScaled = true
info.TextSize = 14.000
info.TextWrapped = true
info.TextXAlignment = Enum.TextXAlignment.Left
info.TextYAlignment = Enum.TextYAlignment.Top
close.Name = "close"
close.Parent = Frame
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.787247241, 0, 0.406044394, 0)
close.Size = UDim2.new(0, 44, 0, 44)
close.ZIndex = 2
close.Image = "rbxassetid://3926305904"
close.ImageRectOffset = Vector2.new(284, 4)
close.ImageRectSize = Vector2.new(24, 24)
close.ImageTransparency = 1.000
done.Name = "done"
done.Parent = Frame
done.BackgroundTransparency = 1.000
done.Position = UDim2.new(0.787247241, 0, 0.406044394, 0)
done.Size = UDim2.new(0, 44, 0, 44)
done.ZIndex = 2
done.Image = "rbxassetid://3926305904"
done.ImageRectOffset = Vector2.new(644, 204)
done.ImageRectSize = Vector2.new(36, 36)
done.ImageTransparency = 1.000
hourglass_full.Name = "hourglass_full"
hourglass_full.Parent = Frame
hourglass_full.BackgroundTransparency = 1.000
hourglass_full.Position = UDim2.new(0.808, 0, 0.448, 0)
hourglass_full.Size = UDim2.new(0, 30, 0, 30)
hourglass_full.ZIndex = 2
hourglass_full.Image = "rbxassetid://3926305904"
hourglass_full.ImageRectOffset = Vector2.new(804, 164)
hourglass_full.ImageRectSize = Vector2.new(36, 36)
hourglass_full.ImageTransparency = 1.000
Button.Name = "Button"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Position = UDim2.new(0.231805921, 0, 0.811188817, 0)
Button.Size = UDim2.new(0, 200, 0, 40)
Button.Image = "rbxassetid://2790389767"
Button.ImageColor3 = Color3.fromRGB(0, 255, 0)
Button.ImageTransparency = 1.000
Button.ScaleType = Enum.ScaleType.Slice
Button.SliceCenter = Rect.new(8, 8, 248, 248)
TextLabel.Parent = Button
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.495000005, 0, 0.500000179, 0)
TextLabel.Size = UDim2.new(1, -5, 1, -5)
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
Checking.Name = "Checking"
Checking.Parent = Frame
Checking.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Checking.BackgroundTransparency = 1.000
Checking.Position = UDim2.new(0.19137466, 0, 0.405594409, 0)
Checking.Size = UDim2.new(0, 230, 0, 50)
Checking.Font = Enum.Font.Arial
Checking.Text = ""
Checking.TextColor3 = Color3.fromRGB(0, 0, 0)
Checking.TextScaled = true
Checking.TextSize = 14.000
Checking.TextWrapped = true
discord.Name = "discord"
discord.Parent = Frame
discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
discord.BackgroundTransparency = 1.000
discord.Position = UDim2.new(0.19137466, 0, 0.559440553, 0)
discord.Size = UDim2.new(0, 230, 0, 50)
discord.Font = Enum.Font.Arial
discord.Text = ""
discord.TextColor3 = Color3.fromRGB(0, 0, 0)
discord.TextScaled = true
discord.TextSize = 14.000
discord.TextWrapped = true
local Buttonback = Button.Position
blury(blur, 40)
local sym = {hourglass_full, close, done}
function typing(instance, text)
    for i = 1, #text do
        instance.Text = text:sub(1, i)
        wait(0.03)
    end
end
function colors(frame, r, g, b, property)
    local prop = {
        [property] = Color3.fromRGB(r, g, b)
    }
    local p = ts:Create(frame, ti, prop)
    p:Play()
end
function ColorSymbol(r, g, b)
    local prop = {
        ImageColor3 = Color3.fromRGB(r, g, b)
    }
    for i, v in pairs(sym) do
        local zj = ts:Create(v, ti, prop)
        zj:Play()
    end
end
function color(r, g, b)
    for _, k in pairs(Rams:GetChildren()) do
        if k:IsA("Frame") then
            local prop = {
                BackgroundColor3 = Color3.fromRGB(r, g, b)
            }
            local zxajfa = ts:Create(k, ti, prop)
            zxajfa:Play()
        end
    end
end
local function transparent(v, t)
    local thething = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
    local prop = {
        TextTransparency = t
    }
    local askjdfal = ts:Create(v, thething, prop)
    askjdfal:Play()
end
function textrainbow()
    for i, v in pairs(Frame:GetChildren()) do
        if v:IsA("TextLabel") then
            local c = coroutine.create(function()
                while wait() do
                    colors(v, 255, 0, 0, "TextColor3")
                    wait(1)
                    colors(v, 255, 255, 0, "TextColor3")
                    wait(1)
                    colors(v, 0, 255, 0, "TextColor3")
                    wait(1)
                    colors(v, 0, 255, 255, "TextColor3")
                    wait(1)
                    colors(v, 100, 100, 255, "TextColor3")
                    wait(1)
                    colors(v, 255, 0, 255, "TextColor3")
                    wait(1)
                end
            end)
            coroutine.resume(c)
        end
    end
end
function rainbow()
    for _, v in pairs(Rams:GetChildren()) do
        if v:IsA("Frame") then
            local c = coroutine.create(function()
                while wait() do
                    colors(v, 255, 0, 0, "BackgroundColor3")
                    wait(1)
                    colors(v, 255, 255, 0, "BackgroundColor3")
                    wait(1)
                    colors(v, 0, 255, 0, "BackgroundColor3")
                    wait(1)
                    colors(v, 0, 255, 255, "BackgroundColor3")
                    wait(1)
                    colors(v, 100, 100, 255, "BackgroundColor3")
                    wait(1)
                    colors(v, 255, 0, 255, "BackgroundColor3")
                    wait(1)
                end
            end)
            coroutine.resume(c)
        end
    end
end
wait(1)
typing(Checking, "Skidded Equasym")
colors(Checking, 255, 255, 255, "TextColor3")
color(255, 255, 255)
wait(1)
transparent(Checking, 1)
wait(0.5)
Checking.TextTransparency = 0
typing(Checking, "Cracked By Enviie")
rotating = true
wait(1)
transparent(Checking, 1)
wait(0.5)
Checking.TextTransparency = 0
typing(Checking, "Checking Whitelist..")
color(255, 255, 0)
ColorSymbol(255, 255, 0)
colors(Checking, 255, 255, 0, "TextColor3")
rot(hourglass_full)
transparent()
ImgT(hourglass_full, 0)
local rotate = coroutine.create(function()
    while true do
        if not rotating then
            return 
        end
        hourglass_full.Rotation = hourglass_full.Rotation + 2
        wait()
    end
end)
coroutine.resume(rotate)
wait(2)
done.ImageColor3 = Color3.fromRGB(0, 255, 0)
local plr = game.Players.LocalPlayer
ImgT(hourglass_full, 1)
color(0, 255, 0)
local jjke = coroutine.create(function()
    wait(0.3)
    ImgT(done, 0)
    wait(1)
end)
coroutine.resume(jjke)
colors(Checking, 0, 255, 0, "TextColor3")
typing(Checking, "You're Whitelisted NOOB! " .. plr.Name)
print([["
_________               .__                   ____  ___
\_   ___ \___.__.______ |  |__   ___________  \   \/  /
/    \  \<   |  |\____ \|  |  \_/ __ \_  __ \  \     / 
\     \___\___  ||  |_> >   Y  \  ___/|  | \/  /     \ 
 \______  / ____||   __/|___|  /\___  >__|    /___/\  \
        \/\/     |__|        \/     \/              \_/


BAD
================================================================
Press G to start the script!

Press J to dupe (unfunctional)

================================================================
       GENERAL COMMANDS
================================================================
current prefix = "!"

prefix [PREFIX] (changes the prefix used to call the commands) 

!os[NUMBER] (The studs between ur torso and the tools)

!y [NUMBER] (how low or high the y axis is, 0 = head height)

!p [PLAYER] (which player the boomboxes will follow)

!play [ID] (the boomboxes will play the id you chosen)

================================================================
      MATHEMATICS COMMANDS
================================================================
!rx [NUMBER] (how much in angles you wanna rotate the boomboxes in x axis)

!ry [NUMBER] (how much in angles you wanna rotate the boomboxes in y axis)

!rz [NUMBER] (how much in angles you wanna rotate the boomboxes in z axis)

!tx [NUMBER] (same as rx but rotates constantly)

!ty [NUMBER] (same as ry but rotates constantly)

!tz [NUMBER] (same as tz but rotates constantly)

================================================================
      UPDATES THAT ARE COMING
================================================================
-more commands

-save audio cmds

-playlist

-functional duplicator

-better gui

-cmd bar

-visulizing modes

-better sync (if you have more than 14 boomboxes)


================================================================
Cracked by Enviie
=======================
"]])
wait(1)
ImgT(done, 1)
ColorSymbol(0, 255, 0)
textrainbow()
rainbow()
typing(Welcome, "Cracked ERRORLOG demo script")
typing(Checking, "Cracked by Enviie,F9 for commands")
typing(discord, "CRACKED SON! GET CRACKED!")
ImgT(Button, 0)
typing(Button.TextLabel, "Start")
Button.MouseButton1Click:Connect(function()
    uhoh(-0.5)
    blury(blur, 0)
    Index = 0
    print("scripted by errorIogs")
    Devide = 0
    x = 360
    switch = false
    pbl = Instance.new("NumberValue", game.ReplicatedStorage)
    off = Instance.new("NumberValue", game.ReplicatedStorage)
    d = 500
    prefix = "!"
    sets = {}
    sin = Instance.new("NumberValue")
    sin.Value = 3.14
    ym = Instance.new("NumberValue")
    ym.Value = -4
    rx = Instance.new("NumberValue")
    ry = Instance.new("NumberValue")
    rz = Instance.new("NumberValue")
    tx = Instance.new("NumberValue")
    ty = Instance.new("NumberValue")
    tz = Instance.new("NumberValue")
    pbl.Value = 1
    off.Value = 1
    local ts = game:GetService("TweenService")
    function prop1(i, v)
        local ti = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, 0, false, 0)
        local prop = {
            Value = v
        }
        local aaa = ts:Create(i, ti, prop)
        aaa:Play()
    end
    FoundPlr = true
    mode1, mode2, mode3, mode4 = true, false, false, false
    local s = pcall(function()
        setsimulationradius(1 / 0, 1 / 0)
    end)
    duping = false
    tpback = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local player = game.Players.LocalPlayer.Name
    duping = false
    function gotya(str)
        local str = str:lower()
        for i, v in pairs(game.Players:GetChildren()) do
            if string.find(v.Name:lower(), str) then
                return v.Name
            end
        end
    end
    game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local msg = msg:lower()
        if msg:sub(1, 7) == "prefix " then
            prefix = msg:sub(8)
        end
        if msg:sub(1, 6) == prefix .. "mode " then
            if msg:sub(7, 7) == "1" then
                mode1 = true
                mode2 = false
                mode3 = false
                mode4 = false
            elseif msg:sub(7, 7) == "2" then
                mode1 = false
                mode2 = true
                mode3 = false
                mode4 = false
            elseif msg:sub(7, 7) == "3" then
                mode1 = false
                mode2 = false
                mode3 = true
                mode4 = false
            elseif msg:sub(7, 7) == "4" then
                mode1 = false
                mode2 = false
                mode3 = false
                mode4 = true
            end
        end
        if msg:sub(1, 6) == prefix .. "play " then
            for i, v in pairs(sets) do
                v.Remote:FireServer("PlaySong", msg:sub(7))
            end
        end
        if msg:sub(1, 3) == prefix .. "p " then
            player = gotya(msg:sub(4))
            print(player)
            if player == nil then
                FoundPlr = false
            else
                FoundPlr = true
            end
        end
        if msg:sub(1, 5) == prefix .. "pbl " then
            prop1(pbl, tonumber(msg:sub(6)))
        end
        if msg:sub(1, 4) == prefix .. "os " then
            prop1(off, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 3) == prefix .. "d " then
            d = tonumber(msg:sub(4))
        end
        if msg:sub(1, 3) == prefix .. "y " then
            prop1(ym, tonumber(msg:sub(4)))
        end
        if msg:sub(1, 3) == prefix .. "k " then
            k = tonumber(msg:sub(4))
        end
        if msg:sub(1, 4) == prefix .. "rx " then
            prop1(rx, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "ry " then
            prop1(ry, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "rz " then
            prop1(rz, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "tx " then
            prop1(tx, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "ty " then
            prop1(ty, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "tz " then
            prop1(tz, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 5) == prefix .. "sin " then
            prop1(sin, tonumber(msg:sub(6)))
        end
    end)
    k = 1.1
    TpBack = CFrame.new()
    local uis = game:GetService("UserInputService")
    uis.InputBegan:Connect(function(x, y)
        if y then
            return 
        end
        if x.KeyCode == Enum.KeyCode.J then
            if not duping then
                duping = true
                tpback = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            else
                duping = false
                wait(6)
                tpback = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                for i, v in pairs(workspace:GetChildren()) do
                    if v:IsA("Tool") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                        wait()
                    end
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tpback
            end
        end
        if x.KeyCode == Enum.KeyCode.G then
            sets = {}
            for i, v in pairs(sets) do
                print(v.Name)
            end
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                table.insert(sets, i, v)
            end
            Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
            game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
            for i, v in pairs(sets) do
                if v:IsA("Tool") then
                    for z, n in pairs(v:GetChildren()) do
                        if n:IsA("NumberValue") then
                            n:Destroy()
                        end
                    end
                    for z, n in pairs(v.Handle:GetChildren()) do
                        if n:IsA("BodyPosition") then
                            n:Destroy()
                        end
                    end
                    v.Name = "Boombox " .. tostring(i)
                    local bp = Instance.new("BodyPosition", v.Handle)
                    local val = Instance.new("NumberValue", v)
                    local yv = Instance.new("NumberValue", v)
                    local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
                    at1.Position = Vector3.new(-1.4, 0, 0)
                    at2.Position = Vector3.new(1.4, 0, 0)
                    v.Changed:Connect(function()
                        if v.Parent == game.Players.LocalPlayer.Backpack or v.Parent == workspace then
                            for z, n in pairs(v:GetChildren()) do
                                if n:IsA("NumberValue") then
                                    n:Destroy()
                                end
                            end
                            for z, n in pairs(v.Handle:GetChildren()) do
                                if n:IsA("BodyPosition") then
                                    n:Destroy()
                                end
                            end
                        end
                    end)
                    yv.Value = k
                    k = yv.Value + k
                    val.Value = x
                    x = val.Value - Index
                    v.Parent = game.Players.LocalPlayer.Character
                    FoundPlr = true
                    local OnC = true
                    game.Players.LocalPlayer.Character.ChildRemoved:Connect(function(c)
                        if c == v then
                            OnC = false
                        end
                    end)
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if not OnC then
                            return 
                        end
                        if not v:FindFirstChild("Handle") then
                            return 
                        end
                        bp.Position = v.Handle.Position
                        if not FoundPlr then
                            return 
                        end
                        bp.D = d
                        if mode1 == true then
                            v.Handle.Position = game.Players[player].Character.Head.Position + Vector3.new(math.sin(math.rad(val.Value) + time() * sin.Value) * off.Value, ym.Value + math.abs(math.sin(yv.Value + time() * math.pi)) * v.Handle.Sound.PlaybackLoudness * 0.005 * pbl.Value, math.cos(math.rad(val.Value) + time() * sin.Value) * off.Value)
                            if v.Parent == workspace then
                            else
                                v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 4, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(math.rad(rx.Value) + (time() * tx.Value), math.rad(ry.Value) + (time() * ty.Value), math.rad(rz.Value) + (time() * tz.Value))
                            end
                        elseif mode2 == true then
                            v.Handle.Position = game.Players[player].Character.Head.Position + Vector3.new(math.sin(math.rad(val.Value) + time() * sin.Value) * off.Value, ym.Value + math.sin(yv.Value + time() * sin.Value) * v.Handle.Sound.PlaybackLoudness * 0.005 * pbl.Value, math.cos(math.rad(val.Value) + time() * sin.Value) * off.Value)
                            if v.Parent == workspace or v.Parent.RightHand:FindFirstChild("RightGrip") then
                            else
                                v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 4, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(math.rad(rx.Value) + (time() * tx.Value), math.rad(ry.Value) + (time() * ty.Value), math.rad(rz.Value) + (time() * tz.Value))
                            end
                        end
                    end)
                    if game.Players[player].Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                        pcall(function()
                            game.Players[player].Character.RightHand.RightGrip:Destroy()
                        end)
                    else
                        pcall(function()
                            game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy()
                        end)
                    end
                end
            end
        end
    end)
    local uis = game:GetService("UserInputService")
    game:GetService("RunService").RenderStepped:Connect(function()
        if not duping then
            return 
        end
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tpback
        end)
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = game.Players.LocalPlayer.Character
                wait(0.5)
                v.Parent = workspace
                wait(0.3)
                for _, k in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if k:IsA("Tool") then
                        k.Parent = game.Players.LocalPlayer.Character
                        wait(0.5)
                        k.Parent = workspace
                    else
                        k:Destroy()
                    end
                end
            end
        end
    end)
end)
