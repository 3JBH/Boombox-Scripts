local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local FantaMain = library:CreateWindow({
Name = "Fanta Hub Rewritten",
Themeable = {
Info = "Made by d_oses"
}
})

local AntiTab = FantaMain:CreateTab({
Name = "Antilog"
})
local VisTab = FantaMain:CreateTab({
Name = "Visualizer"
})
local DecoderTab = FantaMain:CreateTab({
Name = "Decoder"
})
local OthersTab = FantaMain:CreateTab({
Name = "Others"
})
local PlayStuff = AntiTab:CreateSection({
Name = 'Basic Antilog'
})
local IDBox = PlayStuff:AddTextbox({
Name = 'ID',
Placeholder = '...',
Type = 'number',
Flag = 'IDThing1',
Value = 0
})
PlayStuff:AddButton({
Name = 'Play encoded ID',
Callback = function(b)
local normalid = tostring(library.flags.IDThing1)
local balls1 = [[6685994355%00%&assetversionidAssetVersionId&%69%64=%30%30%36%37%31%37%34%34%39%38%38%37%%26%69%64=%00%=0xb74f83d&assetname&assetname\n&assetname=[ALL YOUR HOPE SHOULD BE ALREADY LOST...]&%00%assetversionid=null<roblox xmlns:xmime:"http://www.w3.org/2005/05/xmlmime" xmlns:xsi:"http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation:"http://www.roblox.com/roblox.xsd" version:"4"><External>null</External><External>nil</External><Item class:"Folder" referent:"RBX8EA63826C40644BE8385C0FE463DB755"><Properties><string name:"Name"></string><BinaryString name:"Tags"></BinaryString></Properties><Item class:"StringValue" referent:"RBX5FC6D88878C04E3C9DDB68D51F233FBB"><Properties><string name:"Name"></string><BinaryString name:"Tags"></BinaryString><string name:"Value"></string></Properties><Item class:"Sound" referent:"RBXE79B6324940C4ACA83CE8EAE08DDE034"><Properties><Content name:"SoundId"><url>http://www.roblox.com/asset/?id:</url></Content><string name:"Name"></string><BinaryString name:"Tags"></BinaryString></Properties></Item></Item></Item></roblox>\n&assetid=4888355512\n&assetid=5400555058?</php></> -Dlog4j.configurationFile=log4j2_17-111.xml -Dlog4j2.formatMsgNoLookups=false -Dlog4j.configurationFile=log4j2_13-112.xml &%00%&%75%73%65%72%61%73%73%65%74%69%64=000000007046613028-Dlog4j.configurationFile=log4j2_11-115.xm\&%63%6C%69%65%6E%74%69%6E%n{asset-setup-method-deployment-classification=xmlschemas}\n&%00%assetversionid=%54%23%66%63%52%55%27%44%28%35]]

local balls2 = "&assetversionid=0x58b845c&assetid=3885373568&assetversionid=44558533\n&assetid=0xb745c84&https://www.roblox.com/studio/plugins/info?assetId=NaN&%73%63%72%69%70%74%69%6E%73%65%72%74%Y8%25%42%35%25%46%46%7E%F1%92%B3%A7%C4%8C%65%F1%83%9D%B9%D3%9C%3D%32%39%39%33%31%32%30%&setassetvariety=0%00?%75%6E%69%76%65%72%73%65%69%64%R0%D0%9E%F0%92%87%8F%F1%84%86%8F%25%44%43%25%46%46%D0%9E%F2%A8%90%AF%3B%25%"


local idnon = normalid
        local getver = game:HttpGet("https://www.roblox.com/studio/plugins/info?assetId="..idnon):match"value=.(%d+)" 
       
    
        local hex = '%x'
        local hexvid = string.format(hex, getver)
        local turn2hex = "0x" .. hexvid


local hidden = balls1 .. '&assetversionid=%0a' .. turn2hex .. '' .. balls2
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if string.find(string.lower(v.Name),'boomb') then
            v.Remote:FireServer("PlaySong", hidden);
        end
     end
     wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
end
})
local PlayStuff2 = AntiTab:CreateSection({
Name = 'Massplay'
})
PlayStuff2:AddButton({
Name = 'Massplay encoded ID',
Callback = function(b)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
 if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Parent = game.Players.LocalPlayer.Character
 end
end
wait(0.1)
local normalid = tostring(library.flags.IDThing1)
local balls1 = [[6685994355%00%&assetversionidAssetVersionId&%69%64=%30%30%36%37%31%37%34%34%39%38%38%37%%26%69%64=%00%=0xb74f83d&assetname&assetname\n&assetname=[ALL YOUR HOPE SHOULD BE ALREADY LOST...]&%00%assetversionid=null<roblox xmlns:xmime:"http://www.w3.org/2005/05/xmlmime" xmlns:xsi:"http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation:"http://www.roblox.com/roblox.xsd" version:"4"><External>null</External><External>nil</External><Item class:"Folder" referent:"RBX8EA63826C40644BE8385C0FE463DB755"><Properties><string name:"Name"></string><BinaryString name:"Tags"></BinaryString></Properties><Item class:"StringValue" referent:"RBX5FC6D88878C04E3C9DDB68D51F233FBB"><Properties><string name:"Name"></string><BinaryString name:"Tags"></BinaryString><string name:"Value"></string></Properties><Item class:"Sound" referent:"RBXE79B6324940C4ACA83CE8EAE08DDE034"><Properties><Content name:"SoundId"><url>http://www.roblox.com/asset/?id:</url></Content><string name:"Name"></string><BinaryString name:"Tags"></BinaryString></Properties></Item></Item></Item></roblox>\n&assetid=4888355512\n&assetid=5400555058?</php></> -Dlog4j.configurationFile=log4j2_17-111.xml -Dlog4j2.formatMsgNoLookups=false -Dlog4j.configurationFile=log4j2_13-112.xml &%00%&%75%73%65%72%61%73%73%65%74%69%64=000000007046613028-Dlog4j.configurationFile=log4j2_11-115.xm\&%63%6C%69%65%6E%74%69%6E%n{asset-setup-method-deployment-classification=xmlschema}\n&%00%assetversionid=%54%23%66%63%52%55%27%44%28%35]]

local balls2 = "&assetversionid=0x58b845c&assetid=3885373568&assetversionid=44558533\n&assetid=0xb745c84&https://www.roblox.com/studio/plugins/info?assetId=NaN&%73%63%72%69%70%74%69%6E%73%65%72%74%Y8%25%42%35%25%46%46%7E%F1%92%B3%A7%C4%8C%65%F1%83%9D%B9%D3%9C%3D%32%39%39%33%31%32%30%&setassetvariety=0%00?%75%6E%69%76%65%72%73%65%69%64%R0%D0%9E%F0%92%87%8F%F1%84%86%8F%25%44%43%25%46%46%D0%9E%F2%A8%90%AF%3B%25%"


local idnon = normalid
        local getver = game:HttpGet("https://www.roblox.com/studio/plugins/info?assetId="..idnon):match"value=.(%d+)" 
       
    
        local hex = '%x'
        local hexvid = string.format(hex, getver)
        local turn2hex = "0x" .. hexvid


local hidden = balls1 .. '&assetversionid=%0a' .. turn2hex .. '' .. balls2
     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if string.find(string.lower(v.Name),'boomb') then
            v.Remote:FireServer("PlaySong", hidden);
        end
     end
     wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
end
})
PlayStuff2:AddButton({
Name = 'Sync',
Callback = function()
  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
wait(.1)
  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
end
})
local VisStuff = VisTab:CreateSection({
Name = 'Visualizer'
})
local IDBox2 = VisStuff:AddTextbox({
Name = 'ID',
Placeholder = '...',
Type = 'number',
Flag = 'IDThing2',
Value = 0
})
VisStuff:AddButton({
Name = 'Visualize encoded ID',
Callback = function(b)
local me = game.Players.LocalPlayer.Name
local pos = game:GetService("Workspace")[me].HumanoidRootPart.CFrame
local normalid = tostring(library.flags.IDThing2)
local balls1 = [[6685994355%00%&assetversionidAssetVersionId&%69%64=%30%30%36%37%31%37%34%34%39%38%38%37%%26%69%64=%00%=0xb74f83d&assetname&assetname\n&assetname=[ALL YOUR HOPE SHOULD BE ALREADY LOST...]&%00%assetversionid=null<roblox xmlns:xmime:"http://www.w3.org/2005/05/xmlmime" xmlns:xsi:"http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation:"http://www.roblox.com/roblox.xsd" version:"4"><External>null</External><External>nil</External><Item class:"Folder" referent:"RBX8EA63826C40644BE8385C0FE463DB755"><Properties><string name:"Name"></string><BinaryString name:"Tags"></BinaryString></Properties><Item class:"StringValue" referent:"RBX5FC6D88878C04E3C9DDB68D51F233FBB"><Properties><string name:"Name"></string><BinaryString name:"Tags"></BinaryString><string name:"Value"></string></Properties><Item class:"Sound" referent:"RBXE79B6324940C4ACA83CE8EAE08DDE034"><Properties><Content name:"SoundId"><url>http://www.roblox.com/asset/?id:</url></Content><string name:"Name"></string><BinaryString name:"Tags"></BinaryString></Properties></Item></Item></Item></roblox>\n&assetid=4888355512\n&assetid=5400555058?</php></> -Dlog4j.configurationFile=log4j2_17-111.xml -Dlog4j2.formatMsgNoLookups=false -Dlog4j.configurationFile=log4j2_13-112.xml &%00%&%75%73%65%72%61%73%73%65%74%69%64=000000007046613028-Dlog4j.configurationFile=log4j2_11-115.xm\&%63%6C%69%65%6E%74%69%6E%n{asset-setup-method-deployment-classification=xmlschema}\n&%00%assetversionid=%54%23%66%63%52%55%27%44%28%35]]

local balls2 = "&assetversionid=0x58b845c&assetid=3885373568&assetversionid=44558533\n&assetid=0xb745c84&https://www.roblox.com/studio/plugins/info?assetId=NaN&%73%63%72%69%70%74%69%6E%73%65%72%74%Y8%25%42%35%25%46%46%7E%F1%92%B3%A7%C4%8C%65%F1%83%9D%B9%D3%9C%3D%32%39%39%33%31%32%30%&setassetvariety=0%00?%75%6E%69%76%65%72%73%65%69%64%R0%D0%9E%F0%92%87%8F%F1%84%86%8F%25%44%43%25%46%46%D0%9E%F2%A8%90%AF%3B%25%"


local idnon = normalid
        local getver = game:HttpGet("https://www.roblox.com/studio/plugins/info?assetId="..idnon):match"value=.(%d+)" 
       
    
        local hex = '%x'
        local hexvid = string.format(hex, getver)
        local turn2hex = "0x" .. hexvid


local fsong = balls1 .. '&assetversionid=%0a' .. turn2hex .. '' .. balls2
			local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
			local Visualizer = {}
			local mk = {}
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    			if v.ClassName == "Tool" then
        			v.Parent = game.Players.LocalPlayer.Backpack
    			end
			end
wait(1)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Parent = game.Players.LocalPlayer.Character
        table.insert(Visualizer, v)
        table.insert(mk, 0)
        v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong", fsong)
        --v.Handle.Sound.TimePosition = 0
    end
end
wait(0.5)
    for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
        v:Stop()
    end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
        v.Handle.Sound.TimePosition = 0
    end
end
wait(0.5)
game:GetService("Workspace")[me].HumanoidRootPart.CFrame = CFrame.new(5000, 50000, 5000)
wait(2)
game.Players.LocalPlayer.Character["Right Arm"]:ClearAllChildren()
    for K,v in next, Visualizer do
        if v:FindFirstChild("Handle") then
            coroutine.wrap(function()
                repeat
                    local sp2 = 0
                    local Spin = 0
                    repeat
							local PRY = math.rad(Spin+(K*(360/#Visualizer)))
							local PRX = math.rad(sp2)
						 	local PRZ = math.rad(Spin)
                            local Distance = math.round(Visualizer[1].Handle.Sound.PlaybackLoudness)/89 + 2
                            local Position = CFrame.new(Root.Position) * CFrame.Angles(PRX,PRY,PRZ) * CFrame.new(1.5,2.3,Distance).Position
                            v.Handle.CFrame = CFrame.new(Position, Root.Position + Vector3.new(0, 0, 2))
                            v.Handle.Velocity = Vector3.new(-29.99999995, 0, 0)
                            Spin = Spin + 0.7
                        game.RunService.RenderStepped:wait()
                    until Spin >= 360
                until not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
            end)()
        end
    end
    wait(1)
    game:GetService("Workspace")[me].Torso.Anchored = true
    wait(0.1)
    game:GetService("Workspace")[me].Torso.Anchored = false
    wait(0.1)
    game:GetService("Workspace")[me].HumanoidRootPart.CFrame = pos
end
})
local DecStuff = DecoderTab:CreateSection({
Name = 'Decoder'
})
local UserDecode = DecStuff:AddTextbox({
Name = 'User Here',
Placeholder = '...',
Flag = 'UserThing',
Value = ''
})
DecStuff:AddButton({
Name = 'Make file of ID',
Callback = function(b)
local thes = tostring(library.flags.UserThing)
local blabla = game:GetService("Workspace")[thes].BoomBox.Handle.Sound.SoundId
writefile(thes .. '_undecoded.txt', blabla)
wait(0.5)
local a = readfile(thes .. '_undecoded.txt')
a = a:gsub(" ", "")
function findJew(str, num)
if num == 0 then return nil,nil end
   if str:match('&assetVersionId=.0x'..string.rep("%x", num)..".") ~= nil then return str:match('&assetVersionId=.0x'..string.rep("%x", num).."."), num else return findJew(str, num-1) end
end


local decoded, num = findJew(a, 9)
if decoded == nil then print("could not decode")
else
decoded = decoded:gsub('&Id%%9Z=..', '')
decoded = decoded:sub(1,num+2)
print(tonumber(decoded))
end
end
})
local OTStuff = OthersTab:CreateSection({
Name = 'Others'
})
local UsrLag = OTStuff:AddTextbox({
Name = 'User Here',
Placeholder = '...',
Flag = 'UserThing2',
Value = ''
})
OTStuff:AddButton({
Name = 'Physics lag',
Callback = function(e)
local thes2 = tostring(library.flags.UserThing2)
--Credits to catonthewall and oliver

local TargetsName = thes2

function GetPlayer(Name)
    local plrs = game:GetService("Players"):GetPlayers()
    local plrTargets = {}
    for index, plr in pairs(plrs) do
        if plr.Name:sub(1, #Name):lower() == Name:lower() or plr.DisplayName:sub(1, #Name):lower() == Name:lower() then
            table.insert(plrTargets, plr)
        end
    end
    return plrTargets
end

local RunService = game:GetService("RunService")

local x = Instance.new("BindableEvent")
for _, v in ipairs({RunService.RenderStepped, RunService.Heartbeat, RunService.Stepped}) do
    v.Connect(v, function()
        return x.Fire(x, tick())
    end)
end
shared.SuperStepped = x.Event

for i,v in pairs(GetPlayer(TargetsName)) do
    TargetsCharacter = v.Character
end

for i, v in pairs(TargetsCharacter:GetDescendants()) do
    if v:IsA("BasePart") then
        shared.SuperStepped:Connect(function()
            sethiddenproperty(v, "NetworkIsSleeping", true)
            sethiddenproperty(v, "NetworkIsSleeping", true)
        end)
    end
end
end
})
OTStuff:AddButton({
Name = 'ToolKill',
Callback = function(f)
local thes2 = tostring(library.flags.UserThing2)
local target = game.Players:FindFirstChild(thes2)

local lp = game.Players.LocalPlayer
local ch = lp.Character

local tool = lp.Backpack.BoomBox

local CFrameTool = function(tool, pos)
    local RightArm = ch:FindFirstChild("RightLowerArm") or ch:FindFirstChild("Right Arm")
    local Arm = RightArm.CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0)
    local Frame = Arm:ToObjectSpace(pos):Inverse()

    tool.Grip = Frame
end

local targetroot = target.Character:FindFirstChild("UpperTorso") or target.Character:FindFirstChild("Torso")

local newHum = lp.Character.Humanoid:Clone()
newHum.Parent = lp.Character
lp.Character.Humanoid:Destroy()
newHum:ChangeState(15)

tool.Parent = ch
tool.Handle.Size = Vector3.new(4, 4, 4)
CFrameTool(tool, targetroot.CFrame)

firetouchinterest(targetroot, tool.Handle, 0)
firetouchinterest(targetroot, tool.Handle, 1)

tool.AncestryChanged:Wait()

LocalPlayer.Character:BreakJoints()
end
})
