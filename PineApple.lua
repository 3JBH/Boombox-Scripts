

local screenGui = Instance.new("ScreenGui",game:GetService("CoreGui"))

local Instances = {
	["TextButton_9"] = Instance.new("TextButton"),
	["UICorner_2"] = Instance.new("UICorner"),
	["TextButton_6"] = Instance.new("TextButton"),
	["TextBox_1"] = Instance.new("TextBox"),
	["LocalScript_7"] = Instance.new("LocalScript"),
	["LocalScript_11"] = Instance.new("LocalScript"),
	["TextLabel_2"] = Instance.new("TextLabel"),
	["Frame_5"] = Instance.new("Frame"),
	["Frame_6"] = Instance.new("Frame"),
	["LocalScript_4"] = Instance.new("LocalScript"),
	["TextButton_12"] = Instance.new("TextButton"),
	["TextLabel_4"] = Instance.new("TextLabel"),
	["Frame_11"] = Instance.new("Frame"),
	["UICorner_7"] = Instance.new("UICorner"),
	["Frame_4"] = Instance.new("Frame"),
	["LocalScript_17"] = Instance.new("LocalScript"),
	["TextButton_7"] = Instance.new("TextButton"),
	["LocalScript_13"] = Instance.new("LocalScript"),
	["TextLabel_5"] = Instance.new("TextLabel"),
	["TextButton_11"] = Instance.new("TextButton"),
	["TextLabel_1"] = Instance.new("TextLabel"),
	["Frame_2"] = Instance.new("Frame"),
	["TextButton_5"] = Instance.new("TextButton"),
	["TextButton_10"] = Instance.new("TextButton"),
	["Frame_1"] = Instance.new("Frame"),
	["LocalScript_5"] = Instance.new("LocalScript"),
	["TextBox_5"] = Instance.new("TextBox"),
	["LocalScript_3"] = Instance.new("LocalScript"),
	["LocalScript_15"] = Instance.new("LocalScript"),
	["LocalScript_14"] = Instance.new("LocalScript"),
	["UICorner_3"] = Instance.new("UICorner"),
	["Frame_10"] = Instance.new("Frame"),
	["LocalScript_9"] = Instance.new("LocalScript"),
	["TextButton_3"] = Instance.new("TextButton"),
	["TextLabel_7"] = Instance.new("TextLabel"),
	["Frame_3"] = Instance.new("Frame"),
	["TextLabel_3"] = Instance.new("TextLabel"),
	["LocalScript_16"] = Instance.new("LocalScript"),
	["LocalScript_2"] = Instance.new("LocalScript"),
	["TextButton_4"] = Instance.new("TextButton"),
	["UICorner_1"] = Instance.new("UICorner"),
	["TextBox_2"] = Instance.new("TextBox"),
	["LocalScript_1"] = Instance.new("LocalScript"),
	["LocalScript_12"] = Instance.new("LocalScript"),
	["TextLabel_6"] = Instance.new("TextLabel"),
	["LocalScript_10"] = Instance.new("LocalScript"),
	["TextBox_3"] = Instance.new("TextBox"),
	["LocalScript_6"] = Instance.new("LocalScript"),
	["TextButton_2"] = Instance.new("TextButton"),
	["Frame_7"] = Instance.new("Frame"),
	["LocalScript_8"] = Instance.new("LocalScript"),
	["UICorner_6"] = Instance.new("UICorner"),
	["TextButton_8"] = Instance.new("TextButton"),
	["TextButton_1"] = Instance.new("TextButton"),
	["UICorner_5"] = Instance.new("UICorner"),
	["Frame_8"] = Instance.new("Frame"),
	["UICorner_4"] = Instance.new("UICorner"),
	["TextBox_4"] = Instance.new("TextBox"),
	["Frame_9"] = Instance.new("Frame"),
}


screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Instances.Frame_1.Parent = screenGui
Instances.Frame_1.AnchorPoint = Vector2.new(0.5, 0.5)
Instances.Frame_1.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Instances.Frame_1.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame_1.BorderSizePixel = 2
Instances.Frame_1.Position = UDim2.new(0.5, 0, 0.5643185377120972, 0)
Instances.Frame_1.Size = UDim2.new(0, 429, 0, 385)

Instances.Frame_2.Parent = Instances.Frame_1
Instances.Frame_2.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.Frame_2.BorderSizePixel = 0
Instances.Frame_2.Size = UDim2.new(0, 428, 0, 30)

Instances.TextLabel_1.Parent = Instances.Frame_2
Instances.TextLabel_1.Font = Enum.Font.Code
Instances.TextLabel_1.Text = 'Pineapple'
Instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 0.498039)
Instances.TextLabel_1.TextSize = 15
Instances.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
Instances.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_1.BackgroundTransparency = 1
Instances.TextLabel_1.Position = UDim2.new(0.03504672646522522, 0, 0, 0)
Instances.TextLabel_1.Size = UDim2.new(0, 76, 0, 28)

