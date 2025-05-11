local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
   Name = "Cheat Window",
   Icon = 0, 
   LoadingTitle = "Cheat",
   LoadingSubtitle = "by MonkeyMan",
   Theme = "Bloom",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Skibidi"
   },
})

local HomeTab = Window:CreateTab("Home", nil)
local HomeSection = Tab:CreateSection("Home")
