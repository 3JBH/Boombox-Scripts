if not isfolder('MARs-Hub-Content') then makefolder('MARs-Hub-Content') end

if not isfile('MARs-Hub-Content/RGB-Selected.txt') then writefile('MARs-Hub-Content/RGB-Selected.txt',"82,82,255") end

if not isfile('MARs-Hub-Content/MARs-Hub-Description.txt') then writefile('MARs-Hub-Content/MARs-Hub-Description.txt', '') end

if not isfolder('MARs-Hub-Content/Logged-Audios') then makefolder('MARs-Hub-Content/Logged-Audios') end

local HUBV4,Notification = game:GetObjects("rbxassetid://&assetversionid=9474794321")[1],game:GetObjects('rbxassetid://&assetversionid=9474839008')[1]

HUBV4['Parent'] = game:GetService'CoreGui'

Notification['Parent'] = game:GetService'CoreGui'

-- Services

local HTTP = game:GetService'HttpService' local Tween = game:GetService'TweenService' local UIS = game:GetService'UserInputService' local Players = game:GetService'Players'

-- Variables

local UIToggle = false local Duping = false local isExperimentalMode = false local isDesynced = false local isMuted = false local isMode1 = true local isMode2 = false local isMode3 = false local isMode4 = false local isMode5 = false local isMode6 = false local isMode7 = false local isMode8 = false

UIS.InputBegan:Connect(function(Insert) if Insert.KeyCode == Enum.KeyCode.Insert then if UIToggle == false then UIToggle = true HUBV4['Enabled'] = false else UIToggle = false HUBV4['Enabled'] = true end end end)

UIS.InputBegan:Connect(function(Delete) if Delete.KeyCode == Enum.KeyCode.Delete then HUBV4:Destroy() Notification:Destroy() end end)

-- Functions

local ToClock = function(Seconds) if Seconds < 1 then return '0:00'; else local Mins = ('%2.f'):format(math.floor(Seconds/60)); local Secs = ('%02.f'):format(math.floor(Seconds - Mins*60)); return Mins..':'..Secs end end