Instances.TextLabel_2.Parent = Instances.Frame_2
Instances.TextLabel_2.Font = Enum.Font.Code
Instances.TextLabel_2.Text = 'v1.1 (a)'
Instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_2.TextSize = 15
Instances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
Instances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_2.BackgroundTransparency = 1
Instances.TextLabel_2.Position = UDim2.new(0.27336448431015015, 0, 0, 0)
Instances.TextLabel_2.Size = UDim2.new(0, 73, 0, 28)

Instances.Frame_3.Parent = Instances.Frame_1
Instances.Frame_3.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
Instances.Frame_3.BackgroundTransparency = 0.699999988079071
Instances.Frame_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Instances.Frame_3.Position = UDim2.new(0.23574651777744293, 0, 0, 0)
Instances.Frame_3.Size = UDim2.new(0, 1, 0, 28)

Instances.TextButton_1.Parent = Instances.Frame_1
Instances.TextButton_1.Font = Enum.Font.Code
Instances.TextButton_1.Text = 'Visualize'
Instances.TextButton_1.TextColor3 = Color3.new(1, 1, 1)
Instances.TextButton_1.TextSize = 14
Instances.TextButton_1.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextButton_1.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextButton_1.Position = UDim2.new(0.34500470757484436, 0, 0.10405946522951126, 0)
Instances.TextButton_1.Size = UDim2.new(0, 125, 0, 26)
Instances.TextButton_1.Name = 'TextBox'

Instances.LocalScript_1.Parent = Instances.TextButton_1

Instances.TextButton_2.Parent = Instances.Frame_1
Instances.TextButton_2.Font = Enum.Font.Code
Instances.TextButton_2.Text = 'Mass-Play'
Instances.TextButton_2.TextColor3 = Color3.new(1, 1, 1)
Instances.TextButton_2.TextSize = 14
Instances.TextButton_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextButton_2.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextButton_2.Position = UDim2.new(0.6783380508422852, 0, 0.10405946522951126, 0)
Instances.TextButton_2.Size = UDim2.new(0, 119, 0, 26)
Instances.TextButton_2.Name = 'TextBox'

Instances.LocalScript_2.Parent = Instances.TextButton_2

Instances.Frame_4.Parent = Instances.Frame_1
Instances.Frame_4.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
Instances.Frame_4.BackgroundTransparency = 0.550000011920929
Instances.Frame_4.Position = UDim2.new(0, 0, 0.29694950580596924, 0)
Instances.Frame_4.Size = UDim2.new(0, 429, 0, 1)

Instances.TextLabel_3.Parent = Instances.Frame_1
Instances.TextLabel_3.Font = Enum.Font.Code
Instances.TextLabel_3.Text = 'Settings'
Instances.TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_3.TextSize = 15
Instances.TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_3.BackgroundTransparency = 1
Instances.TextLabel_3.Position = UDim2.new(0.40856266021728516, 0, 0.29767438769340515, 0)
Instances.TextLabel_3.Size = UDim2.new(0, 69, 0, 26)

Instances.Frame_5.Parent = Instances.Frame_1
Instances.Frame_5.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.Frame_5.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame_5.Position = UDim2.new(0.023310022428631783, 0, 0.38405317068099976, 0)
Instances.Frame_5.Size = UDim2.new(0, 408, 0, 224)

Instances.TextLabel_4.Parent = Instances.Frame_5
Instances.TextLabel_4.Font = Enum.Font.Code
Instances.TextLabel_4.Text = 'Main Angle'
Instances.TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_4.TextSize = 13
Instances.TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_4.BackgroundTransparency = 1
Instances.TextLabel_4.Position = UDim2.new(0.06064336374402046, 0, 0.034233756363391876, 0)
Instances.TextLabel_4.Size = UDim2.new(0, 69, 0, 13)

Instances.Frame_6.Parent = Instances.Frame_5
Instances.Frame_6.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Instances.Frame_6.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame_6.Position = UDim2.new(0.014705882407724857, 0, 0.16304348409175873, 0)
Instances.Frame_6.Size = UDim2.new(0, 107, 0, 24)

Instances.Frame_7.Parent = Instances.Frame_6
Instances.Frame_7.BackgroundColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Instances.Frame_7.BackgroundTransparency = 0.699999988079071
Instances.Frame_7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Instances.Frame_7.Position = UDim2.new(0.33500000834465027, 0, 0, 0)
Instances.Frame_7.Size = UDim2.new(0, 1, 0, 24)

Instances.Frame_8.Parent = Instances.Frame_6
Instances.Frame_8.BackgroundColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Instances.Frame_8.BackgroundTransparency = 0.699999988079071
Instances.Frame_8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Instances.Frame_8.Position = UDim2.new(0.660274863243103, 0, 0, 0)
Instances.Frame_8.Size = UDim2.new(0, 1, 0, 24)

Instances.TextButton_3.Parent = Instances.Frame_6
Instances.TextButton_3.Font = Enum.Font.Code
Instances.TextButton_3.Text = 'X'
Instances.TextButton_3.TextColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Instances.TextButton_3.TextSize = 14
Instances.TextButton_3.BackgroundColor3 = Color3.new(1, 1, 0.498039)
Instances.TextButton_3.Position = UDim2.new(0.009345794096589088, 0, 0, 0)
Instances.TextButton_3.Size = UDim2.new(0, 35, 0, 24)
Instances.TextButton_3.Name = 'MAX'

