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
      FileName = "Cheat"
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Monkey Mans Cheat Hub",
      Subtitle = "Ask Monkey Man For Key",
      Note = "If you dont get a key than your gay!",
      FileName = "Key", 
      SaveKey = true,
      GrabKeyFromSite = true,
      Key = {"https://pastebin.com/raw/yTxKtN5V"} 
   }

})

Rayfield:Notify({
   Title = "Thank you!",
   Content = "Thank you for using my cheat enjoy!",
   Duration = 5,
   Image = nil,
})

local HomeTab = Window:CreateTab("Home", nil)
local HomeSection = HomeTab:CreateSection("Home")

local ButtonExample = HomeTab:CreateButton({
   Name = "Button Example!",
   Callback = function()
   end,
})

local ToggleExample = HomeTab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local SliderExample = HomeTab:CreateSlider({
   Name = "Slider Example",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number which correlates to the value the slider is currently at
   end,
})

local PlayerTab = Window:CreateTab("Player", nil)
local PlayerSection = PlayerTab:CreateSection("Player")

local WalkSpeedSlider = PlayerTab:CreateSlider({
   Name = "Walk Speed",
   Range = {1, 300},
   Increment = 1,
   Suffix = "Walk Speed",
   CurrentValue = 16,
   Flag = "Walk Speed Slider",
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Input = PlayerTab:CreateInput({
   Name = "Jump Power",
   CurrentValue = "",
   PlaceholderText = "1 - 300",
   RemoveTextAfterFocusLost = false,
   Flag = "Jump Power",
   Callback = function(Text)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = (Text) --Walk Speed Didnt Work So Jump Power
   end,
})
