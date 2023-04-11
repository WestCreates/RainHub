local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Rain Hub | Universal",
    LoadingTitle = "Rain Hub Universal",
    LoadingSubtitle = "by West",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Rain Hub"
    },
    Discord = {
       Enabled = true,
       Invite = "https://discord.gg/WUwh4Rxm55", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Rain Hub Key",
       Subtitle = "Key System",
       Note = "Join the discord https://discord.gg/WUwh4Rxm55",
       FileName = "KeySettings",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "RAIN-HUB-FREE"
    }
 })
 Rayfield:Notify({
    Title = "RainHub",
    Content = "Join the discord!",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Okay!",
          Callback = function()
          print("The user tapped Okay!")
       end
    },
 },
 })



 local Window = Window:CreateTab("Main", 4483362458) -- Title, Image


---HAT SCRIPTS

 local Section = Window:CreateSection("Hat Scripts")


 local Button = Window:CreateButton({
    Name = "FE Laser Arm Script (Must Have Bacon Hair and 9 other hats)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/rouxhaver/scripts-2/main/FE%20Laser%20Arm.Lua'))()
    end,
 })


 local Button = Window:CreateButton({
   Name = "Netless Bypass (Click before using any hat script)",
   Callback = function()
      loadstring(game:HttpGet(('https://pastebin.com/raw/Cu7bKQWN'),true))()
   end,
})


local Button = Window:CreateButton({
   Name = "FE Controllable PP",
   Callback = function()
      Rayfield:Notify({
         Title = "RainHub",
         Content = "Required hats at https://pastebin.com/raw/vV3gTtaL",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })
      loadstring(game:HttpGet("https://raw.githubusercontent.com/minecrafttotem/yzhs./main/Fe%20pp%20script%20very%20fun"))()
   end,
})


local Button = Window:CreateButton({
   Name = "FE Hat Oribt (.mode, .offset, .speed)",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/bQaCFdBt"))()
   end,
})

local Button = Window:CreateButton({
    Name = "Physics PP (Requires all 10 international fedoras!)",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/74581bf579eea6313bc234d2808a14bc/raw/8a38ca0f328c91b6f358ad9df2413fabed213b2a/ppscriptv2", true))()
    end,
 })

 local Button = Window:CreateButton({
    Name = "Free gamepass UI (only works on some games)",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/53yY1S39'))()
    end,
 })


---USER SCRIPTS
local Section = Window:CreateSection("User Scripts")

local Button = Window:CreateButton({
    Name = "FE Parkour V4",
    Callback = function()
        loadstring(game:HttpGet(('https://pastefy.ga/Ucu1UkxZ/raw'),true))()
    end,
 })



local Button = Window:CreateButton({
    Name = "Force Reset",
    Callback = function()
        game.Players.LocalPlayer.Character:WaitForChild("Head"):Destroy()
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"):Destroy()
    end,
 })

 local Button = Window:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
 })
