# Tailwindcss-Roblox

## How to use Colors.lua:
### 1. Connect Colors.lua (loadstring or request)
```lua
local ColorsLoadstring = loadstring(game:HttpGet(LINK_TO_colors.lua))()
-- or
local ColorsRequest = request({
    Url = LINK_TO_colors.lua,
    Method = "GET"
}).body
```
### 2. Using
```lua
local ColorsLoadstring = loadstring(game:HttpGet(LINK_TO_colors.lua))()

local Green = ColorsLoadstring.green["500"]
print(Green)
```

Credits: TailwindCss