Instances.UICorner_1.Parent = Instances.TextButton_3
Instances.UICorner_1.CornerRadius = UDim.new(0, 3)

Instances.LocalScript_3.Parent = Instances.TextButton_3

Instances.TextButton_4.Parent = Instances.Frame_6
Instances.TextButton_4.Font = Enum.Font.Code
Instances.TextButton_4.Text = 'Y'
Instances.TextButton_4.TextColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Instances.TextButton_4.TextSize = 14
Instances.TextButton_4.BackgroundColor3 = Color3.new(1, 1, 0.498039)
Instances.TextButton_4.Position = UDim2.new(0.3396226167678833, 0, 0, 0)
Instances.TextButton_4.Size = UDim2.new(0, 35, 0, 24)
Instances.TextButton_4.Name = 'MAY'

Instances.UICorner_2.Parent = Instances.TextButton_4
Instances.UICorner_2.CornerRadius = UDim.new(0, 3)

Instances.LocalScript_4.Parent = Instances.TextButton_4

Instances.TextButton_5.Parent = Instances.Frame_6
Instances.TextButton_5.Font = Enum.Font.Code
Instances.TextButton_5.Text = 'Z'
Instances.TextButton_5.TextColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Instances.TextButton_5.TextSize = 14
Instances.TextButton_5.BackgroundColor3 = Color3.new(1, 1, 0.498039)
Instances.TextButton_5.Position = UDim2.new(0.6607300043106079, 0, 0, 0)
Instances.TextButton_5.Size = UDim2.new(0, 35, 0, 24)
Instances.TextButton_5.Name = 'MAZ'

Instances.UICorner_3.Parent = Instances.TextButton_5
Instances.UICorner_3.CornerRadius = UDim.new(0, 3)

Instances.LocalScript_5.Parent = Instances.TextButton_5

Instances.Frame_9.Parent = Instances.Frame_5
Instances.Frame_9.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Instances.Frame_9.BorderColor3 = Color3.new(0, 0, 0)
Instances.Frame_9.Position = UDim2.new(0.6852940917015076, 0, 0.2934347987174988, 0)
Instances.Frame_9.Size = UDim2.new(0, 107, 0, 24)

Instances.Frame_10.Parent = Instances.Frame_9
Instances.Frame_10.BackgroundColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Instances.Frame_10.BackgroundTransparency = 0.699999988079071
Instances.Frame_10.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Instances.Frame_10.Position = UDim2.new(0.33500000834465027, 0, 0, 0)
Instances.Frame_10.Size = UDim2.new(0, 1, 0, 24)

Instances.Frame_11.Parent = Instances.Frame_9
Instances.Frame_11.BackgroundColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Instances.Frame_11.BackgroundTransparency = 0.699999988079071
Instances.Frame_11.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Instances.Frame_11.Position = UDim2.new(0.660274863243103, 0, 0, 0)
Instances.Frame_11.Size = UDim2.new(0, 1, 0, 24)

Instances.TextButton_6.Parent = Instances.Frame_9
Instances.TextButton_6.Font = Enum.Font.Code
Instances.TextButton_6.Text = 'X'
Instances.TextButton_6.TextColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Instances.TextButton_6.TextSize = 14
Instances.TextButton_6.BackgroundColor3 = Color3.new(1, 1, 0.498039)
Instances.TextButton_6.Position = UDim2.new(0.009345794096589088, 0, 0, 0)
Instances.TextButton_6.Size = UDim2.new(0, 35, 0, 24)
Instances.TextButton_6.Name = 'WAX'

Instances.UICorner_4.Parent = Instances.TextButton_6
Instances.UICorner_4.CornerRadius = UDim.new(0, 3)

Instances.LocalScript_6.Parent = Instances.TextButton_6

Instances.TextButton_7.Parent = Instances.Frame_9
Instances.TextButton_7.Font = Enum.Font.Code
Instances.TextButton_7.Text = 'Y'
Instances.TextButton_7.TextColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Instances.TextButton_7.TextSize = 14
Instances.TextButton_7.BackgroundColor3 = Color3.new(1, 1, 0.498039)
Instances.TextButton_7.Position = UDim2.new(0.3396226167678833, 0, 0, 0)
Instances.TextButton_7.Size = UDim2.new(0, 35, 0, 24)
Instances.TextButton_7.Name = 'WAY'

Instances.UICorner_5.Parent = Instances.TextButton_7
Instances.UICorner_5.CornerRadius = UDim.new(0, 3)

Instances.LocalScript_7.Parent = Instances.TextButton_7

Instances.TextButton_8.Parent = Instances.Frame_9
Instances.TextButton_8.Font = Enum.Font.Code
Instances.TextButton_8.Text = 'Z'
Instances.TextButton_8.TextColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Instances.TextButton_8.TextSize = 14
Instances.TextButton_8.BackgroundColor3 = Color3.new(1, 1, 0.498039)
Instances.TextButton_8.Position = UDim2.new(0.6607300043106079, 0, 0, 0)
Instances.TextButton_8.Size = UDim2.new(0, 35, 0, 24)
Instances.TextButton_8.Name = 'WAZ'

