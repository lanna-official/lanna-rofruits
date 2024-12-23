local ui_lib = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local window = ui_lib:CreateWindow({
	Name = "RoFruits",
	Icon = 0,
	LoadingTitle = "RoFruits",
	LoadingSubtitle = "by Celestial - Lanna",
	Theme = "AmberGlow",
	
	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false,
	
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "RoFruits"
	},
	
	Discord = {
		Enabled = false,
		Invite = "",
		RememberJoins = true
	},
	
	KeySystem = false,
	KeySettings = {
		Title = "RoFruits",
		Subtitle = "Key System",
		Note = "Le script est en beta, tout bugs peut donc apparaitre",
		FileName = "RoFruits_Key",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = {"test_key"}
	}
})

local fruits_tab = window:CreateTab("Fruits")
local fruits_sec = fruits_tab:CreateSection("Test")

local fruits_but = fruits_tab:CreateButton({
	Name = "X-RAY",
	Callback = function()
		ui_lib:Notify({
			Title = "X-RAY Activé",
			Content = "Le X-RAY a était activé!",
			Duration = 6.5,
			Image = "rewind",
		})
	end,
})

local fruits_tog = fruits_tab:CreateToggle({
	Name = "Auto Stock",
	Color = Color3.fromRGB(255, 255, 0),
	Flag = "AutoStock_Flag",
	Callback = function(value)
		
	end,
})

local fruits_sli = fruits_tab:CreateSlider({
	Name = "Distance Fruits",
	Range = {0, 5000},
	Increment = 100,
	Suffix = "Distance des fruits",
	Flag = "FruitsDistance_Flag",
	Calllback = function(value)
		
	end,
})

local fruits_col = fruits_tab:CreateColorPicker({
	Name = "Fruits Colors",
	Color = Color3.fromRGB(255, 255, 0),
	Flag = "FruitsColors_Flag",
	Callback = function(value)
		
	end,
})

local fruits_int = fruits_tab:CreateInput({
	Name = "Nom de fruit",
	CurrentValue = "",
	Placeholdertext = "Nom de fruits",
	RemoveTextAfterFocusLost = false,
	Flag = "FruitsName_Flag",
	Callback = function(text)
		
	end,
})

local fruits_dro = fruits_tab:CreateDropdown({
	Name = "Fruits",
	Options = {"Light", "Gas", "Smoke"},
	CurrentOption = {"Light"},
	MultipleOptions = false,
	Flag = "FruitsDropdown_Flag",
	Callback = function(options)
		
	end,
})
