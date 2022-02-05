local cool = { -- Userid, Title, Color (1 = rainbow, 0 = no rainbow, 2 = kaid pink)
    {79685992, "Kaid :3", 2},
    {326421573, "uncensorable", 1},
    {1572849739, "Nokia :3", 2},
    {932027369, "Chams", 1},
    {2709582338, "balla", 2},
    {2932943865, "FuckUncensorable!!!", 1}
}
local plrs = game:GetService("Players")

local UI = game:GetObjects("rbxassetid://7437010836")[1]
if syn then
    syn.protect_gui(UI)
end

local color = Color3.fromHSV(tick() % 5 / 5, 1, 1)

local rainbow_text = coroutine.wrap(function(tag)
    while tag ~= nil do
        wait()
        tag.TextColor3 = color
    end
end)

for i,v in pairs(plrs:GetChildren()) do
    for i,a in pairs(cool) do
        if v.UserId == a[1] then
            local tag = UI:Clone()
            tag.Nameplate.Text = a[2]
            if a[3] == 1 then
                rainbow_text(tag.Nameplate)
            end
            if a[3] == 0 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            if a[3] == 2 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(241, 166, 245)
            end
            tag.Parent = v.Character.Head
        end
    end
end

plrs.PlayerAdded:Connect(function(plr)
    for i,a in pairs(cool) do
        if v.UserId == a[1] then
            local tag = UI:Clone()
            tag.Nameplate.Text = a[2]
            if a[3] == 1 then
                rainbow_text(tag.Nameplate)
            end
            if a[3] == 0 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            if a[3] == 2 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(241, 166, 245)
            end
            tag.Parent = v.Character.Head
        end
    end
end)

local rainbow = coroutine.wrap(function()
    while wait() do
        color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    end
end)

rainbow()
local plr = game:GetService("Players").LocalPlayer
local charr = game:GetService("Players").LocalPlayer.Character
local players = game:GetService("Players"):GetPlayers()
local gameid = game.PlaceId
wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "uncensorable admin";
Text = "so much cool shit my nigga ty for support";
Icon = "rbxassetid://6282814375"; 
Duration = 5; 
})
print("\nmade by uncensorable#1994")
print ("--------------------------------------------------------")
print("[GRIPS]")
print ("/low -- do not use this with other grips. it breaks it and you will need to /rj")
print ("/back1 -- backboom type one")
print ("/back2 -- backboom type two (most popular)")
print ("/hat -- hat lol")
print ("/hat2 -- hat v.2")
print ("/p -- cock")
print ("/high -- the normal boombox grip but upside down")
print ("/glock -- gangsta holding glock")
print ("/bone -- /p but with boner that goes up so u can do /e dance1 and it looks like u jack off")
print ("/chain -- bombox chain ig")
print ("/streets -- just like the streets, !DO NOT MIX ANY OTHER GRIPS WITH THIS! it will cause the boombox the break and yo ass cant use that boombox no mo")
print ("/normal -- resets grip !WILL NOT WORK FOR /low OR /streets")
print ("-------------------------------------------------------")
print ("[BOOMBOX COMMANDS/MISC]")
print ("/id [ID]")
print ("/bp [ID]")
print ("/rj -- rejoins to the same server")
print ("/tp -- syncs audios/boomboxes")
print ("/re -- FIXED FINALLY WORKS AND PUTS U BACK TO ORIGINAL PLACE")
print ("/off -- turns off all audios (not loop)")
print ("/mute [player] -- ass mute LOL")
print ("/gtools -- get boomboxes that are on the ground (not loop either)")
print ("/hop -- server hops")
print ("/info -- gives me credit")
print ("/mass --mass play stolen from loaded_gun lol creds to him")
print ("/grip -- grip editor creds to original maker")
print ("/version -- tells you which version of the script it is")
print ("/crazy -- adfhudsfhsfsdou go crazy fsdkfhjg go stupid")
print ("/neck -- long neck")
print ("/btools -- real FE btools omg")
print ("/face -- no face no case")
print ("/noclip -- lol no clip die")
print ("/zombie -- fetch me their dicks")
print ("/cmds -- re-prints commands to console")
print ("/help -- does the exact same thing ^^")
print ("-------------------------------------------------------------------")