Instances.UICorner_6.Parent = Instances.TextButton_8
Instances.UICorner_6.CornerRadius = UDim.new(0, 3)

Instances.LocalScript_8.Parent = Instances.TextButton_8

Instances.TextButton_9.Parent = Instances.Frame_9
Instances.TextButton_9.Font = Enum.Font.Code
Instances.TextButton_9.Text = ''
Instances.TextButton_9.TextColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Instances.TextButton_9.TextSize = 14
Instances.TextButton_9.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Instances.TextButton_9.Position = UDim2.new(0.8144166469573975, 0, -1.1703211069107056, 0)
Instances.TextButton_9.Size = UDim2.new(0, 18, 0, 18)
Instances.TextButton_9.Name = 'WavesOn'

Instances.UICorner_7.Parent = Instances.TextButton_9
Instances.UICorner_7.CornerRadius = UDim.new(0, 3)

Instances.LocalScript_9.Parent = Instances.TextButton_9

Instances.TextLabel_5.Parent = Instances.Frame_5
Instances.TextLabel_5.Font = Enum.Font.Code
Instances.TextLabel_5.Text = 'Waves'
Instances.TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_5.TextSize = 13
Instances.TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_5.BackgroundTransparency = 1
Instances.TextLabel_5.Position = UDim2.new(0.7297610640525818, 0, 0.034233756363391876, 0)
Instances.TextLabel_5.Size = UDim2.new(0, 69, 0, 13)

Instances.TextLabel_6.Parent = Instances.Frame_5
Instances.TextLabel_6.Font = Enum.Font.Code
Instances.TextLabel_6.Text = 'Enabled'
Instances.TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_6.TextSize = 13
Instances.TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_6.BackgroundTransparency = 1
Instances.TextLabel_6.Position = UDim2.new(0.6856434345245361, 0, 0.15923376381397247, 0)
Instances.TextLabel_6.Size = UDim2.new(0, 48, 0, 13)

Instances.TextLabel_7.Parent = Instances.Frame_5
Instances.TextLabel_7.Font = Enum.Font.Code
Instances.TextLabel_7.Text = 'Misc'
Instances.TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_7.TextSize = 13
Instances.TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
Instances.TextLabel_7.BackgroundTransparency = 1
Instances.TextLabel_7.Position = UDim2.new(0.4013296961784363, 0, 0.034233756363391876, 0)
Instances.TextLabel_7.Size = UDim2.new(0, 69, 0, 13)

Instances.TextBox_1.Parent = Instances.Frame_5
Instances.TextBox_1.Font = Enum.Font.Code
Instances.TextBox_1.PlaceholderText = 'Distance (5)'
Instances.TextBox_1.Text = ''
Instances.TextBox_1.TextColor3 = Color3.new(1, 1, 1)
Instances.TextBox_1.TextSize = 14
Instances.TextBox_1.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextBox_1.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextBox_1.Position = UDim2.new(0.3393828570842743, 0, 0.36220782995224, 0)
Instances.TextBox_1.Size = UDim2.new(0, 119, 0, 29)
Instances.TextBox_1.Name = 'Distance'

Instances.LocalScript_10.Parent = Instances.TextBox_1

Instances.TextBox_2.Parent = Instances.Frame_5
Instances.TextBox_2.Font = Enum.Font.Code
Instances.TextBox_2.PlaceholderText = 'Wave Intensity (3)'
Instances.TextBox_2.Text = ''
Instances.TextBox_2.TextColor3 = Color3.new(1, 1, 1)
Instances.TextBox_2.TextSize = 12
Instances.TextBox_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextBox_2.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextBox_2.Position = UDim2.new(0.33900001645088196, 0, 0.581853449344635, 0)
Instances.TextBox_2.Size = UDim2.new(0, 119, 0, 29)
Instances.TextBox_2.Name = 'WaveInt'

Instances.LocalScript_11.Parent = Instances.TextBox_2

Instances.TextBox_3.Parent = Instances.Frame_5
Instances.TextBox_3.Font = Enum.Font.Code
Instances.TextBox_3.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
Instances.TextBox_3.PlaceholderText = 'Speed (1)'
Instances.TextBox_3.Text = ''
Instances.TextBox_3.TextColor3 = Color3.new(1, 1, 1)
Instances.TextBox_3.TextSize = 14
Instances.TextBox_3.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextBox_3.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextBox_3.Position = UDim2.new(0.3409999907016754, 0, 0.8066344857215881, 0)
Instances.TextBox_3.Size = UDim2.new(0, 119, 0, 29)
Instances.TextBox_3.Name = 'Speed'

Instances.LocalScript_12.Parent = Instances.TextBox_3

Instances.LocalScript_13.Parent = Instances.Frame_1

Instances.LocalScript_14.Parent = Instances.Frame_1
Instances.LocalScript_14.Name = 'Dragify'

Instances.TextBox_4.Parent = Instances.Frame_1
Instances.TextBox_4.Font = Enum.Font.Code
Instances.TextBox_4.PlaceholderText = 'Audio-ID'
Instances.TextBox_4.Text = ''
Instances.TextBox_4.TextColor3 = Color3.new(1, 1, 1)
Instances.TextBox_4.TextSize = 14
Instances.TextBox_4.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextBox_4.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextBox_4.Position = UDim2.new(0.02565738745033741, 0, 0.10405946522951126, 0)
Instances.TextBox_4.Size = UDim2.new(0, 119, 0, 26)
Instances.TextBox_4.Name = 'AudioId'

