local ui_lib = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local window = ui_lib:CreateWindow({
	Name = "RoFruits",
	Icon = 0,
	LoadingTitle = "RoFruits",
	LoadingSubtitle = "by Celestial - Lanna",
	Theme = "Default",
	
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
			Content = "Le X-RAY a était activer!",
			Duration = 6.5,
			Image = "rewind",
		})
	end,
})
