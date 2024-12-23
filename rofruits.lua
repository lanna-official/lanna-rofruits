local cdark_ui = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local main_window = cdark_ui:CreateWindow({
	Name = "RoFruits",
	Icon = 0,
	LoadingTitle = "RoFruits v1",
	LoadingSubtitle = "By Celestial - Lanna",
	Theme = "AmberGlow",
	
	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false,
	
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil,
		FileName = "RoFruits"
	},
	
	Discord = {
		Enabled = false,
		Invite = "",
		RememberJoins = true
	},
	
	KeySystem = true,
	KeySettings = {
		Title = "RoFruits - Key",
		Subtitle = "Key System",
		Note = "tips: la clef est test :)",
		FileName = "CDark_Key",
		SaveKey = false,
		GrabKeyFromSite = false,
		Key = {"test"}
	}
})

local test_tab = main_window:CreateTab("Onglet TEST")
local test_section = test_tab:CreateSection("Section TEST")
local test_divider = test_tab:CreateDivider(true)

local test_button = test_tab:CreateButton({
	Name = "test",
	Callback = function()
		
	end,
})

local test_toggle = test_tab:CreateToggle({
	Name = "test",
	CurrentValue = false,
	Flag = "test_flag",
	Callback = function(value)
		
	end,
})

local test_color = test_tab:CreateColorPicker({
	Name = "Selectioneur de couleur",
	Color = Color3.fromRGB(255, 255, 255),
	Flag = "color_flag",
	Callback = function(value)
		
	end,
})

local test_slider = test_tab:CreateSlider({
	Name = "test",
	Range = {0, 5000},
	Increment = 100,
	Suffix = "mètres",
	CurrentValue = 0,
	Flag = "slider_flag",
	Callback = function(value)
		
	end,
})

local test_input = test_tab:CreateInput({
	Name = "test",
	CurrentValue = "test",
	PlaceholdeText = "test",
	RemoveTextAfterFocusLost = false,
	Flag = "test_input",
	Callback = function(text)
		
	end,
})

local test_dropdown = test_tab:CreateDropdown({
	Name = "test",
	Options = {"Light", "Gas", "Smoke"},
	CurrentOption = {"Light"},
	MultipleOptions = false,
	Flag = "test_dropdown",
	Callback = function(options)
		
	end,
})

local theme_dropdown = test_tab:CreateDropdown({
	Name = "themes",
	Options = {"Default ", "AmberGlow", "Amethyst", "Bloom", "DarkBlue", "Green", "Light", "Ocean", "Serenity"},
	CurrentOption = {"Light"},
	MultipleOptions = false,
	Flag = "test_dropdown",
	Callback = function(options)
		for i, v in pairs(options) do
			option = v
		end

		print(options)
		print(option)
		
		main_window.ModifyTheme(options[option])
	end,
})

cdark_ui:LoadConfiguration()
