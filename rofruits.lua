getgenv().SecureMode = true

local ArrayField = loadstring(game:HttpGet("https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua"))()

local Window = ArrayField:CreateWindow({
	Name = "RoFruits V1",
	LoadingTitle = "CDark Interface",
	LoadingSubtitle = "By Celestial - Lanna",
	
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil,
		FileName = "CDark"
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
		Note = "ERROR: No methods of obtaining the key is provided.",
		FileName = "CDark",
		SaveKey = false,
		GrabKeyFromSite = false,
		Actions = {
			[1] = {
				Text = "Appuyer ici pour copier le lien <--",
				OnPress = function()
					print("key: test")
				end,
			}
		}
	},
	
	Key = {"test"}
})

Window:Prompt({
	Title = "RoFruits",
	Subtitle = "...",
	Content = "...",
	Actions = {
		Accept = {
			Name = "Accepter",
			Callback = function()
				
			end,
		}
	}
})

local Tab = Window:CreateTab("Example Tab", 4483362458)

local Button = Tab:CreateButton({
	Name = "X-RAY",
	Interact = "Click",
	Callback = function()
		ArrayField:Notify({
			Title = "X-RAY Activé",
			Content = "Le X-RAY a était activé!",
			Duration = 6.5,
			Image = 4483362458,
			Actions = {
				Name = "Okay!",
				Callback = function()
					
				end,
			},
		})
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "X-RAY",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function()
		
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Distance des fruits",
	Range = {0, 5000},
	Increment = 100,
	Suffix = "Mètres",
	CurrentValue = 0,
	Flag = "Slider1",
	Callback = function()
		
	end,
})

local Input = Tab:CreateInput({
	Name = "Test",
	PlaceholderText = "Test",
	NumbersOnly = false,
	CharacterLimit = 15,
	OnEnter = false,
	RemoveTextAfterFocusLost = false,
	Callback = function(text)
		
	end,
})

local Dropdown = Tab:CreateDropdown({
	Name = "Fruits",
	Options = {"Light", "Gas", "Smoke"},
	CurrentOption = "Light",
	MultiSelection = false,
	Flag = "Dropdown1",
	Callback = function(option)
		
	end,
})

ArrayField:LoadConfiguration()
