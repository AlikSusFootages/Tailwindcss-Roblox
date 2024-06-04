# Tailwindcss-Roblox

## How to use Colors.lua:
### 1. Connect Colors.lua (loadstring or request)
```lua
local ColorsLoadstring = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlikSusFootages/Tailwindcss-Roblox/main/colors.lua"))()
-- or
local ColorsRequest = request({
    Url = "https://raw.githubusercontent.com/AlikSusFootages/Tailwindcss-Roblox/main/colors.lua",
    Method = "GET"
}).body
```
### 2. Using
```lua
local ColorsLoadstring = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlikSusFootages/Tailwindcss-Roblox/main/colors.lua"))()

local GreenRGB = ColorsLoadstring.green["500"].RGB -- RGB
myFrame.BackgroundColor3 = GreenRGB

local GreenHEX = ColorsLoadstring.green["500"].hex
print(Green)
```

Credits: TailwindCss
