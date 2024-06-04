local Color = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlikSusFootages/Tailwindcss-Roblox/main/colors.lua"))()

local function Create(Name, Properties, Children)
	local Object = Instance.new(Name)
	for i, v in next, Properties or {} do
		Object[i] = v
	end
	for i, v in next, Children or {} do
		v.Parent = Object
	end
	return Object
end

local ScreenGui = Create("ScreenGui", {
    Name = "TailwindCSS Colors",
    ResetOnSpawn = false,
    ZIndexBehavior = "Sibling",
    Parent = game.Players.LocalPlayer.PlayerGui
}, {
    Create("TextLabel", {
        Size = UDim2.new(0, 400, 0, 300),
        Position = UDim2.fromScale(0.5,0.5),
        AnchorPoint = Vector2.new(0.5,0.5),
        BackgroundColor3 = Color.gray["200"].RGB,
        BorderSizePixel = 0,
        Text = "TailwindCSS Colors",
        TextSize = 26,
        TextColor3 = Color.black.RGB,
        Font = "GothamMedium",
        TextXAlignment = "Left",
        TextYAlignment = "Top",
    }, {
        Create("UICorner", {
            CornerRadius = UDim.new(0,10)
        }),
        Create("UIPadding", {
            PaddingTop = UDim.new(0,14),
            PaddingLeft = UDim.new(0,16),
            PaddingRight = UDim.new(0,16),
            PaddingBottom = UDim.new(0,14),
        }),
        Create("Frame", {
            Size = UDim2.new(1,0,1,-40),
            Position = UDim2.fromScale(0,1),
            AnchorPoint = Vector2.new(0,1),
            BackgroundTransparency = 1,
        }, {
            Create("UIListLayout", {
                FillDirection = "Vertical",
                Padding = UDim.new(0,8)
            })
        })
    })
})

local Content = ScreenGui.TextLabel.Frame

for ColorName, ColorData in pairs(Color) do
    Create("TextLabel", {
        Parent = Content,
        Size = UDim2.new(1,0,0,30), 
        BackgroundTransparency = 1,
        Text = ColorName,
        TextSize = 18,
        TextColor3 = Color.neutral["900"].RGB,
        Font = "Gotham",
        TextXAlignment = "Left"
    })
end