Instances.TextBox_5.Parent = Instances.Frame_1
Instances.TextBox_5.Font = Enum.Font.Code
Instances.TextBox_5.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
Instances.TextBox_5.PlaceholderText = 'Amount'
Instances.TextBox_5.Text = ''
Instances.TextBox_5.TextColor3 = Color3.new(1, 1, 1)
Instances.TextBox_5.TextSize = 14
Instances.TextBox_5.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextBox_5.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextBox_5.Position = UDim2.new(0.02565738745033741, 0, 0.2027607560157776, 0)
Instances.TextBox_5.Size = UDim2.new(0, 119, 0, 26)
Instances.TextBox_5.Name = 'Amount'

Instances.TextButton_10.Parent = Instances.Frame_1
Instances.TextButton_10.Font = Enum.Font.Code
Instances.TextButton_10.Text = 'Dupe Amount'
Instances.TextButton_10.TextColor3 = Color3.new(1, 1, 1)
Instances.TextButton_10.TextSize = 14
Instances.TextButton_10.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextButton_10.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextButton_10.Position = UDim2.new(0.34500470757484436, 0, 0.2027607560157776, 0)
Instances.TextButton_10.Size = UDim2.new(0, 125, 0, 26)
Instances.TextButton_10.Name = 'TextBox'

Instances.LocalScript_15.Parent = Instances.TextButton_10

Instances.TextButton_11.Parent = Instances.Frame_1
Instances.TextButton_11.Font = Enum.Font.Code
Instances.TextButton_11.Text = 'Steal Tools'
Instances.TextButton_11.TextColor3 = Color3.new(1, 1, 1)
Instances.TextButton_11.TextSize = 14
Instances.TextButton_11.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextButton_11.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextButton_11.Position = UDim2.new(0.6783380508422852, 0, 0.2027607560157776, 0)
Instances.TextButton_11.Size = UDim2.new(0, 119, 0, 26)
Instances.TextButton_11.Name = 'TextBox'

Instances.LocalScript_16.Parent = Instances.TextButton_11

Instances.TextButton_12.Parent = Instances.Frame_1
Instances.TextButton_12.Font = Enum.Font.Code
Instances.TextButton_12.Text = 'Sync'
Instances.TextButton_12.TextColor3 = Color3.new(1, 1, 1)
Instances.TextButton_12.TextSize = 14
Instances.TextButton_12.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Instances.TextButton_12.BorderColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Instances.TextButton_12.Position = UDim2.new(0.34733572602272034, 0, 0.4754880368709564, 0)
Instances.TextButton_12.Size = UDim2.new(0, 119, 0, 26)
Instances.TextButton_12.Name = 'TextBox'

Instances.LocalScript_17.Parent = Instances.TextButton_12

local DO_NOT_COPY_THIS_VARIABLE_001 = {}
local DO_NOT_COPY_THIS_VARIABLE_002 = require

local require = function(object)
	local module = DO_NOT_COPY_THIS_VARIABLE_001[object]

	if module then
		return DO_NOT_COPY_THIS_VARIABLE_001[object]()
	end

	return DO_NOT_COPY_THIS_VARIABLE_002(object)
end


