local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Rain Hub | Strucid", "Midnight")


--MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
local ESP = Window:NewTab("ESP")
local ESPSection = ESP:NewSection("ESP")


--Sliders

MainSection:NewSlider("Hitbox Extender", "Slide to higher the opponents head hitbox size", 100, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    _G.HeadSize = s
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

--Buttons


ESPSection:NewButton("Box ESP", "Puts boxes around opponents", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/g216nQ7d"))()
end)


ESPSection:NewButton("Highliter ESP", "Shows other players highliting", function()
    local players = game.Players:GetPlayers()

for i,v in pairs(players) do
 local esp = Instance.new("Highlight")
 esp.Name = v.Name
 esp.FillTransparency = 0
 esp.FillColor = Color3.new(1, 0.666667, 0)
 esp.OutlineColor = Color3.new(1, 0.333333, 1)
 esp.OutlineTransparency = 0
 esp.Parent = v.Character
end
end)

MainSection:NewButton("Airwalk (Press E)", "Gives you the ability to walk in the air/fly", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KtLKcbxr"))()
end)
---Toggles

---Dropdowns