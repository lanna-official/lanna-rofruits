getgenv().SecureMode = true

ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua"))()

window = ui:CreateWindow({
	Name = "CDark",
	LoadingTitle = "CDark Hub",
	LoadingSubtitle = "by Celestial",
	
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "cdark",
		FileName = "cdark.save"
	},
	
	Discord = {
		Enabled = true,
		Invite = "",
		RememberJoins = false
	},
	
	KeySystem = true,
	KeySettings = {
		Title = "CDark",
		Subtitle = "Key System",
		Note = "...",
		FileName = "cdark.key",
		SaveKey = false,
		GrabKeyFromSite = false,
		
		Actions = {
			[1] = {
				Text = "Clique ici pour copier la clef <--",

				OnPress = function()
					window:Prompt({
						Title = "CDark",
						Subtitle = "Key System",
						Content = "La clef a était copier avec succèss!",
						
						Actions = {
							Accept = {
								Name = "D'accord!",
								Callback = function()
									-- ...
								end,
							}
						}
					})
				end,
			}
		},
		
		Key = "admin"
	}
})

local main_tab = window:CreateTab("Main")
local main_section = main_tab:CreateSection("Main")

local main_section_obv2 = main_tab:CreateToggle({
	Name = "Observation v2",
	CurrentValue = false,
	Flag = "main_obv2_toggle", -- tab/section _ element
	
	Callback = function(value)
		ui:Notify({
			Title = "Observation v2",
			Content = "L'observation v2 a était activé",
			Duration = 5,
			Image = 0,
			
			Actions = {
				Ignore = {
					Name = "Okay!",
					
					Callback = function()
						-- ...
					end,
				}
			}
		})
	end,
})

ui:LoadConfiguration()