local GetPlayer = function(Name) for _, Player in next, Players:GetPlayers() do if Name:lower():match(Player['Name']:lower():sub(1, #Name)) then return Player end end return nil end

local TextToColor3 = function(Text) local Tbl = Text:gsub(' ', ''):split(',') local Values = {}

for _, V in next, Tbl do
    Values[#Values + 1] = tonumber(V)
end
return Color3.fromRGB(unpack(Values)) end

local AudioEncoder = {}; do AudioEncoder.LastCustomMessage = ''

local concat = table.concat
local char, format, gsub, byte = string.char, string.format, string.gsub, string.byte
local lower, upper, sub, len, split = string.lower, string.upper, string.sub, string.len, string.split

local HttpGetAsync = game.HttpGetAsync
local VersionIdUrl = 'http://www.roblox.com/studio/plugins/info?assetId='

local GetVersionId = function(AssetId)
	local Response = HttpGetAsync(game, VersionIdUrl .. AssetId)
	return split(split(Response, 'value="')[2], '"')[1]
end

local RN = Random.new()
local NextInteger = RN.NextInteger

local RandomString; do
	local CharSet = {}
	for I = 48, 57 do
		CharSet[#CharSet+1] = char(I)
	end
	for I = 65, 90 do
		CharSet[#CharSet+1] = char(I)
	end
	for I = 97, 122 do
		CharSet[#CharSet+1] = char(I)
	end

	RandomString = function(Length)
		Length = Length or 32
		local Str = {}
		for I = 1, Length do
			Str[#Str+1] = CharSet[NextInteger(RN, 1, #CharSet)]
		end
		return concat(Str, '')
	end
end

local UrlEncode = function(Input)
	return gsub(tostring(Input), '.', function(Char)
		return format('%%%02X', byte(Char))
	end)
end

local ApplyUnicode = function(String)
    return String:sub(0,5) .. '‮' ..String:sub(6)
end

local bin2hex = function(Input)
	return '0X' .. format('%X', tostring(Input))
end

local GenerateAudio = function()
	return NextInteger(RN, 5.0e9, 6.0e9)
end

local ChangeCase = function(Input)
	local Output = {}
	for I = 1, len(Input) do
		if I % 2 == 1 then
			Output[#Output+1] = lower(sub(Input, I, I))
		else
			Output[#Output+1] = upper(sub(Input, I, I))
		end
	end
	return concat(Output)
end

local Invites = {'J5NkaEtKZ5'}

local Blocked = {
    'assetVersionId',
    'placeId',
}

local RandomQuerys = {
    'Id',
}

local Misc = {
     'userAssetIdﮜ',
     'universeId',
     '&rootPlaceIdﬖ',
     'Id',
     'clientIdښݲ',
     'parentAssetVersionId',
     'marCheckSum',
     '&Id',
     'AssetId',
     'requestId',
}

local Baits = {
     'assetVersionId',
}

function AudioEncoder:Encode(AssetId, Settings)
	Settings = Settings or {}
	Settings.CustomMessage = Settings.CustomMessage

    self.LastCustomMessage = Settings.CustomMessage

	local EncodedId = '( MAR\'s HUB Anti-Logger ) ( discord.gg/%s )%s%s'

	local Temp = {}

	for I = 1, NextInteger(RN, 4, 175) do
		Temp[#Temp+1] = '&' .. (function()
			local Query = Blocked[NextInteger(RN, 1, #Blocked)]
			local Choice = NextInteger(RN, 0, 1)
			if Choice == 0 then
				Query = Query
			end

			local ID = GenerateAudio()
			Choice = NextInteger(RN, 0, 1)
			if Choice == 0 then
				ID = ID
			end

			local Bait = UrlEncode(Query) .. '=00' .. UrlEncode(ID) .. '%00' .. UrlEncode(ID) .. '%'

			return Bait
		end)()
	end

	Temp[#Temp+1] = '%&' .. (function()
		local Query = 'Id'
		local Choice = NextInteger(RN, 0, 1)
		if Choice == 0 then
			Query = Query
		end

		local ID = AssetId
		Choice = NextInteger(RN, 0, 1)
		if Choice == 0 then
			ID = ID
		end

		local Real = UrlEncode(Query) .. '=00' .. UrlEncode(ID) .. '%00' .. UrlEncode(GenerateAudio())

		return Real
	end)()
	
	for I = 1, 50 do
		Temp[#Temp+1] = '%' .. (function()
			local Query = Misc[NextInteger(RN, 1, #Misc)]
			if Query ~= 'Id' then
				Query = Query
			end

			local Choice = NextInteger(RN, 0, 1)
			if Choice == 0 then
				Query = Query
			end

			local ID = GenerateAudio()
			Choice = NextInteger(RN, 0, 1)
			if Choice == 0 then
				ID = ID
			end

			local Bait = UrlEncode(Query) .. '=00' .. '%00' .. UrlEncode(ID)

			return Bait
		end)()
	end

	for I = 1, 1 do
		Temp[#Temp+1] = '&' .. (function()
			local Query = Baits[NextInteger(RN, 1, #Baits)]
			if Query ~= 'Id' then
				Query = Query
			end

			local Choice = NextInteger(RN, 0, 1)
			if Choice == 0 then
				Query = Query
			end

			local ID = GenerateAudio()
			Choice = NextInteger(RN, 0, 1)
			if Choice == 0 then
				ID = ID
			end

			local Bait = UrlEncode(Query) .. '=00' .. '%00' .. UrlEncode(ID)

			return Bait
		end)()
	end

	EncodedId = format(EncodedId, Invites[NextInteger(RN, 1, #Invites)], Settings.CustomMessage, concat(Temp, ''))

	return '0&%61%73%73%65%74%4E%61%6D%65=' .. EncodedId
end
end

-- Notification Properties

local NotificationFrame,NotificationGradient,NotificationText = Notification['Notification'],Notification['Notification']['Frame']['UIGradient'],Notification['Notification']['TextLabel']

NotificationGradient['Color'] = ColorSequence.new(Color3.fromRGB(42,42,42), TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt')))

local Notify = function(Text, Duration) local PopUp = { Notify = { Frame = NotificationFrame:TweenPosition(UDim2.new(1, -180,0.85, -35),'Out','Sine',.3,false) }, } NotificationText.Text = Text wait(Duration) local CloseIn = { Frame = NotificationFrame:TweenPosition(UDim2.new(2, -180,0.85, -35),'Out','Sine',.3,false) } end

-- Character Handler

_player = {p = game:GetService("Players").LocalPlayer;b = function()return _player.p:FindFirstChild("Backpack")end;c = function()return _player.p.Character;end;m = function()return _player.p:GetMouse()end;n = function()return tostring(_player.p.Name)end;all = function()return game.Players:GetPlayers()end;}

-- Main Gui

local MainFrame,AntiLogFrame,AudioDecoderFrame,UtilitiesFrame,SettingsFrame,SectionHolder,SectionBar = HUBV4['Frame'],HUBV4['Frame']['SectionHolder']['AAntiLogFrame'],HUBV4['Frame']['SectionHolder']['BAudioDecoderFrame'],HUBV4['Frame']['SectionHolder']['CUtilitiesFrame'],HUBV4['Frame']['SectionHolder']['DSettingsFrame'],HUBV4['Frame']['SectionHolder'],HUBV4['Frame']['UIBar']

local HUBText = MainFrame['CreditHolder']['HUB']

MainFrame['Draggable'] = true

local AntiSectionLeft,AntiSectionRight,AntiLogPageLayout,AudioDecoderPageLeft,AudioDecoderPageRight,AudioDecoderPageLayout = AntiLogFrame['SectionLeft'],AntiLogFrame['SectionRight'],AntiLogFrame['AntiLogHolderFrame']['AntiLogPageLayout'],AudioDecoderFrame['SectionLeft'],AudioDecoderFrame['SectionRight'],AudioDecoderFrame['DecoderHolderFrame']['DecoderPageLayout']

local AntiLogSection,AudioDecoderSection,UtilitiesSection,SettingsSection = MainFrame['SectionButtons']['AntiLogger'],MainFrame['SectionButtons']['AudioDecoder'],MainFrame['SectionButtons']['Utilities'],MainFrame['SectionButtons']['Settings']

local AntiLogTurnPageLeft = function() AntiLogPageLayout:JumpToIndex(0) end

AntiSectionLeft.MouseButton1Click:Connect(AntiLogTurnPageLeft)

local AntiLogTurnPageRight = function() AntiLogPageLayout:JumpToIndex(1) end

AntiSectionRight.MouseButton1Click:Connect(AntiLogTurnPageRight)

local AudioDecoderTurnPageLeft = function() AudioDecoderPageLayout:JumpToIndex(0) end

AudioDecoderPageLeft.MouseButton1Click:Connect(AudioDecoderTurnPageLeft)

local AudioDecoderTurnPageRight = function() AudioDecoderPageLayout:JumpToIndex(1) end

AudioDecoderPageRight.MouseButton1Click:Connect(AudioDecoderTurnPageRight)

local AntiLog = function() local TurnPages = { AntiLog = { Frame = SectionHolder:TweenPosition(UDim2.new(0.014, 0,0.292, 0),'Out','Sine',.2,false) }, Bar = { BarPos = SectionBar:TweenPosition(UDim2.new(0.057, 0,0.275, 0),'Out','Sine',.1,false) }, } AudioDecoderSection.TextColor3 = Color3.fromRGB(80,80,80) AntiLogSection.TextColor3 = Color3.fromRGB(255,255,255) UtilitiesSection.TextColor3 = Color3.fromRGB(80,80,80) SettingsSection.TextColor3 = Color3.fromRGB(80,80,80) end

AntiLogSection.MouseButton1Click:Connect(AntiLog)

local Decoder = function() local TurnPages = { Decoder = { Frame = SectionHolder:TweenPosition(UDim2.new(-1.07, 0,0.292, 0),'Out','Sine',.2,false) }, Bar = { BarPos = SectionBar:TweenPosition(UDim2.new(0.28, 0,0.275, 0),'Out','Sine',.1,false) }, } AudioDecoderSection.TextColor3 = Color3.fromRGB(255,255,255) AntiLogSection.TextColor3 = Color3.fromRGB(80,80,80) UtilitiesSection.TextColor3 = Color3.fromRGB(80,80,80) SettingsSection.TextColor3 = Color3.fromRGB(80,80,80) end

AudioDecoderSection.MouseButton1Click:Connect(Decoder)

local Utilities = function() local TurnPages = { Utilities = { Frame = SectionHolder:TweenPosition(UDim2.new(-1.9, 0,0.292, 0),'Out','Sine',.2,false) }, Bar = { BarPos = SectionBar:TweenPosition(UDim2.new(0.474, 0,0.275, 0),'Out','Sine',.1,false) }, } AudioDecoderSection.TextColor3 = Color3.fromRGB(80,80,80) AntiLogSection.TextColor3 = Color3.fromRGB(80,80,80) UtilitiesSection.TextColor3 = Color3.fromRGB(255,255,255) SettingsSection.TextColor3 = Color3.fromRGB(80,80,80) end

UtilitiesSection.MouseButton1Click:Connect(Utilities)

local Settings = function() local TurnPages = { Settings = { Frame = SectionHolder:TweenPosition(UDim2.new(-2.88, 0,0.292, 0),'Out','Sine',.2,false) }, Bar = { BarPos = SectionBar:TweenPosition(UDim2.new(0.61, 0,0.275, 0),'Out','Sine',.1,false) }, } AudioDecoderSection.TextColor3 = Color3.fromRGB(80,80,80) AntiLogSection.TextColor3 = Color3.fromRGB(80,80,80) UtilitiesSection.TextColor3 = Color3.fromRGB(80,80,80) SettingsSection.TextColor3 = Color3.fromRGB(255,255,255) end

SettingsSection.MouseButton1Click:Connect(Settings)

local CommandsList,Command,Commandbar = MainFrame['CommandsList']['ScrollingFrame'],MainFrame['CommandsList']['ScrollingFrame']['cmd1'],MainFrame['Commandbar']

Command['Visible'] = false Command['Name'] = ''

-- Commands list

local addCmd = function(cmd) local Cmd = Command:Clone() Cmd['Parent'] = CommandsList Cmd['Name'] = cmd Cmd['Text'] = cmd Cmd['Visible'] = true local LabelTween = Tween:Create(Cmd, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(80,80,80)}) LabelTween:Play() end

-- Added Commands

addCmd(';writefile [plr]') addCmd(';set [plr] [time]') addCmd(';desync [plr]') addCmd(';loopdesync [plr]') addCmd(';unloopdesync [plr]') addCmd(';fixvis') addCmd(';setnew [id]') addCmd(';stopduping')

-- Command Handler

local ClearCMD = function() Commandbar['Text'] = '' end

Commandbar['ClearTextOnFocus'] = false

local CommandFocused = function() local CF = Tween:Create(Commandbar, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) CF:Play() end

Commandbar['Focused']:Connect(CommandFocused)

local CommandLost = function() local CL = Tween:Create(Commandbar, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(49,49,49)}) CL:Play() end

Commandbar['FocusLost']:Connect(CommandLost)

local oldBind = false

local ToggleCommandbar = function(InObj, Processed) if InObj.KeyCode == Enum.KeyCode.Semicolon then if not Processed then if not oldBind then oldBind = true wait(.47) oldBind = false else Commandbar['Text'] = ';' wait() Commandbar:CaptureFocus() end end end end

UIS['InputBegan']:Connect(ToggleCommandbar)

local prefix = ";" local cmds = { ["set"] = { desc = "sets your timeposition for your radio"; reqargs = 0; func = function(self, args) local Player = GetPlayer(args[1]) local Char = Player['Character'] local Backpack = Player['Backpack'] for i,v in next, Char:GetDescendants() do if v.Name:lower():match('boombox') then v['Handle']['Sound']['TimePosition'] = math.round(args[2]) end end for i,v in next, Backpack:GetDescendants() do if v.Name:lower():match('boombox') then v['Handle']['Sound']['TimePosition'] = math.round(args[2]) end end ClearCMD() Notify('Set ' .. Player['DisplayName'] .. ''s TimePosition to: ' .. args[2], 1.5) end; }; ["desync"] = { desc = "desyncs players radio"; reqargs = 0; func = function(self, args) local Player = GetPlayer(args[1]) local Char = Player['Character'] local Backpack = Player['Backpack'] for i,v in next, Char:GetDescendants() do if v.Name:lower():match('boombox') then local Tool = v['Handle']['Sound']['TimePosition'] v['Handle']['Sound']['TimePosition'] = Tool - math.random(-1,100) end end for i,v in next, Backpack:GetDescendants() do if v.Name:lower():match('boombox') then local Tool = v['Handle']['Sound']['TimePosition'] v['Handle']['Sound']['TimePosition'] = Tool - math.random(-1,100) end end ClearCMD() Notify('Desynced ' .. Player['DisplayName'] .. ''s BoomBox to: ' .. args[2], 1.5) end; }; ["writefile"] = { desc = "writefiles the victims radio id"; reqargs = 0; func = function(self, args) local Player = GetPlayer(args[1]) local c = Player['Character'] local b = Player['Backpack']

    local Upper,Lower,Number = "ABCDEFGHIJKLMNOPQRSTUVWXYZ","abcdefghijklmnopqrstuvwxyz","1234567890"

    local CharSet,Amount,CharResult = Upper .. Lower .. Number, 5, ""

    for i = 1, Amount do
        local Rand = math.random(#CharSet)
        CharResult = CharResult .. string.sub(CharSet, Rand, Rand)
    end
    
    local Response = pcall(function()
        local Tool = c:FindFirstChildOfClass('Tool')
        if Tool['Name']:lower():match('boombox') then
            local Sound = Tool["Handle"]['Sound']
            if Sound["Playing"] == false then
                ClearCMD()
                return Notify('Could not detect an AssetId.',1.5)
            else
                writefile("MARs-Hub-Content/Logged-Audios/Audio-" .. CharResult .. '.txt', Sound["SoundId"])
                ClearCMD()
                return Notify('Saved as: Logged-Audios/Audio-' .. CharResult .. '.txt',1.5)
            end
        end
        local InvTool = b:FindFirstChildOfClass('Tool')
        if InvTool['Name']:lower():match('boombox') then
            local Sound = InvTool["Handle"]['Sound']
            if Sound["Playing"] == false then
                ClearCMD()
                return Notify('Could not detect an AssetId.',1.5)
            else
                writefile("MARs-Hub-Content/Logged-Audios/Audio-" .. CharResult .. '.txt', Sound["SoundId"])
                ClearCMD()
                return Notify('Saved as: Logged-Audios/Audio-' .. CharResult .. '.txt',1.5)
            end
        end
    end)
    end;
};
["loopdesync"] = {
    desc = "loop desyncs the victim :troll:";
    reqargs = 0;
    func = function(self, args)
        local Player = GetPlayer(args[1])
        local Char = Player['Character']
        local Backpack = Player['Backpack']
        isDesynced = true
        ClearCMD()
        Notify('Loop Desyncing ' .. Player['DisplayName'] .. '\'s BoomBox', 1.5)
        repeat
            wait(1)
            for i,v in next, Char:GetDescendants() do
                if v.Name:lower():match('boombox') then
                    if v['Handle']['Sound']['IsPlaying'] == true then
                        v['Handle']['Sound']['TimePosition'] = math.round(v['Handle']['Sound']['TimePosition'] + math.random(1,5))
                    end
                end
            end
            for i,v in next, Backpack:GetDescendants() do
                if v.Name:lower():match('boombox') then
                    if v['Handle']['Sound']['IsPlaying'] == true then
                        v['Handle']['Sound']['TimePosition'] = math.round(v['Handle']['Sound']['TimePosition'] + math.random(1,5))
                    end
                end
            end
        until isDesynced == false
    end;
};
["unloopdesync"] = {
    desc = "stops loop desyncing radios";
    reqargs = 0;
    func = function(self, args)
        local Player = GetPlayer(args[1])
        isDesynced = false
        ClearCMD()
        Notify('Stopped Loop Desycing ' .. Player['DisplayName'] .. '\'s BoomBox', 1.5)
    end;
};
["fixvis"] = {
    desc = "fixes visualizer";
    reqargs = 0;
    func = function(self, args)
        if isExperimentalMode == true then
            isExperimentalMode = false
        end
        if isExperimentalMode == false then
                local Protect = pcall(function()
                    for i,v in next, _player.c():GetDescendants() do
                        if v.Name:lower():match('boombox') then
                            local Protect = pcall(function()
                                local BP,BG = v['Handle']['_'],v['Handle']['__']
                                BP:Destroy()
                                BG:Destroy()
                                if _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R6 then
                                    _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=182393478"
                                elseif _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R15 then
                                    _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=507768375"
                                end
                            end)
                        end
                    end
                    for i,v in next, _player.b():GetDescendants() do
                        if v.Name:lower():match('boombox') then
                            local Protect = pcall(function()
                                local BP,BG = v['Handle']['_'],v['Handle']['__']
                                BP:Destroy()
                                BG:Destroy()
                                if _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R6 then
                                    _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=182393478"
                                elseif _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R15 then
                                    _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=507768375"
                                end
                            end)
                        end
                    end
                end)
                ClearCMD()
            Notify('Visualizer has been Fixed.',1.5)
        end
    end;
};
["setnew"] = {
    desc = "sets a new audio to visualize";
    reqargs = 0;
    func = function(self, args)
        if isExperimentalMode == true then
            local Encoded = AudioEncoder:Encode(args[1], {
                CustomMessage = ''
            })
            local SavedAudio = Encoded
            for i,v in ipairs(_player.c():GetDescendants()) do
                if v.Name:lower():match('boombox') then
                    v:FindFirstChildOfClass'RemoteEvent':FireServer("PlaySong", SavedAudio)
                end
            end
            ClearCMD()
            Notify('Attempting to set new Audio and Visualize.', 1.5)
        else
            ClearCMD()
            Notify('You\'re not currently Visualizing.', 1.5)
        end
    end;
};
["stopduping"] = {
    desc = "stops duping radios";
    reqargs = 0;
    func = function(self, args)
        if Duping == true then
            Duping = false
            ClearCMD()
            Notify('Stopping Dupe.',1.5)
        else
            ClearCMD()
            Notify('You\'re not currently duping tools.',1.5)
        end
    end;
};
}

Commandbar.FocusLost:Connect(function(enter_pressed) if enter_pressed then local line = Commandbar.Text:split(" ") if line[1]:sub(1,#prefix) == prefix then local cmd = nil local args = {} for i,v in pairs(line) do if not cmd and line[i]:sub(1,#prefix):lower() == prefix then cmd = line[i]:sub(#prefix + 1):lower() else args[#args+1] = v end end

        if cmd and cmds[cmd] then
            if #args < cmds[cmd].reqargs then
                warn("the command \""..cmds[cmd].."\" requires "..reqargs.." args.")
            else
                coroutine.wrap(cmds[cmd].func)(cmds[cmd], args)
            end
        end
    end
end
end)

-- Settings Section

local RGBChanger,CustomMessage = MainFrame['SectionHolder']['DSettingsFrame']['SettingsMainFrame']['RGBChangerFrame']['TextBox'],MainFrame['SectionHolder']['DSettingsFrame']['SettingsMainFrame']['CustomMessageFrame']['TextBox']

CustomMessage['ClearTextOnFocus'] = false

CustomMessage['Text'] = readfile('MARs-Hub-Content/MARs-Hub-Description.txt')

local DetectContent = function() if CustomMessage['Text']:match('&') then CustomMessage['Text'] = '' Notify('Special Characters are not allowed for a Custom Message.',1.5) end end

CustomMessage['Changed']:Connect(DetectContent)

local SaveMessageData = function() writefile('MARs-Hub-Content/MARs-Hub-Description.txt', CustomMessage['Text']) end

CustomMessage['FocusLost']:Connect(SaveMessageData)

-- Anti-Log Section

local Play,BPlay,MassPlay,Sync,IDInput,PreviewBox,PreviewBoxScrollingFrame,SongInfo = MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['AAntiLogSection']['Play'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['AAntiLogSection']['BPlay'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['AAntiLogSection']['MassPlay'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['AAntiLogSection']['Sync'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['AAntiLogSection']['InputIDFrame']['TextBox'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['AAntiLogSection']['AudioPreviewFrame']['ScrollingFrame']['TextBox'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['AAntiLogSection']['AudioPreviewFrame']['ScrollingFrame'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['AAntiLogSection']['SongInfo']

PreviewBox['ClearTextOnFocus'] = false

local IDInputDecimal = function() IDInput.Text = IDInput.Text:gsub('%D+', ''); end

IDInput:GetPropertyChangedSignal('Text'):Connect(IDInputDecimal)

local DefaultPlay = function() local Tool = _player.c():FindFirstChildOfClass('Tool')

if Tool['Name']:lower():match('boombox') then
    Tool['Parent'] = _player.b()
    wait(.1)
    Tool['Parent'] = _player.c()
end

local Asset = game:GetService'MarketplaceService':GetProductInfo(IDInput.Text)
local Encoded = AudioEncoder:Encode(IDInput.Text, {
    CustomMessage = CustomMessage.Text
})
local SavedSound = Encoded
for i,v in next, _player.c():GetDescendants() do
    if v.Name:lower():match('boombox') then
        v:FindFirstChildOfClass'RemoteEvent':FireServer('PlaySong',SavedSound)
    end
end
local Tool = _player.c():FindFirstChildOfClass('Tool')
PreviewBox['Text'] = Tool['Handle']['Sound']['SoundId']
local PB = Tween:Create(PreviewBox, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))})
PB:Play()
repeat
    wait()
    SongInfo['Text'] = Asset.Name .. ' // ' .. ToClock(Tool['Handle']['Sound']['TimePosition']) .. ' - ' .. ToClock(Tool['Handle']['Sound']['TimeLength'])
until Tool['Parent'] == _player.b()
local PB2 = Tween:Create(PreviewBox, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(49,49,49)})
PB2:Play()
SongInfo['Text'] = 'Song-Title // 0:00 - 0:00'
PreviewBox['Text'] = ''
end

Play.MouseButton1Click:Connect(DefaultPlay)

local MassRadioPlay = function() local Asset = game:GetService'MarketplaceService':GetProductInfo(IDInput.Text) local Encoded = AudioEncoder:Encode(IDInput.Text, { CustomMessage = CustomMessage.Text }) local SavedSound = Encoded

for i,v in next, _player.b():GetDescendants() do
    if v.Name:lower():match('boombox') then
        v['Parent'] = _player.c()
    end
end
wait(.2)
for i,v in next, _player.c():GetDescendants() do
    if v.Name:lower():match('boombox') then
        v:FindFirstChildOfClass'RemoteEvent':FireServer('PlaySong',SavedSound)
    end
end
local Tool = _player.c():FindFirstChildOfClass('Tool')
PreviewBox['Text'] = Tool['Handle']['Sound']['SoundId']
local PB = Tween:Create(PreviewBox, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))})
PB:Play()
repeat
    wait()
    SongInfo['Text'] = Asset.Name .. ' // ' .. ToClock(Tool['Handle']['Sound']['TimePosition']) .. ' - ' .. ToClock(Tool['Handle']['Sound']['TimeLength'])
until Tool['Parent'] == _player.b()
local PB2 = Tween:Create(PreviewBox, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(49,49,49)})
PB2:Play()
SongInfo['Text'] = 'Song-Title // 0:00 - 0:00'
PreviewBox['Text'] = ''
end

MassPlay.MouseButton1Click:Connect(MassRadioPlay)

local BackpackPlay = function() local Asset = game:GetService'MarketplaceService':GetProductInfo(IDInput.Text) local Encoded = AudioEncoder:Encode(IDInput.Text, { CustomMessage = CustomMessage.Text })

local SavedSound = Encoded

for i,v in next, _player.b():GetDescendants() do
    if v.Name:lower():match('boombox') then
        v['Parent'] = _player.c()
    end
end

for i,v in next, _player.c():GetDescendants() do
    if v.Name:lower():match('boombox') then
        v:FindFirstChildOfClass'RemoteEvent':FireServer('PlaySong', SavedSound)
    end
end

wait(.2)

for i,v in next, _player.c():GetDescendants() do
    if v.Name:lower():match('boombox') then
        v['Parent'] = _player.b()
    end
end

wait(.2)

for i,v in next, _player.b():GetDescendants() do
    if v.Name:lower():match('boombox') then
        v["Handle"]['Sound']['Playing'] = true
    end
end
local Tool = _player.b():FindFirstChildOfClass('Tool')
PreviewBox['Text'] = Tool['Handle']['Sound']['SoundId']
local PB = Tween:Create(PreviewBox, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))})
PB:Play()
repeat
    wait()
    SongInfo['Text'] = Asset.Name .. ' // ' .. ToClock(Tool['Handle']['Sound']['TimePosition']) .. ' - ' .. ToClock(Tool['Handle']['Sound']['TimeLength'])
until Tool['Parent'] == _player.c()
local PB2 = Tween:Create(PreviewBox, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(49,49,49)})
PB2:Play()
SongInfo['Text'] = 'Song-Title // 0:00 - 0:00'
PreviewBox['Text'] = ''
end

BPlay.MouseButton1Click:Connect(BackpackPlay)

local DefaultSync = function() if game:GetService'SoundService'['RespectFilteringEnabled'] == true then Notify('RFE is Enabled, Timepos change will not replicate.', 1.5) else pcall(function() Time = _player.c():FindFirstChildOfClass('Tool')['Handle']['Sound']['TimePosition']

    local Objects = _player.c():GetDescendants()
         for I = 1, #Objects do
         local Object = Objects[I]
             if Object:IsA'Sound' then
                 Object.TimePosition = math.round(Time)
             end
         end
    end)
    pcall(function()
        BackTime = _player.b():FindFirstChildOfClass('Tool')['Handle']['Sound']['TimePosition']
    end)

    local BackObj = _player.b():GetDescendants()
    for I = 1, #BackObj do
        local Obj = BackObj[I]
        if Obj:IsA'Sound' then
            Obj.TimePosition = math.round(BackTime)
        end
    end
end
end

Sync.MouseButton1Click:Connect(DefaultSync)

local VisPlay,VisInput,VisSync,VisSet,VisTarget,BassNumber,SpeedNumber,SensitivityNumber,ModeSection,ModesScrollingFrame,Mode1,Mode2,Mode3,Mode4 = MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['Play'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['VisInputIDFrame']['TextBox'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['Sync'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['Set'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['VisTargetNameFrame']['TextBox'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['BassAmountFrame']['TextBox'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['SpeedAmountFrame']['TextBox'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['SensitivityAmountFrame']['TextBox'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['ModesFrame']['ScrollingFrame'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['ModesFrame']['ScrollingFrame'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['ModesFrame']['ScrollingFrame']['Mode1'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['ModesFrame']['ScrollingFrame']['Mode2'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['ModesFrame']['ScrollingFrame']['Mode3'],MainFrame['SectionHolder']['AAntiLogFrame']['AntiLogHolderFrame']['BVisualizerFrame']['ModesFrame']['ScrollingFrame']['Mode4']

local VisInputDecimal = function() VisInput.Text = VisInput.Text:gsub('%D+', ''); end

VisInput:GetPropertyChangedSignal('Text'):Connect(VisInputDecimal)

-- Settings Config

local Config = { Sensitivity = '25', Bass = '1', Speed = '20', }

if not isfile("MARs-Hub-Content/Settings.config") then writefile("MARs-Hub-Content/Settings.config",HTTP:JSONEncode(Config)) else Config = HTTP:JSONDecode(readfile('MARs-Hub-Content/Settings.config')) end

-- Visualizer Settings Properties

BassNumber['Text'] = Config.Bass BassNumber['ClearTextOnFocus'] = false local BassConfig = function() local Config = ({ Bass = BassNumber.Text; Speed = SpeedNumber.Text; Sensitivity = SensitivityNumber.Text; }) writefile("MARs-Hub-Content/Settings.config",HTTP:JSONEncode(Config)) end BassNumber.FocusLost:Connect(BassConfig)

SpeedNumber['ClearTextOnFocus'] = false SpeedNumber['Text'] = Config.Speed local SpeedConfig = function() local Config = ({ Bass = BassNumber.Text; Speed = SpeedNumber.Text; Sensitivity = SensitivityNumber.Text; }) writefile("MARs-Hub-Content/Settings.config",HTTP:JSONEncode(Config)) end SpeedNumber.FocusLost:Connect(SpeedConfig)

SensitivityNumber['ClearTextOnFocus'] = false SensitivityNumber['Text'] = Config.Sensitivity local SensitivityConfig = function() local Config = ({ Bass = BassNumber.Text; Speed = SpeedNumber.Text; Sensitivity = SensitivityNumber.Text; }) writefile("MARs-Hub-Content/Settings.config",HTTP:JSONEncode(Config)) end SensitivityNumber.FocusLost:Connect(SensitivityConfig)

Mode1['Text'] = 'Default' Mode2['Text'] = 'Mirage' Mode3['Text'] = 'Whirlpool' Mode4['Text'] = 'Impulse'

local addNew = function(PresetName) local newMode = Mode4:Clone() newMode['Parent'] = ModesScrollingFrame newMode['Name'] = PresetName newMode['Text'] = PresetName end

addNew('Tor') addNew('Timewarp') addNew('Vortex') addNew('Scanner')

local VisMode5 = function() isMode1 = false isMode2 = false isMode3 = false isMode4 = false isMode5 = true isMode6 = false isMode7 = false isMode8 = false end

ModesScrollingFrame['Tor'].MouseButton1Click:Connect(VisMode5)

local VisMode6 = function() isMode1 = false isMode2 = false isMode3 = false isMode4 = false isMode5 = false isMode6 = true isMode7 = false isMode8 = false end

ModesScrollingFrame['Timewarp'].MouseButton1Click:Connect(VisMode6)

local VisMode7 = function() isMode1 = false isMode2 = false isMode3 = false isMode4 = false isMode5 = false isMode6 = false isMode7 = true isMode8 = false end

ModesScrollingFrame['Vortex'].MouseButton1Click:Connect(VisMode7)

local VisMode7 = function() isMode1 = false isMode2 = false isMode3 = false isMode4 = false isMode5 = false isMode6 = false isMode7 = false isMode8 = true end

ModesScrollingFrame['Scanner'].MouseButton1Click:Connect(VisMode7)

-- Visualizer Target local TargetName = GetPlayer(_player.p.Name)

local RecycleTools = function() if isExperimentalMode == true then pcall(function() for i,v in next, player.c():GetDescendants() do if v['Name']:lower():match('boombox') then v['Handle']['']:Destroy() v['Handle']['__']:Destroy() v['Parent'] = _player.b() isExperimentalMode = false end end end) if _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R6 then _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=182393478" elseif _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R15 then _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=507768375" end Notify('Net Fail; Caught Tools.', 1.5) end end

local Visualizer = function() if isExperimentalMode == true then isExperimentalMode = false for i,v in next, player.c():GetDescendants() do if v['Name']:lower():match('boombox') then v['Handle']['']:Destroy() v['Handle']['__']:Destroy() v['Parent'] = _player.b() end end

if _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R6 then
    _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=182393478"
elseif _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R15 then
    _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=507768375"
end
end

Notify("Attempting to Visualize Audio.",1.5)

local LocalPlayer,Character,Backpack = game.Players.LocalPlayer,game.Players.LocalPlayer.Character,game.Players.LocalPlayer.Backpack

repeat wait() Character:FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=" until Character:FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId == "http://www.roblox.com/asset/?id="

local DetectTools = pcall(function() for i,v in next, Character:GetDescendants() do if v.Name:lower():match('boombox') then v["Handle"][""]:Destroy() v["Handle"]["_"]:Destroy() end end for i,v in next, Backpack:GetDescendants() do if v.Name:lower():match('boombox') then v["Handle"][""]:Destroy() v["Handle"]["_"]:Destroy() end end if isExperimentalMode == true then isExperimentalMode = false end end)

isExperimentalMode = true

for i,v in next, Backpack:GetDescendants() do if v.Name:lower():match('boombox') then v['Parent'] = Character end end

local StartClaim = _player.c():FindFirstChildOfClass('Tool')

local ConnectClaim = StartClaim['DescendantRemoving']:Connect(RecycleTools)

local Handles = {}

for i,v in next, Character:GetDescendants() do if v.Name:lower():match('boombox') then table.insert(Handles, v['Handle']) end end

local Encoded = AudioEncoder:Encode(VisInput['Text'], { CustomMessage = CustomMessage.Text })

local CacheId = Encoded

for i,v in next, Character:GetDescendants() do if v.Name:lower():match('boombox') then v:FindFirstChildOfClass'RemoteEvent':FireServer('PlaySong', CacheId) end end

local Savepos = _player.c()['HumanoidRootPart']['CFrame']

_player.c()['Humanoid']['PlatformStand'] = true

_player.c()['HumanoidRootPart']['CFrame'] = CFrame.new(2e4, 2e4, 2e4)

wait(1.5)

_player.c()['HumanoidRootPart']['CFrame'] = Savepos

pcall(function() for i,v in next, _player.c():GetDescendants() do if v['Name'] == 'RightGrip' then v:Destroy() end end end)

for i,v in next, Character:GetDescendants() do if v.Name:lower():match('boombox') then local BP = Instance.new('BodyPosition', v['Handle']) BP['Name'] = '_' BP['P'] = 150000 BP['MaxForce'] = Vector3.new(math.huge,math.huge,math.huge) local BG = Instance.new('BodyGyro', v['Handle']) BG['Name'] = '__' BG['P'] = 20000 BG['MaxTorque'] = Vector3.new(math.huge,math.huge,math.huge) BG['CFrame'] = Character['HumanoidRootPart']['CFrame'] end end

local ExperimentalVisualizer = function() if isExperimentalMode then local Protect = pcall(function() local ToolFind = Character:FindFirstChildOfClass('Tool') local PBL = ToolFind['Handle']['Sound']['PlaybackLoudness'] * 0.0025 local radius = 5 local Speed = 5 local fullCircle = 0 if SensitivityNumber['Text'] == '' then radius = 5 + PBL else radius = 5 + PBL * tonumber(SensitivityNumber['Text']/3) end if SpeedNumber['Text'] == '' then fullCircle = tick() * Speed * 2 else fullCircle = tick() * Speed * tonumber(SpeedNumber['Text']) end if BassNumber['Text'] == '' then PBL = PBL * 10 else PBL = PBL * tonumber(BassNumber['Text']) end if isMode1 == true then for i,v in next, Handles do local angle = math.rad(fullCircle+(i*(360/#Handles))) local lookAt = TargetName['Character']['HumanoidRootPart']['Position'] local Pos,Gyro = v[''],v['__'] local X,Y,Z = TargetName['Character']['HumanoidRootPart']['Position']['X'],TargetName['Character']['HumanoidRootPart']['Position']['Y'],TargetName['Character']['HumanoidRootPart']['Position']['Z'] Pos['Position'] = Vector3.new(X + math.cos(angle) * radius,Y,Z + math.sin(angle) * radius) Gyro['CFrame'] = CFrame.new(v['Position'], lookAt) * CFrame.Angles(PBL/5,0,0) end elseif isMode2 == true then for i,v in next, Handles do local angle = math.rad(fullCircle+(i*(360/#Handles))) local lookAt = TargetName['Character']['HumanoidRootPart']['Position'] local Pos,Gyro = v[''],v[''] local X,Y,Z = TargetName['Character']['HumanoidRootPart']['Position']['X'],TargetName['Character']['HumanoidRootPart']['Position']['Y'],TargetName['Character']['HumanoidRootPart']['Position']['Z'] Pos['Position'] = Vector3.new(X + math.cos(angle) * radius,Y + math.sin(angle) * radius * math.cos(tick()) * math.sin(tick() * i/3),Z + math.sin(angle) * radius) Gyro['CFrame'] = CFrame.new(v['Position'], lookAt) * CFrame.Angles(PBL/5,0,0) end elseif isMode3 == true then for i,v in next, Handles do local angle = math.rad(fullCircle+(i*(180/#Handles))) local lookAt = TargetName['Character']['HumanoidRootPart']['Position'] local Pos,Gyro = v['_'],v[''] local X,Y,Z = TargetName['Character']['HumanoidRootPart']['Position']['X'],TargetName['Character']['HumanoidRootPart']['Position']['Y'],TargetName['Character']['HumanoidRootPart']['Position']['Z'] Pos['Position'] = Vector3.new(X + math.cos(angle) * radius,Y + math.cos(tick() * i/2),Z + math.sin(angle) * radius * math.cos(tick() + i/5)) Gyro['CFrame'] = CFrame.new(v['Position'], lookAt) * CFrame.Angles(math.cos(tick()) + PBL/5,0,math.sin(tick())) end elseif isMode4 == true then for i,v in next, Handles do local angle = math.rad(fullCircle+(i*(360/#Handles))) local lookAt = TargetName['Character']['HumanoidRootPart']['Position'] local Pos,Gyro = v[''],v['__'] local X,Y,Z = TargetName['Character']['HumanoidRootPart']['Position']['X'],TargetName['Character']['HumanoidRootPart']['Position']['Y'],TargetName['Character']['HumanoidRootPart']['Position']['Z'] Pos['Position'] = Vector3.new(X + math.cos(angle) * radius,Y + math.sin(tick()) * math.sin(tick() * i/5) * math.cos(tick() + i/7),Z + math.sin(angle) * radius) Gyro['CFrame'] = CFrame.new(v['Position'], lookAt) * CFrame.Angles(PBL/5,0,0) end elseif isMode5 == true then for i,v in next, Handles do local angle = math.rad(fullCircle+(i*(360/#Handles))) local lookAt = TargetName['Character']['HumanoidRootPart']['Position'] local Pos,Gyro = v[''],v[''] local X,Y,Z = TargetName['Character']['HumanoidRootPart']['Position']['X'],TargetName['Character']['HumanoidRootPart']['Position']['Y'],TargetName['Character']['HumanoidRootPart']['Position']['Z'] Pos['Position'] = Vector3.new(X + math.cos(angle) * radius,Y + math.sin(tick() * i/2),Z + math.sin(angle) * radius) Gyro['CFrame'] = CFrame.new(v['Position'], lookAt) * CFrame.Angles(PBL/5,0,0) end elseif isMode6 == true then for i,v in next, Handles do local angle = math.rad(fullCircle+(i*(360/#Handles))) local lookAt = TargetName['Character']['HumanoidRootPart']['Position'] local Pos,Gyro = v['_'],v[''] local X,Y,Z = TargetName['Character']['HumanoidRootPart']['Position']['X'],TargetName['Character']['HumanoidRootPart']['Position']['Y'],TargetName['Character']['HumanoidRootPart']['Position']['Z'] Pos['Position'] = Vector3.new(X + math.cos(angle) * radius + math.sin(tick()),Y + math.sin(tick() * i/8),Z + math.sin(angle) * radius + math.cos(tick() * i/2)) Gyro['CFrame'] = CFrame.new(v['Position'], lookAt) * CFrame.Angles(PBL/5, math.cos(tick() + i), math.cos(tick() + i)) end elseif isMode7 == true then for i,v in next, Handles do local angle = math.rad(fullCircle+(i*(360/#Handles))) local lookAt = TargetName['Character']['HumanoidRootPart']['Position'] local Pos,Gyro = v[''],v['__'] local X,Y,Z = TargetName['Character']['HumanoidRootPart']['Position']['X'],TargetName['Character']['HumanoidRootPart']['Position']['Y'],TargetName['Character']['HumanoidRootPart']['Position']['Z'] Pos['Position'] = Vector3.new(X + math.cos(angle) * radius,Y + math.sin(angle) * radius * math.cos(tick()) * math.sin(tick()),Z + math.sin(angle) * radius) Gyro['CFrame'] = CFrame.new(v['Position'], lookAt) * CFrame.Angles(PBL/5, 0, 0) end elseif isMode8 == true then for i,v in next, Handles do local angle = math.rad(fullCircle+(i*(360/#Handles))) local lookAt = TargetName['Character']['HumanoidRootPart']['Position'] local Pos,Gyro = v[''],v['__'] local X,Y,Z = TargetName['Character']['HumanoidRootPart']['Position']['X'],TargetName['Character']['HumanoidRootPart']['Position']['Y'],TargetName['Character']['HumanoidRootPart']['Position']['Z'] Pos['Position'] = Vector3.new(X + math.cos(angle) * radius + math.sin(tick() * i/5),Y + math.sin(tick() * i/5) + math.sin(angle) * radius + math.cos(tick()),Z + math.sin(tick() * 2)) Gyro['CFrame'] = CFrame.new(v['Position'], lookAt) * CFrame.Angles(PBL/5, 0, 0) end end for i,v in next, Handles do v['Velocity'] = Vector3.new(26,0,0) end end) end end

game:GetService('RunService').Heartbeat:Connect(ExperimentalVisualizer)

_player.c()['Humanoid']['PlatformStand'] = false

wait(.47)

for i,v in ipairs(Handles) do local t = _player.c():FindFirstChildOfClass('Tool') v['Sound']['TimePosition'] = math.round(t['Handle']['Sound']['TimePosition']) end

local Asset = game:GetService'MarketplaceService':GetProductInfo(VisInput.Text)

local Tool = _player.c():FindFirstChildOfClass('Tool')

local PB = Tween:Create(PreviewBox, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) PB:Play()

ConnectClaim:Disconnect()

repeat wait() local Handle = Tool['Handle'] PreviewBox['Text'] = Handle['Sound']['SoundId'] SongInfo['Text'] = Asset.Name .. ' // ' .. ToClock(Handle['Sound']['TimePosition']) .. ' - ' .. ToClock(Handle['Sound']['TimeLength']) until Tool['Parent'] == _player.b() or Tool['Parent'] == workspace local PB2 = Tween:Create(PreviewBox, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(49,49,49)}) PB2:Play() SongInfo['Text'] = 'Song-Title' .. ' // ' .. '0:00 - 0:00' PreviewBox['Text'] = '' isExperimentalMode = false

local RemoveMovers = pcall(function() for i,v in next, Handles do v['_']:Destroy() v['__']:Destroy() end end)

if _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R6 then _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=182393478" elseif _player.c()['Humanoid']['RigType'] == Enum.HumanoidRigType.R15 then _player.c():FindFirstChild("Animate"):FindFirstChild("toolnone"):FindFirstChild("ToolNoneAnim").AnimationId = "http://www.roblox.com/asset/?id=507768375" end Handles = nil Notify('Stopped Visualizing.',1.5) end

VisPlay.MouseButton1Click:Connect(Visualizer)

local VisualizerSync = function() if game:GetService'SoundService'['RespectFilteringEnabled'] == true then Notify('RFE is Enabled, Timepos change will not replicate.', 1.5) else pcall(function() Time = _player.c():FindFirstChildOfClass('Tool')['Handle']['Sound']['TimePosition']

        local Objects = _player.c():GetDescendants()
        for I = 1, #Objects do
            local Object = Objects[I]
            if Object:IsA'Sound' then
                Object.TimePosition = math.round(Time)
            end
        end
    end)
end
end

VisSync.MouseButton1Click:Connect(VisualizerSync)

local TargetVis = function() TargetName = GetPlayer(VisTarget.Text) end

VisSet.MouseButton1Click:Connect(TargetVis)

local VisMode1 = function() isMode1 = true isMode2 = false isMode3 = false isMode4 = false isMode5 = false isMode6 = false isMode7 = false isMode8 = false end

Mode1.MouseButton1Click:Connect(VisMode1)

local VisMode2 = function() isMode1 = false isMode2 = true isMode3 = false isMode4 = false isMode5 = false isMode6 = false isMode7 = false isMode8 = false end

Mode2.MouseButton1Click:Connect(VisMode2)

local VisMode3 = function() isMode1 = false isMode2 = false isMode3 = true isMode4 = false isMode5 = false isMode6 = false isMode7 = false isMode8 = false end

Mode3.MouseButton1Click:Connect(VisMode3)

local VisMode4 = function() isMode1 = false isMode2 = false isMode3 = false isMode4 = true isMode5 = false isMode6 = false isMode7 = false isMode8 = false end

Mode4.MouseButton1Click:Connect(VisMode4)

-- Audio Decoder

local DecoderOutput,DecoderOutputScrollingFrame,Decode,DecodeFile,CopyID = MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['ADecoderFrame']['DecoderFrame']['ScrollingFrame']['DecoderInput'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['ADecoderFrame']['DecoderFrame']['ScrollingFrame'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['ADecoderFrame']['DecoderFrame']['ButtonContainer']['Decode'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['ADecoderFrame']['DecoderFrame']['ButtonContainer']['DecodeFile'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['ADecoderFrame']['DecoderFrame']['ButtonContainer']['CopyID']

DecoderOutput['ClearTextOnFocus'] = false

DecoderOutput:GetPropertyChangedSignal("Text"):Connect(function() if string.len(DecoderOutput.Text) > 65536 then Notify('Text is too large, Please write to file.',1.5) end end)

local AntiDecoder = function() if DecoderOutput['Text'] == "" then Notify('No input detected.',1.5) elseif DecoderOutput['Text']:match('metadataid') or DecoderOutput['Text']:match('cumId') or DecoderOutput['Text']:match('requestassettype') or DecoderOutput['Text']:lower():match('%%00=') then Notify('Cannot Decode.',1.5) elseif DecoderOutput['Text']:match('Kaid0001') then local char, gsub, tonumber = string.char, string.gsub, tonumber local function _(hex) return char(tonumber(hex, 16)) end

        function hi(s)
            s = gsub(s, '%%(%x%x)', _)
            return s
        end

        local ReturnId = hi(DecoderOutput['Text'])

        DecoderOutput['Text'] = ReturnId:match('(%d+)')
        Notify('Decoded to AssetId.',1.5)
    else

    local abc = DecoderOutput.Text:gsub('%%26', '')

    local char, gsub, tonumber = string.char, string.gsub, tonumber
    local function _(hex) return char(tonumber(hex, 16)) end

    function hi(s)
        s = gsub(s, '%%(%x%x)', _)
        return s
    end

    local test = hi(abc)

    if test:match("MAR's Private Admin") or test:match("MAR'sPrivateAdmin") then
        test:gsub('%%(%x%X)','')
    end

    local Filters = test:gsub('+',''):gsub('‭',''):gsub('',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub('‬',''):gsub('+',''):gsub('‪',''):gsub('â€�',''):gsub('assetid',''):gsub('universeid',''):gsub('userassetid',''):gsub('&ð›²¡â€�asâ€�sâ€�etversionid=',''):gsub(' ',''):gsub('0&hash=',''):gsub('‎',''):gsub('‮',''):gsub('‫',''):gsub(' ',''):gsub('â',''):gsub('€',''):gsub('®️',''):gsub('‏',''):gsub('â',''):gsub('€',''):gsub('Ž',''):gsub('�',''):gsub('‫ ',''):gsub('«',''):gsub('®',''):gsub('¬',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub('\f','')
        
    local NewLine = Filters:lower()

    local FoundId = {}

    for _ in NewLine:gmatch('[^&]+') do
        if _:find("=") ~= nil then
            table.insert(FoundId, _)
        end
    end

    for i,v in next, FoundId do
        local AssetFind = v:gsub('%%(%x%x)', function(x)
            return string.char(tonumber(x,16))
        end):lower()
    
        if AssetFind:match('^assetversionid=') then
            local String = tonumber(AssetFind:sub(AssetFind:find("=") + 1))

            local Success, Response = pcall(function()
                if syn then
                    local GetAssetId; do
                        local URL = 'https://dot-mp4.dev/u/utilities/getAssetId.php'
                            
                        local b64 = syn.crypt.base64.encode
                            
                        function GetAssetId(AssetId)
                            local Response = syn.request({
                                Url = URL,
                                Body = string.format('AssetId=%s', b64(AssetId)),
                                Method = 'POST'
                            }).Body
                            if string.match(Response, '^Error:') then
                                return false, string.gsub(Response, 'Error: ')
                            end
                            return Response
                        end
                    end
                    
                    local Result = GetAssetId('assetversionid=' .. String)
                    
                    DecoderOutput['Text'] = Result:match('%d+')
                    
                    if Result == nil then
                        Notify('Cannot Decode.', 1.5)
                    else
                        Notify('Decoded to AssetId.', 1.5)
                    end
                elseif getexecutorname() then
                    local GetAssetId; do
                        local URL = 'https://dot-mp4.dev/u/utilities/getAssetId.php'
                            
                        local b64 = crypt.base64encode
                            
                        function GetAssetId(AssetId)
                            local Response = request({
                                Url = URL,
                                Body = string.format('AssetId=%s', b64(AssetId)),
                                Method = 'POST'
                            }).Body
                            if string.match(Response, '^Error:') then
                                return false, string.gsub(Response, 'Error: ')
                            end
                            return Response
                        end
                    end
                    
                    local Result = GetAssetId('assetversionid=' .. String)
                    
                    DecoderOutput['Text'] = Result:match('%d+')
                    
                    if Result == nil then
                        Notify('Cannot Decode.', 1.5)
                    else
                        Notify('Decoded to AssetId.', 1.5)
                    end
                end
            end)
            return;
        end
    end
end
end

Decode.MouseButton1Click:Connect(AntiDecoder)

local AntiDecodeFile = function() local abc = readfile('MARs-Hub-Content/Logged-Audios/' .. DecoderOutput.Text):gsub('%%26', '') if abc == "" then Notify('No input detected.',1.5) elseif abc:match('metadataid') or abc:match('cumId') or abc:match('requestassettype') or abc:lower():match('%%00=') then Notify('Cannot Decode.',1.5) elseif DecoderOutput['Text']:match('Kaid0001') then local char, gsub, tonumber = string.char, string.gsub, tonumber local function _(hex) return char(tonumber(hex, 16)) end

        function hi(s)
            s = gsub(s, '%%(%x%x)', _)
            return s
        end

        local ReturnId = hi(DecoderOutput['Text'])

        DecoderOutput['Text'] = ReturnId:match('(%d+)')
        Notify('Decoded to AssetId.',1.5)
    else


    local char, gsub, tonumber = string.char, string.gsub, tonumber
    local function _(hex) return char(tonumber(hex, 16)) end

    function hi(s)
        s = gsub(s, '%%(%x%x)', _)
        return s
    end

    local test = hi(abc)

    if test:match("MAR's Private Admin") or test:match("MAR'sPrivateAdmin") then
        test:gsub('%%(%x%X)','')
    end

    local Filters = test:gsub('+',''):gsub('‭',''):gsub('',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub('‬',''):gsub('+',''):gsub('‪',''):gsub('â€�',''):gsub('assetid',''):gsub('universeid',''):gsub('userassetid',''):gsub('&ð›²¡â€�asâ€�sâ€�etversionid=',''):gsub(' ',''):gsub('0&hash=',''):gsub('‎',''):gsub('‮',''):gsub('‫',''):gsub(' ',''):gsub('â',''):gsub('€',''):gsub('®️',''):gsub('‏',''):gsub('â',''):gsub('€',''):gsub('Ž',''):gsub('�',''):gsub('‫ ',''):gsub('«',''):gsub('®',''):gsub('¬',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub(' ',''):gsub('\f','')
        
    local NewLine = Filters:lower()

    local FoundId = {}

    for _ in NewLine:gmatch('[^&]+') do
        if _:find("=") ~= nil then
            table.insert(FoundId, _)
        end
    end

    for i,v in next, FoundId do
        local AssetFind = v:gsub('%%(%x%x)', function(x)
            return string.char(tonumber(x,16))
        end):lower()
    
        if AssetFind:match('^assetversionid=') then
            local String = tonumber(AssetFind:sub(AssetFind:find("=") + 1))

            local Success, Response = pcall(function()
                if syn then
                    local GetAssetId; do
                        local URL = 'https://dot-mp4.dev/u/utilities/getAssetId.php'
                            
                        local b64 = syn.crypt.base64.encode
                            
                        function GetAssetId(AssetId)
                            local Response = syn.request({
                                Url = URL,
                                Body = string.format('AssetId=%s', b64(AssetId)),
                                Method = 'POST'
                            }).Body
                            if string.match(Response, '^Error:') then
                                return false, string.gsub(Response, 'Error: ')
                            end
                            return Response
                        end
                    end
                    
                    local Result = GetAssetId('assetversionid=' .. String)
                    
                    DecoderOutput['Text'] = Result:match('%d+')
                    
                    if Result == nil then
                        Notify('Cannot Decode.', 1.5)
                    else
                        Notify('Decoded to AssetId.', 1.5)
                    end
                elseif getexecutorname() then
                    local GetAssetId; do
                        local URL = 'https://dot-mp4.dev/u/utilities/getAssetId.php'
                            
                        local b64 = crypt.base64encode
                            
                        function GetAssetId(AssetId)
                            local Response = request({
                                Url = URL,
                                Body = string.format('AssetId=%s', b64(AssetId)),
                                Method = 'POST'
                            }).Body
                            if string.match(Response, '^Error:') then
                                return false, string.gsub(Response, 'Error: ')
                            end
                            return Response
                        end
                    end
                    
                    local Result = GetAssetId('assetversionid=' .. String)
                    
                    DecoderOutput['Text'] = Result:match('%d+')
                    
                    if Result == nil then
                        Notify('Cannot Decode.', 1.5)
                    else
                        Notify('Decoded to AssetId.', 1.5)
                    end
                end
            end)
            return;
        end
    end
end
end

DecodeFile.MouseButton1Click:Connect(AntiDecodeFile)

local CopyDecodeOuput = function() setclipboard(DecoderOutput.Text) Notify('Copied to Clipboard.',1.5) end

CopyID.MouseButton1Click:Connect(CopyDecodeOuput)

-- Playerlist Handler

local Playerlist,PlayerContainer,PlayerMute,PlayerDecode,PlayerIcon,PlayerName = MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['BPlayerlistFrame']['Frame']['ScrollingFrame'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['BPlayerlistFrame']['Frame']['ScrollingFrame']['FoundPlayer'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['BPlayerlistFrame']['Frame']['ScrollingFrame']['FoundPlayer']['Mute'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['BPlayerlistFrame']['Frame']['ScrollingFrame']['FoundPlayer']['DecodePlayer'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['BPlayerlistFrame']['Frame']['ScrollingFrame']['FoundPlayer']['TargetIcon'],MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['BPlayerlistFrame']['Frame']['ScrollingFrame']['FoundPlayer']['TargetName']

PlayerContainer['Visible'] = false PlayerContainer['Size'] = UDim2.new(0, 0, 0, 66)

pcall(function() for i,v in next, game:GetService("Players"):GetChildren() do local PlayersDisplay = v.DisplayName local PlayersName = v.Name local Clone = PlayerContainer:Clone() Clone["Name"] = "FoundPlayer_" .. v.DisplayName Clone["Parent"] = Playerlist Clone["TargetName"].Text = v.DisplayName Clone["TargetName"].TextScaled = true Clone:TweenSize(UDim2.new(0, 280, 0, 66),'Out','Sine',.3,false) Clone.Visible = true local Players = game:GetService("Players") local userId = v.UserId local thumbType = Enum.ThumbnailType.HeadShot local thumbSize = Enum.ThumbnailSize.Size420x420 local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

    Clone['TargetIcon'].Image = content
    Clone['TargetIcon'].BackgroundTransparency = 1

    local DecodePlayer = function()
        local Find = GetPlayer(PlayersName)
        local Tool = Find['Character']
        local BackpackTool = Find['Backpack']

        local Radio,BackRadio = Tool:FindFirstChildOfClass('Tool'),BackpackTool:FindFirstChildOfClass('Tool')
        
        if Radio['Name']:lower():match('boombox') then
            if Radio['Handle']['Sound']['IsLoaded'] == true then
                local Sound = Radio["Handle"].Sound["SoundId"]:gsub('http://www.roblox.com/asset/%?id=',''):gsub('rbxassetid://',''):gsub('0&hash=','')
                DecoderOutput['Text'] = Sound
                Notify('Sent ' .. PlayersDisplay .. '\'s Audio to Decoder.',1.5)
            else
                Notify('Cannot find ' .. PlayersDisplay .. '\'s Boombox.',1.5)
            end
            return;
        end

        if BackRadio['Name']:lower():match('boombox') then
            if BackRadio['Handle']['Sound']['IsLoaded'] == true then
                local Sound = BackRadio["Handle"].Sound["SoundId"]:gsub('http://www.roblox.com/asset/%?id=',''):gsub('rbxassetid://',''):gsub('0&hash=','')
                DecoderOutput['Text'] = Sound
                Notify('Sent ' .. PlayersDisplay .. '\'s Audio to Decoder.',1.5)
            else
                Notify('Cannot find ' .. PlayersDisplay .. '\'s Boombox.',1.5)
            end
            return;
        end
    end

    Clone["DecodePlayer"].MouseButton1Click:Connect(DecodePlayer)

    local MutePlayer = function()
    if Clone['TargetName']['Text'] == _player.p.DisplayName then
        Notify('You cannot mute yourself.',1.5)
    elseif Clone['Mute']['Text'] == 'Mute' then
            Clone['Mute']['Text'] = 'UnMute'
            isMuted = true
            game:GetService('RunService').Stepped:Connect(function()
                if isMuted then
                    local Plr = GetPlayer(PlayersName)
                    local Char = Plr['Character']
                    local Backpack = Plr['Backpack']

                    for i,v in next, Char:GetDescendants() do
                        if v.Name:lower():match('boombox') then
                            v["Handle"]['Sound']['Playing'] = false
                        end
                    end

                    for i,v in next, Backpack:GetDescendants() do
                        if v.Name:lower():match('boombox') then
                            v["Handle"]['Sound']['Playing'] = false
                        end
                    end
                end
            end)
        else
            isMuted = false
            Clone['Mute']['Text'] = 'Mute'
        end
    end
    Clone['Mute'].MouseButton1Click:Connect(MutePlayer)
end
end)

pcall(function() Players.PlayerAdded:Connect(function(player) local PlayersDisplay = player.DisplayName local PlayersName = player.Name local Clone = PlayerContainer:Clone() Clone["Name"] = "FoundPlayer_" .. player.DisplayName Clone["Parent"] = Playerlist Clone["TargetName"].Text = player.DisplayName Clone["TargetName"].TextScaled = true Clone:TweenSize(UDim2.new(0, 280, 0, 66),'Out','Sine',.3,false) Clone.Visible = true local Players = game:GetService("Players") local userId = player.UserId local thumbType = Enum.ThumbnailType.HeadShot local thumbSize = Enum.ThumbnailSize.Size420x420 local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

    Clone['TargetIcon'].Image = content
    Clone['TargetIcon'].BackgroundTransparency = 1

    local DecodePlayer = function()
        local Find = GetPlayer(PlayersName)
        local Tool = Find['Character']
        local BackpackTool = Find['Backpack']

        local Radio,BackRadio = Tool:FindFirstChildOfClass('Tool'),BackpackTool:FindFirstChildOfClass('Tool')
        
        if Radio['Name']:lower():match('boombox') then
            if Radio['Handle']['Sound']['IsLoaded'] == true then
                local Sound = Radio["Handle"].Sound["SoundId"]:gsub('http://www.roblox.com/asset/%?id=',''):gsub('rbxassetid://',''):gsub('0&hash=','')
                DecoderOutput['Text'] = Sound
                Notify('Sent ' .. PlayersDisplay .. '\'s Audio to Decoder.',1.5)
            else
                Notify('Cannot find ' .. PlayersDisplay .. '\'s Boombox.',1.5)
            end
            return;
        end

        if BackRadio['Name']:lower():match('boombox') then
            if BackRadio['Handle']['Sound']['IsLoaded'] == true then
                local Sound = BackRadio["Handle"].Sound["SoundId"]:gsub('http://www.roblox.com/asset/%?id=',''):gsub('rbxassetid://',''):gsub('0&hash=','')
                DecoderOutput['Text'] = Sound
                Notify('Sent ' .. PlayersDisplay .. '\'s Audio to Decoder.',1.5)
            else
                Notify('Cannot find ' .. PlayersDisplay .. '\'s Boombox.',1.5)
            end
            return;
        end
    end

    Clone["DecodePlayer"].MouseButton1Click:Connect(DecodePlayer)

    local MutePlayer = function()
        if Clone['Mute']['Text'] == 'Mute' then
            Clone['Mute']['Text'] = 'UnMute'
            isMuted = true
            game:GetService('RunService').Stepped:Connect(function()
                if isMuted then
                    local Plr = GetPlayer(PlayersName)
                    local Char = Plr['Character']
                    local Backpack = Plr['Backpack']

                    for i,v in next, Char:GetDescendants() do
                        if v.Name:lower():match('boombox') then
                            v["Handle"]['Sound']['Playing'] = false
                        end
                    end

                    for i,v in next, Backpack:GetDescendants() do
                        if v.Name:lower():match('boombox') then
                            v["Handle"]['Sound']['Playing'] = false
                        end
                    end
                end
            end)
        else
            isMuted = false
            Clone['Mute']['Text'] = 'Mute'
        end
    end
    Clone['Mute'].MouseButton1Click:Connect(MutePlayer)
end)
end)

pcall(function() Players.PlayerRemoving:Connect(function(player) for i,v in next, MainFrame['SectionHolder']['BAudioDecoderFrame']['DecoderHolderFrame']['BPlayerlistFrame']['Frame']['ScrollingFrame']:GetDescendants() do if v:IsA'Frame' and v.Name:lower():match(player.DisplayName) then v:Destroy() end end end) end)

-- Utilities Section

local DupeAmount,Dupe,CloneTarget,Clone,StealTools,GrabTools,Demesh = MainFrame['SectionHolder']['CUtilitiesFrame']['UtilitiesMainFrame']['DupeAmountFrame']['TextBox'],MainFrame['SectionHolder']['CUtilitiesFrame']['UtilitiesMainFrame']['Dupe'],MainFrame['SectionHolder']['CUtilitiesFrame']['UtilitiesMainFrame']['CloneTargetNameFrame']['TextBox'],MainFrame['SectionHolder']['CUtilitiesFrame']['UtilitiesMainFrame']:FindFirstChild'Clone',MainFrame['SectionHolder']['CUtilitiesFrame']['UtilitiesMainFrame']['StealTools'],MainFrame['SectionHolder']['CUtilitiesFrame']['UtilitiesMainFrame']['DropTools'],MainFrame['SectionHolder']['CUtilitiesFrame']['UtilitiesMainFrame']['Demesh']

workspace.FallenPartsDestroyHeight = 0/1/0 local Savepos = _player.c()["HumanoidRootPart"].CFrame local Rand = Random.new() local ToggleDupe = function() local ToolAmount = DupeAmount.Text if DupeAmount.Text == "" then Notify("Enter a number of tools to start duping.",1.5) else if Duping == false then Duping = true end

    if Duping then
	    local Tools = {}

	    local Char = _player.c()
	    if not Char then
		    Char =  _player.p.CharacterAdded:Wait()
	    end
	    local Humanoid = Char:WaitForChild'Humanoid'
	    if not Humanoid then
		    return Notify("No valid humanoid found.",1.5)
	    end
	    local RootPart = Char:WaitForChild'HumanoidRootPart'
	    if not RootPart then
		    return Notify("No valid root found.",1.5)
	    end

	    local ReturnCFrame = RootPart.CFrame

	    local Index = 0
        repeat
	    Index = Index + 1

        Notify(("Duping; Queue: %s/%s"):format(Index, ToolAmount),1)
        
        _player.c()['Humanoid']['PlatformStand'] = true
        
        RootPart['CFrame'] = CFrame.new(Rand:NextInteger(-2e4, 2e4), 2e4, Rand:NextInteger(-2e4, 2e4))

	    for _, Tool in next, Tools do
		    Tool.Handle.Anchored = false
		    Tool.Handle.CanCollide = false
		    firetouchinterest(_player.c()['HumanoidRootPart'], Tool['Handle'], 0)
        end

        wait(.6)

        Humanoid:UnequipTools()
	
	    wait(.2)

	    local FoundTools = {}; do
		    for _, Tool in next, _player.b():GetChildren() do
			    if Tool.Name:lower():match('boombox') then
				    FoundTools[#FoundTools+1] = Tool
			    end
		    end
	    end;

        wait(.2)

	    for _, Tool in next, FoundTools do
		    Tool.Parent = Char
	    end

	    wait(.2)

	    for _, Tool in next, FoundTools do
		    Tool.Parent = workspace
		    Tool.Handle.Anchored = true
		    Tools[#Tools+1] = Tool
	    end
	    
	    _player.c()['HumanoidRootPart']['Anchored'] = true

	    wait(.2)
	    
	    _player.c()['Humanoid']['Health'] = 0
	    
	    Char = _player.p.CharacterAdded:Wait()
	    Humanoid = Char:WaitForChild'Humanoid'
	    RootPart = Char:WaitForChild'HumanoidRootPart'
        if Duping == false then
            ToolAmount = Index
        end

        RootPart['CFrame'] = CFrame.new(Rand:NextInteger(-2e4, 2e4), 2e4, Rand:NextInteger(-2e4, 2e4))

	    until tonumber(ToolAmount) == Index

        Duping = not Duping

        DupeAmount.Text = ""

	    if #Tools < 1 then
		    return Notify("No radios found.",1.5)
	    end

	    RootPart['CFrame'] = CFrame.new(Rand:NextInteger(-2e4, 2e4), 2e4, Rand:NextInteger(-2e4, 2e4))

	    wait(.2)

	    for _, Tool in next, Tools do
		    Tool.Handle.Anchored = false
		    Tool.Handle.CanCollide = false
		    firetouchinterest(_player.c()['HumanoidRootPart'], Tool['Handle'], 0)
	    end
        
        wait(.2)

        for i,v in next, _player.c():GetDescendants() do
            if v.Name:lower():match('boombox') then
                v['Parent'] = _player.b()
            end
        end

        wait(.2)

        RootPart['CFrame'] = ReturnCFrame
        
        wait(.2)
        
        Humanoid:UnequipTools()

        wait(.2)

	    Notify("Dupe Completed!",1.3)
    end
end
end

Dupe.MouseButton1Click:Connect(ToggleDupe)

local ToolsToWorkspace = function() for i,v in next, _player.b():GetDescendants() do if v.Name:lower():match('boombox') then v['Parent'] = _player.c() end end for i,v in next, _player.c():GetDescendants() do if v.Name:lower():match('boombox') then v['Parent'] = workspace end end end

GrabTools.MouseButton1Click:Connect(ToolsToWorkspace)

local StealToolsInWorkspace = function() for i,v in next, workspace:GetDescendants() do if v.Name:lower():match('boombox') then v['Handle']['Anchored'] = false firetouchinterest(_player.c()['HumanoidRootPart'], v['Handle'], 0) end end end

StealTools.MouseButton1Click:Connect(StealToolsInWorkspace)

local DemeshTools = function() for i,v in next, _player.b():GetDescendants() do if v.Name:lower():match('boombox') then v['Handle']['Mesh']:Destroy() end end for i,v in next, _player.c():GetDescendants() do if v.Name:lower():match('boombox') then v['Handle']['Mesh']:Destroy() end end end

Demesh.MouseButton1Click:Connect(DemeshTools)

local CloneSound = function() local Player = GetPlayer(CloneTarget.Text) local c = Player.Character local b = Player.Backpack for i,v in next, _player.b():GetDescendants() do if v.Name:lower():match("boombox") then v["Parent"] = _player.c() end end for i,v in next, c:GetDescendants() do if v.Name:lower():match("boombox") then local PlayersAudio = v["Handle"].Sound["SoundId"]:gsub("http://www.roblox.com/asset/%?id=",''):gsub("rbxassetid://",'') for i,v in next, _player.c():GetDescendants() do if v.Name:lower():match("boombox") then v:FindFirstChildOfClass'RemoteEvent':FireServer("PlaySong",PlayersAudio) end end end end wait(.47) for i,v in next, c:GetDescendants() do if v.Name:lower():match("boombox") then local PlayersTime = v["Handle"].Sound["TimePosition"] for i,v in next, _player.c():GetDescendants() do if v.Name:lower():match("boombox") then v["Handle"].Sound["TimePosition"] = PlayersTime end end end end end

Clone.MouseButton1Click:Connect(CloneSound)

local HT = Tween:Create(SectionBar, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) HT:Play() local CS = Tween:Create(CommandsList, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) CS:Play() local HT = Tween:Create(HUBText, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) HT:Play() local PS = Tween:Create(PreviewBoxScrollingFrame, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) PS:Play() local MS = Tween:Create(ModesScrollingFrame, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) MS:Play() local DS = Tween:Create(DecoderOutputScrollingFrame, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) DS:Play() local PL = Tween:Create(Playerlist, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(readfile('MARs-Hub-Content/RGB-Selected.txt'))}) PL:Play()

RGBChanger.FocusLost:Connect(function(enter_pressed) if enter_pressed then local HT = Tween:Create(SectionBar, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = TextToColor3(RGBChanger.Text)}) HT:Play() local CS = Tween:Create(CommandsList, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(RGBChanger.Text)}) CS:Play() local HT = Tween:Create(HUBText, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = TextToColor3(RGBChanger.Text)}) HT:Play() local PS = Tween:Create(PreviewBoxScrollingFrame, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(RGBChanger.Text)}) PS:Play() local MS = Tween:Create(ModesScrollingFrame, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(RGBChanger.Text)}) MS:Play() local DS = Tween:Create(DecoderOutputScrollingFrame, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(RGBChanger.Text)}) DS:Play() local PL = Tween:Create(Playerlist, TweenInfo.new(.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageColor3 = TextToColor3(RGBChanger.Text)}) PL:Play() writefile('MARs-Hub-Content/RGB-Selected.txt',tostring(RGBChanger.Text)) end end)

Notify('Nigger hub loaded.',1.5)