plr.Chatted:connect(function(message)
    if message:sub(1,3) == "/id" then
        id = message:sub(5)
        local args = message:split(" ")
        
        for _,v in pairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and string.lower(v.Name) == "boombox" then v.Parent = plr.Character end
        end
        
        wait(.1)
        
        local id = args[2]
        
        local zeros = 199950
        for _,v in pairs(plr.Character:GetChildren()) do
            if v:IsA("Tool") and string.lower(v.Name) == "boombox" then v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong", ("0"):rep(zeros)..id, 1, 0, 0) end
        end 
    end
    
    if message:sub(1,3) == "/bp" then
        
    id = message:sub(5)
    
            for _,v in pairs(plr.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.lower(v.Name) == "boombox" then v.Parent = plr.Character end
    end
    
    for _,v in pairs(plr.Character:GetChildren()) do
        local zeros = 199950
        if v:IsA("Tool") and string.lower(v.Name) == "boombox" then v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong", ("0"):rep(zeros)..id, 1, 0, 0) end
    end
    
    wait(.6)
    
    for _,v in pairs(plr.Character:GetChildren()) do
        if v:IsA("Tool") and string.lower(v.Name) == "boombox" then plr.Character.Humanoid:UnequipTools() end
    end
    
    wait(.6)
    
    for _,v in pairs(plr.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.lower(v.Name) == "boombox" then
            v.Handle.Sound.TimePosition = 0
            v.Handle.Sound.Playing = true
        end
    end
    
    end
    if message:sub(1,3) == "/rj" then
        game:GetService("TeleportService"):Teleport(gameid, plr);
    end
    
    if message:sub(1,3) == "/tp" then 
        
        local args = message:split(" ")
        
         for _,v in pairs(plr.Character:GetChildren()) do
            if v:IsA("Tool") and string.lower(v.Name) == "boombox" then
                v.Handle.Sound.TimePosition = args[2]
            end
         end
         
        for _,v in pairs(plr.Backpack:GetChildren()) do
            if v:IsA("Tool") and string.lower(v.Name) == "boombox" then
                v.Handle.Sound.TimePosition = args[2]
            end
        end
         
    end
    if message:sub(1,4) == "/tpa" then
        
    local args = message:split(" ")
    
    for _,v in pairs(game.Players:GetPlayers()) do
    
        if v.Name ~= plr.Name then
            for _,v2 in pairs(game.Workspace[v.Name]:GetChildren()) do
                if v2:IsA("Tool") and string.lower(v2.Name) == "boombox" then 
                    v2.Handle.Sound.TimePosition = args[2] end
                end
                for _,v2 in pairs(v.Backpack:GetChildren()) do
                if v2:IsA("Tool") and string.lower(v2.Name) == "boombox" then 
                    v2.Handle.Sound.TimePosition = args[2] end
                end
            end
        end
    end
    
    if message:sub(1,3) == "/re" then
   game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
wait()
Location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
local prt = Instance.new("Model", workspace);
Instance.new("Part", prt).Name="Torso";
Instance.new("Part", prt).Name="Head";
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt
wait(6)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Location
end
    if message:sub(1,4) == "/off" then
        for _,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= plr.Name then
                -- Character
                for _,v2 in pairs(game.Workspace[v.Name]:GetChildren()) do
                    if v2:IsA("Tool") and string.lower(v2.Name) == "boombox" then v2.Handle.Sound.Playing = false; end
                end
                
                -- Backpack
                for _,v2 in pairs(v.Backpack:GetChildren()) do
                    if v2:IsA("Tool") and string.lower(v2.Name) == "boombox" then v2.Handle.Sound.Playing = false; end
                end
            end
        end
    end
    
    if message:sub(1,5) == "/mute" then
        while wait(.03) do
            for _,v in pairs(game.Players:GetPlayers()) do
                if v.Name ~= plr.Name then
                -- Character
                for _,v2 in pairs(game.Workspace[v.Name]:GetChildren()) do
                    if v2:IsA("Tool") and string.lower(v2.Name) == "boombox" then v2.Handle.Sound.TimePosition = 0 end
                end
                
                -- Backpack
                for _,v2 in pairs(v.Backpack:GetChildren()) do
                    if v2:IsA("Tool") and string.lower(v2.Name) == "boombox" then v2.Handle.Sound.TimePosition = 0 end
                end
                end
            end
        end
    end
    
    if message:sub(1,7) == "/gtools" then 
        for _,v in pairs(game.workspace:GetChildren()) do
            if v:IsA("Tool") then
                v.Handle.CFrame = plr.Character.Head.CFrame
            end
        end
    end
    
    if message:sub(1,8) == "/low" then
    	if plr.Character:FindFirstChild("Animate").Disabled == true then return end
    	plr.Character.Humanoid:UnequipTools()
    	
    	plr.Character:FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "nil"		
    	plr.Character.Humanoid:UnequipTools()
    	
    	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(-0, -1, 0)
    			t.GripPos = Vector3.new(0.02, 0.71, 0)
    			t.GripRight = Vector3.new(0, 0, 1)
    			t.GripUp = Vector3.new(1, -0, 0)
    			t.Handle.Massless = true
    			t.Parent = plr.Character
    		end
    	end	
    end
       if message:sub(1,8) == "/hop" then
       local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/417267366/servers/Public?sortOrder=Asc&limit=100"))
for i,v in pairs(Servers.data) do
  if v.playing ~= v.maxPlayers then
      game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
  end
end
       end
       if message:sub(1,7) == "/info" then
    local say = "uncensorable private admin script"
local tbl_main = 
{
      say , 
      "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))

local say = "no u cant get access to it unless u have a good reason"
local tbl_main = 
{
      say , 
      "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))

local say = "press f9 for commands"
local tbl_main = 
{
      say , 
      "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
end
if message:sub(1,8) == "/mass" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/my-scripts/main/Playall%20GUI",true))()
end
if message:sub(1,8) == "/grip" then
    loadstring(game:HttpGet("https://pastebin.com/raw/3dQqGPE6", true))()
end
   if message:sub(1,8) == "/version" then
    local say = "admin version 1.4"
local tbl_main = 
{
      say , 
      "All"
}
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
end
 if message:sub(1,8) == "/back1" then
    	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(0.055, -0.03, 0.998)
    			t.GripPos = Vector3.new(-1.459, 0.334, 2.455)
    			t.GripRight = Vector3.new(-0.998, -0.027, 0.054)
    			t.GripUp = Vector3.new(-0.025, 0.999, 0.032)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
 end
 if message:sub(1,8) == "/back2" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(-0.017, -0.01, 1)
    			t.GripPos = Vector3.new(-1.514, -0.4, 2.208)
    			t.GripRight = Vector3.new(-0.862, -0.507, -0.019)
    			t.GripUp = Vector3.new(-0.507, 0.862, 0)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
 end
 if message:sub(1,8) == "/hat" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(0.078, 0, -0.997)
    			t.GripPos = Vector3.new(1.626, -2.243, -1.286)
    			t.GripRight = Vector3.new(0.997, 0.011, 0.078)
    			t.GripUp = Vector3.new(-0.011, 1, -0.001)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
 end
 if message:sub(1,8) == "/hat2" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(-0.039, -0.999, 0.036)
    			t.GripPos = Vector3.new(1.53, -1.569, 1.934)
    			t.GripRight = Vector3.new(0.999, -0.039, -0.007)
    			t.GripUp = Vector3.new(-0.009, -0.036, -0.999)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
 end
 if message:sub(1,8) == "/high" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(-1, 0.025, -0.019)
    			t.GripPos = Vector3.new(-0.597, 1.078, 0.114)
    			t.GripRight = Vector3.new(-0.019, -0.008, 1)
    			t.GripUp = Vector3.new(-0.025, -1, -0.008)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
 end
if message:sub(1,2) == "/p" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(-1, -0.025, 0.019)
    			t.GripPos = Vector3.new(-0.1, 1.424, -1.416)
    			t.GripRight = Vector3.new(-0.019, 0.026, -0.999)
    			t.GripUp = Vector3.new(-0.025, 0.999, 0.026)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
end
if message:sub(1,6) == "/glock" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(0.998, -0.06, -0.01)
    			t.GripPos = Vector3.new(0.922, 0.809, 0.289)
    			t.GripRight = Vector3.new(0.018, 0.45, -0.893)
    			t.GripUp = Vector3.new(-0.059, -0.891, -0.45)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
end
if message:sub(1,6) == "/bone" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(0.879, -0.476, -0.017)
    			t.GripPos = Vector3.new(0.861, 0.905, 1.539)
    			t.GripRight = Vector3.new(0.005, -0.026, 1)
    			t.GripUp = Vector3.new(0.476, 0.879, 0.02)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
end
if message:sub(1,6) == "/chain" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(0.995, 0.026, 0.096)
    			t.GripPos = Vector3.new(1.233, 1.382, 1.313)
    			t.GripRight = Vector3.new(-0.054, -0.666, 0.744)
    			t.GripUp = Vector3.new(-0.084, 0.746, 0.661)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
end
if message:sub(1,6) == "/crazy" then
loadstring(game:HttpGet("https://rentry.co/kgxqz/raw", true))()
end
if message:sub(1,7) == "/normal" then
	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(1, 0, 0)
    			t.GripPos = Vector3.new(1, -1.25, 0)
    			t.GripRight = Vector3.new(0, 0, 1)
    			t.GripUp = Vector3.new(0, 1, 0)
    			t.Handle.Massless = false
    			t.Parent = plr.Character
    		end
    	end	
end
 if message:sub(1,8) == "/streets" then
    	if plr.Character:FindFirstChild("Animate").Disabled == true then return end
    	plr.Character.Humanoid:UnequipTools()
    	
    	plr.Character:FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "nil"		
    	plr.Character.Humanoid:UnequipTools()
    	
    	for _,t in pairs(plr.Backpack:GetChildren()) do
    		if t:IsA("Tool") and t:FindFirstChild("Handle") and t:FindFirstChild("Handle"):FindFirstChild("Sound") then
    			t.GripForward = Vector3.new(1, 0, 0)
    			t.GripPos = Vector3.new(1, -1.25, 0)
    			t.GripRight = Vector3.new(0, 0, 1)
    			t.GripUp = Vector3.new(0, 1, 0)
    			t.Handle.Massless = true
    			t.Parent = plr.Character
    		end
    	end	
 end
 if message:sub(1,8) == "/neck" then
  repeat
AnimationId = "121572214"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.2)
wait(.075)
k:AdjustSpeed(1.6)
wait(.1)
k:AdjustSpeed(4.6)
wait(.2)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid

local ActiveTracks = Humanoid:GetPlayingAnimationTracks()

for _,v in pairs(ActiveTracks)
do v:Stop()
end
wait()
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end
 if message:sub(1,8) == "/btools" then
     local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
tool1.BinType = "Clone"
tool2.BinType = "GameTool"
tool3.BinType = "Hammer"
tool4.BinType = "Script"
tool5.BinType = "Grab"
end
 if message:sub(1,8) == "/face" then
     game.Players.LocalPlayer.Character.Head:FindFirstChildOfClass("Decal"):Destroy()
 end
  if message:sub(1,8) == "/noclip" then
    local noclip = true
G = game
char = G.Players.LocalPlayer.Character
repeat
if noclip == true then
for _,v in pairs(char:children()) do
pcall(function()
if v.className == "Part" then
v.CanCollide = false
elseif v.ClassName == "Model" then
v.Head.CanCollide = false
end
end)
end
end
G:service("RunService").Stepped:wait()
until char.Humanoid.Health == 0
end
 if message:sub(1,8) == "/zombie" then
     AnimationId      = "183294396"
local Anim       = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k          = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(0)
k:AdjustSpeed(1)
end
 if message:sub(1,8) == "/cmds" then
     print ("--------------------------------------------------------")
print("[GRIPS]")
print ("/low -- do not use this with other grips. it breaks it and you will need to /rj")
print ("/back1 -- backboom type one")
print ("/back2 -- backboom type two (most popular)")
print ("/hat -- hat lol")
print ("/hat2 -- hat v.2")
print ("/p -- cock")
print ("/high -- the normal boombox grip but upside down")
print ("/glock -- gangsta holding glock")
print ("/bone -- /p but with boner that goes up so u can do /e dance1 and it looks like u jack off")
print ("/chain -- bombox chain ig")
print ("/streets -- just like the streets, !DO NOT MIX ANY OTHER GRIPS WITH THIS! it will cause the boombox the break and yo ass cant use that boombox no mo")
print ("/normal -- resets grip !WILL NOT WORK FOR /low OR /streets")
print ("-------------------------------------------------------")
print ("[BOOMBOX COMMANDS/MISC]")
print ("/id [ID]")
print ("/bp [ID]")
print ("/rj -- rejoins to the same server")
print ("/tp -- syncs audios/boomboxes")
print ("/re -- FIXED FINALLY WORKS AND PUTS U BACK TO ORIGINAL PLACE")
print ("/off -- turns off all audios (not loop)")
print ("/mute [player] -- ass mute LOL")
print ("/gtools -- get boomboxes that are on the ground (not loop either)")
print ("/hop -- server hops")
print ("/info -- gives me credit")
print ("/mass --mass play stolen from loaded_gun lol creds to him")
print ("/grip -- grip editor creds to original maker")
print ("/version -- tells you which version of the script it is")
print ("/crazy -- adfhudsfhsfsdou go crazy fsdkfhjg go stupid")
print ("/neck -- long neck")
print ("/btools -- real FE btools omg")
print ("/face -- no face no case")
print ("/noclip -- lol no clip die")
print ("/zombie -- fetch me their dicks")
print ("/cmds -- re-prints commands to console")
print ("/help -- does the exact same thing ^^")
print ("-------------------------------------------------------------------")
wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "commands printed";
Text = "to console ^^^";
Duration = 5; 
})
end
 if message:sub(1,8) == "/help" then
     print ("--------------------------------------------------------")
print("[GRIPS]")
print ("/low -- do not use this with other grips. it breaks it and you will need to /rj")
print ("/back1 -- backboom type one")
print ("/back2 -- backboom type two (most popular)")
print ("/hat -- hat lol")
print ("/hat2 -- hat v.2")
print ("/p -- cock")
print ("/high -- the normal boombox grip but upside down")
print ("/glock -- gangsta holding glock")
print ("/bone -- /p but with boner that goes up so u can do /e dance1 and it looks like u jack off")
print ("/chain -- bombox chain ig")
print ("/streets -- just like the streets, !DO NOT MIX ANY OTHER GRIPS WITH THIS! it will cause the boombox the break and yo ass cant use that boombox no mo")
print ("/normal -- resets grip !WILL NOT WORK FOR /low OR /streets")
print ("-------------------------------------------------------")
print ("[BOOMBOX COMMANDS/MISC]")
print ("/id [ID]")
print ("/bp [ID]")
print ("/rj -- rejoins to the same server")
print ("/tp -- syncs audios/boomboxes")
print ("/re -- FIXED FINALLY WORKS AND PUTS U BACK TO ORIGINAL PLACE")
print ("/off -- turns off all audios (not loop)")
print ("/mute [player] -- ass mute LOL")
print ("/gtools -- get boomboxes that are on the ground (not loop either)")
print ("/hop -- server hops")
print ("/info -- gives me credit")
print ("/mass --mass play stolen from loaded_gun lol creds to him")
print ("/grip -- grip editor creds to original maker")
print ("/version -- tells you which version of the script it is")
print ("/crazy -- adfhudsfhsfsdou go crazy fsdkfhjg go stupid")
print ("/neck -- long neck")
print ("/btools -- real FE btools omg")
print ("/face -- no face no case")
print ("/noclip -- lol no clip die")
print ("/zombie -- fetch me their dicks")
print ("/cmds -- re-prints commands to console")
print ("/help -- does the exact same thing ^^")
print ("-------------------------------------------------------------------")
wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "commands printed";
Text = "to console ^^^";
Duration = 5; 
})
end
end)