function Code_LocalScript_1() --LocalScript
	local script = Instances.LocalScript_1

	local currentid=""
	local currentconnection=nil
	local vis = nil
	local dt =0
	local CurrentSound=nil
	local CurrentTimePosition=0
	game:service'RunService'.Stepped:Connect(function(e,d)
		dt+=d
	end)
	local dont=1
	function setupadded()
		game.Players.LocalPlayer.Character.ChildAdded:Connect(function(child)
			if child:IsA("Tool") and dont ==0 then
				wait()
				child.Parent=game.Players.LocalPlayer.Backpack
				wait(.3)
				dont=1
				if vis ~=nil then
					vis(currentid,CurrentTimePosition)
				end
			end
		end)
	end
	setupadded()
	vis=function(id,timepos)
		_G.tov={}
		if _G.NetFix==nil then
			_G.NetFix=" "
			game:service'RunService'.Heartbeat:Connect(function()
				for i,v in pairs(_G.tov) do
					v[1].Velocity=Vector3.new(2e2,0,0)
					v[1].CFrame=v[2].CFrame
				end
			end)
		end
		local Stopped=false
		local visstuff={}
		local function align(i)
			l=Instance.new("Part")
			l.Transparency=1
			l.Parent=i.Parent
			l.Size=Vector3.new(0,0,0)
			l.Name=""
			l.CanCollide=false
			l.Anchored=true
			l.CFrame=i.CFrame
			table.insert(_G.tov,{i,l})
			local att0 = Instance.new("Attachment", i)
			att0.Position = Vector3.new(0,0,0)
			local att1 = Instance.new("Attachment", l)
			att1.Position = Vector3.new(0,0,0)
			local AP = Instance.new("AlignPosition", i)
			AP.Attachment0 = att0
			AP.Attachment1 = att1
			AP.RigidityEnabled = true
			AP.ReactionForceEnabled = false
			AP.ApplyAtCenterOfMass = true
			AP.MaxForce = 9999999
			AP.MaxVelocity = math.huge
			AP.Responsiveness = 200
			local AO = Instance.new("AlignOrientation", i)
			AO.Attachment0 = att0
			AO.Attachment1 = att1
			AO.ReactionTorqueEnabled = false
			AO.PrimaryAxisOnly = false
			AO.MaxTorque = 9999999
			AO.MaxAngularVelocity = math.huge
			AO.Responsiveness = 200
			table.insert(visstuff,{AO,AP,att0,att1,l})
			return l
		end
		local Visualizer={}
		local First=false
		local Handles={}
		local ToolCount=0
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				ToolCount=ToolCount+1
			end
		end
		local cf=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				coroutine.wrap(function()
					if First==false then
						First=v
					end
					local Handle=v:FindFirstChildOfClass("Part")
					v.Parent=game.Players.LocalPlayer.Character
					if Handle:FindFirstChildOfClass("Sound") then
						Handle:FindFirstChildOfClass("Sound").Parent=Instance.new("Part")
					end
					currentid=id
					v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong",(id))
					repeat wait() until Handle:FindFirstChildOfClass("Sound") and Handle:FindFirstChildOfClass("Sound").IsPlaying
					for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if v.Name=="RightGrip" then
							v:Destroy()
						end
					end
					Handle.Name=""
					if First==v then
						CurrentSound=Handle:FindFirstChildOfClass("Sound")
					end
					Handle:FindFirstChildOfClass("Sound").Playing=false
					coroutine.wrap(function()
						repeat wait() until v.Parent~=game.Players.LocalPlayer.Character
						Handle.Name="Handle"
						Stopped=true
						dont=1
						_G.tov={}
						for i,v in pairs(visstuff) do
							for i,v in pairs(v) do
								v:Destroy()
							end
						end
					end)()
					table.insert(Handles,Handle)
					table.insert(Visualizer,align(Handle))
				end)()
			end
		end
		local Root=game.Players.LocalPlayer.Character.HumanoidRootPart
		repeat wait() until #Visualizer==ToolCount and CurrentSound
		wait(1)
		for i,v in pairs(Handles) do
			coroutine.wrap(function()
				v:FindFirstChildOfClass("Sound").TimePosition=timepos
				v:FindFirstChildOfClass("Sound").Playing=true
			end)()
		end
		spawn(function()
			while wait(.6) do
				if Stopped == true then
					break
				end
				if CurrentSound.IsPlaying == true then
					CurrentTimePosition=CurrentSound.TimePosition
				end
			end
		end)
		local RenderStepped = game:GetService('RunService').RenderStepped
		local Wait = RenderStepped.Wait
		local Selected=CurrentSound
		local p = Instance.new("Part")
		function CF2V(cf)
			p.CFrame=cf
			return p.Rotation
		end
		local function AngleFromSettings(angle,str)
			if str=="X" then
				return CFrame.Angles(angle,0,0)
			elseif str=="Y" then
				return CFrame.Angles(0,angle,0)
			elseif str=="Z" then
				return CFrame.Angles(0,0,angle)
			end
		end
		local function VectorFromSettings(angle,str)
			if str=="X" then
				return Vector3.new(angle,0,0)
			elseif str=="Y" then
				return Vector3.new(0,angle,0)
			elseif str=="Z" then
				return Vector3.new(0,0,angle)
			end
		end
		dont=0
		setupadded()
		for K,V in next, Visualizer do
			coroutine.wrap(function()
				repeat
					local Spin = 0
					repeat
						if CurrentSound then
							local Volume = CurrentSound['PlaybackLoudness']
							local Iterator=math.rad(Spin+(K*(360/#Visualizer)))
							local Z = _G.Distance + Volume / (1 ~= 100 and (100 - 1) or .01)
							local G =  Volume / (35 ~= 100 and (100 - 35) or .01)
							local P = CFrame.new(Root['Position']) * AngleFromSettings(Iterator,_G.VisAngle) * CFrame.new(0,0,Z)
							local AddVector =Vector3.new(0,0,0)
							if _G.WavesOn == "On" then
								AddVector=VectorFromSettings(math.sin((((dt*_G.WaveInt)+(K/#Visualizer)*(math.pi*2)))),_G.WavesAngle)
							end
							V['Position'] = P.p+AddVector
							V['Rotation'] = CF2V(CFrame.new(V.Position, Root['Position'] + Vector3.new(0, G, 0)))
						end
						Spin+=_G.Speed
						game:service'RunService'.RenderStepped:Wait()
					until Stopped or ((Spin >= 360)) 
				until Stopped
				ccc:Disconnect()
			end)()
		end
	end
	script.Parent.MouseButton1Click:Connect(function()
		vis(script.Parent.Parent.AudioId.Text:gsub("%D+", ""),0)
	end)
end
coroutine.wrap(Code_LocalScript_1)()


function Code_LocalScript_2() --LocalScript
	local script = Instances.LocalScript_2

	script.Parent.MouseButton1Click:Connect(function()
		local Backpack=game.Players.LocalPlayer.Backpack
		local lp=game.Players.LocalPlayer
		local tosync=false
		local tt=0
		for i,v in pairs(Backpack:GetChildren()) do
			if v:IsA("Tool") then
				tt=tt+1
			end
		end
		local t = {}
		for i,v in pairs(Backpack:GetChildren()) do
			if v:IsA("Tool") then
				coroutine.wrap(function()
					if v.Handle:FindFirstChildOfClass("Sound") then
						v.Handle:FindFirstChildOfClass("Sound"):Destroy()
					end
					v.Parent=lp.Character
					v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong",(script.Parent.Parent.AudioId.Text:gsub("%D+", "")))
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound")
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound").IsPlaying
					v.Handle:FindFirstChildOfClass("Sound").Playing=false
					table.insert(t,v)
				end)()
			end
		end
		repeat game:service'RunService'.Heartbeat:Wait() until #t==tt
		wait(1)
		for i,v in pairs(t) do
			coroutine.wrap(function()
				v.Handle:FindFirstChildOfClass("Sound").TimePosition=0
				v.Handle:FindFirstChildOfClass("Sound").Playing=true
			end)()
		end
		print("done")
	end)
end
coroutine.wrap(Code_LocalScript_2)()


function Code_LocalScript_3() --LocalScript
	local script = Instances.LocalScript_3

	script.Parent.MouseButton1Click:Connect(function()
		_G.VisAngle=script.Parent.Name:gsub("MA","")
	end)
	while wait() do
		if script.Parent.Name=="MA"..tostring(_G.VisAngle) then
			script.Parent.BackgroundTransparency=0
			script.Parent.TextColor3=Color3.fromRGB(53, 53, 53)
		else
			script.Parent.BackgroundTransparency=1
			script.Parent.TextColor3=Color3.fromRGB(255,255,255)
		end
	end
end
coroutine.wrap(Code_LocalScript_3)()


function Code_LocalScript_4() --LocalScript
	local script = Instances.LocalScript_4

	script.Parent.MouseButton1Click:Connect(function()
		_G.VisAngle=script.Parent.Name:gsub("MA","")
	end)
	while wait() do
		if script.Parent.Name=="MA"..tostring(_G.VisAngle) then
			script.Parent.BackgroundTransparency=0
			script.Parent.TextColor3=Color3.fromRGB(53, 53, 53)
		else
			script.Parent.BackgroundTransparency=1
			script.Parent.TextColor3=Color3.fromRGB(255,255,255)
		end
	end
end
coroutine.wrap(Code_LocalScript_4)()


function Code_LocalScript_5() --LocalScript
	local script = Instances.LocalScript_5

	script.Parent.MouseButton1Click:Connect(function()
		_G.VisAngle=script.Parent.Name:gsub("MA","")
	end)
	while wait() do
		if script.Parent.Name=="MA"..tostring(_G.VisAngle) then
			script.Parent.BackgroundTransparency=0
			script.Parent.TextColor3=Color3.fromRGB(53, 53, 53)
		else
			script.Parent.BackgroundTransparency=1
			script.Parent.TextColor3=Color3.fromRGB(255,255,255)
		end
	end
end
coroutine.wrap(Code_LocalScript_5)()


function Code_LocalScript_6() --LocalScript
	local script = Instances.LocalScript_6

	script.Parent.MouseButton1Click:Connect(function()
		_G.WavesAngle=script.Parent.Name:gsub("WA","")
	end)
	while wait() do
		if script.Parent.Name=="WA"..tostring(_G.WavesAngle) then
			script.Parent.BackgroundTransparency=0
			script.Parent.TextColor3=Color3.fromRGB(53, 53, 53)
		else
			script.Parent.BackgroundTransparency=1
			script.Parent.TextColor3=Color3.fromRGB(255,255,255)
		end
	end
end
coroutine.wrap(Code_LocalScript_6)()


function Code_LocalScript_7() --LocalScript
	local script = Instances.LocalScript_7

	script.Parent.MouseButton1Click:Connect(function()
		_G.WavesAngle=script.Parent.Name:gsub("WA","")
	end)
	while wait() do
		if script.Parent.Name=="WA"..tostring(_G.WavesAngle) then
			script.Parent.BackgroundTransparency=0
			script.Parent.TextColor3=Color3.fromRGB(53, 53, 53)
		else
			script.Parent.BackgroundTransparency=1
			script.Parent.TextColor3=Color3.fromRGB(255,255,255)
		end
	end
end
coroutine.wrap(Code_LocalScript_7)()


function Code_LocalScript_8() --LocalScript
	local script = Instances.LocalScript_8

	script.Parent.MouseButton1Click:Connect(function()
		_G.WavesAngle=script.Parent.Name:gsub("WA","")
	end)
	while wait() do
		if script.Parent.Name=="WA"..tostring(_G.WavesAngle) then
			script.Parent.BackgroundTransparency=0
			script.Parent.TextColor3=Color3.fromRGB(53, 53, 53)
		else
			script.Parent.BackgroundTransparency=1
			script.Parent.TextColor3=Color3.fromRGB(255,255,255)
		end
	end
end
coroutine.wrap(Code_LocalScript_8)()


function Code_LocalScript_9() --LocalScript
	local script = Instances.LocalScript_9

	script.Parent.MouseButton1Click:Connect(function()
		if "Waves".._G.WavesOn==script.Parent.Name then
			_G.WavesOn="Off"
		else
			_G.WavesOn="On"
		end
	end)
	while wait() do
		if script.Parent.Name=="Waves"..tostring(_G.WavesOn) then
			script.Parent.BackgroundColor3=Color3.fromRGB(255, 255, 127)
		else
			script.Parent.BackgroundColor3=Color3.fromRGB(31,31,31)
		end
	end 
end
coroutine.wrap(Code_LocalScript_9)()


function Code_LocalScript_10() --LocalScript
	local script = Instances.LocalScript_10

	_G[script.Parent.Name]=5
	script.Parent.Changed:Connect(function(t)
		if t=="Text" then
			_G[script.Parent.Name]=tonumber(script.Parent.Text) or 0
		end
	end)
end
coroutine.wrap(Code_LocalScript_10)()


function Code_LocalScript_11() --LocalScript
	local script = Instances.LocalScript_11

	_G[script.Parent.Name]=3
	script.Parent.Changed:Connect(function(t)
		if t=="Text" then
			_G[script.Parent.Name]=tonumber(script.Parent.Text) or 0
		end
	end)
end
coroutine.wrap(Code_LocalScript_11)()


function Code_LocalScript_12() --LocalScript
	local script = Instances.LocalScript_12

	_G[script.Parent.Name]=1
	script.Parent.Changed:Connect(function(t)
		if t=="Text" then
			_G[script.Parent.Name]=tonumber(script.Parent.Text) or 0
		end
	end)
end
coroutine.wrap(Code_LocalScript_12)()


function Code_LocalScript_13() --LocalScript
	local script = Instances.LocalScript_13

	_G.VisAngle="X"
	_G.WavesOn="Off"
	_G.WavesAngle="Y"
	_G.BoomboxDependantSpeed="Off"
end
coroutine.wrap(Code_LocalScript_13)()


function Code_LocalScript_14() --Dragify
	local script = Instances.LocalScript_14

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.50
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
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
	
	dragify(script.Parent)
end
coroutine.wrap(Code_LocalScript_14)()


function Code_LocalScript_15() --LocalScript
	local script = Instances.LocalScript_15

	script.Parent.MouseButton1Click:Connect(function()
		for i=1,tonumber(script.Parent.Parent.Amount.Text) or 1 do
			char=game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character=nil
			game.Players.LocalPlayer.Character=char
			char.Animate:Destroy()
			char.HumanoidRootPart.CFrame=CFrame.new(0,9999,0)
			wait(.1)
			char.HumanoidRootPart.Anchored=true
			for i,v in pairs(char:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent=game.Players.LocalPlayer.Backpack
				end
			end
			wait(game.Players.RespawnTime-0.3)
			local t = {}
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				v.Parent=char
				v.Parent=workspace
				t[i]=v
			end
			char.Humanoid:Destroy()
			game.Players.LocalPlayer.Character=nil
			game.Players.LocalPlayer.CharacterAdded:Wait()
			char=game.Players.LocalPlayer.Character
			char:WaitForChild("Humanoid")
			wait(.1)
			for i,v in pairs(t) do
				char.Humanoid:EquipTool(v)
			end
			wait(.3)
		end	
	end)
end
coroutine.wrap(Code_LocalScript_15)()


function Code_LocalScript_16() --LocalScript
	local script = Instances.LocalScript_16

	_G.grabtools=false
	game:service'RunService'.Heartbeat:Connect(function()
		local h=game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		if _G.grabtools==true and h then
			for i,v in pairs(workspace:GetChildren()) do
				coroutine.wrap(function()
					if v:IsA("Tool") then
						h:EquipTool(v)
					end	
				end)()
			end
		end
	end)
	spawn(function()
		while wait() do
			if _G.grabtools==true then
				script.Parent.TextColor3=Color3.fromRGB(53, 53, 53)
				script.Parent.BackgroundColor3=Color3.fromRGB(255, 255, 127)
			else
				script.Parent.TextColor3=Color3.fromRGB(255,255,255)
				script.Parent.BackgroundColor3=Color3.fromRGB(20, 20, 20)
			end
		end 	
	end)
	script.Parent.MouseButton1Click:Connect(function()
		_G.grabtools=not _G.grabtools
	end)
end
coroutine.wrap(Code_LocalScript_16)()


function Code_LocalScript_17() --LocalScript
	local script = Instances.LocalScript_17

	script.Parent.MouseButton1Click:Connect(function()
		print(pcall(function()
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") and v:FindFirstChildOfClass("Part"):FindFirstChildOfClass("Sound") then
					coroutine.wrap(function()
						v:FindFirstChildOfClass("Part"):FindFirstChildOfClass("Sound").Playing=false
						wait()
						v:FindFirstChildOfClass("Part"):FindFirstChildOfClass("Sound").TimePosition=0
						v:FindFirstChildOfClass("Part"):FindFirstChildOfClass("Sound").Playing=true
					end)()
				end
			end
		end))
	end)
end
coroutine.wrap(Code_LocalScript_17)()
