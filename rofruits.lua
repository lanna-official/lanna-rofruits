local players = game:GetService("Players")
local run_service = game:GetService("RunService")

local ui = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local obv2_objects = {}

window = ui:CreateWindow({
	Name = "CDark",
	Icon = 0,
	LoadingTitle = "CDark Hub",
	LoadingSubtitle = "by Celestial",
	Theme = "Amethyst",

	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false,

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
		Key = {"admin"}
	}
})

local main_tab = window:CreateTab("Main", "home")
local main_section = main_tab:CreateSection("Main")

local obv2_create = function(player)
	if (player ~= players.LocalPlayer and player.Character) then
		local character = player.Character
		local highlight = Instance.new("Highlight")

		highlight.Adornee = character
		highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlight.FillTransparency = 0.5
		highlight.FillColor = Color3.new(1, 0.4, 0.7)
		highlight.OutlineTransparency = 0
		highlight.OutlineColor = Color3.new(1, 1, 1)
		highlight.Parent = character

		obv2_objects[player] = highlight
	end
end

local obv2_delete = function(player)
	if (obv2_objects[player]) then
		obv2_objects[player]:Destroy()
		obv2_objects[player] = nil
	end
end

local main_section_obv2 = main_tab:CreateToggle({
	Name = "Observation v2",
	CurrentValue = false,
	Flag = "main_obv2_toggle", -- tab/section _ element

	Callback = function(value)
		ui:Notify({
			Title = "Observation v2",
			Content = "L'observation v2 a était activé",
			Duration = 5,
			Image = "activated"
		})

		if (value) then
			for _, player in pairs(players:GetPlayers()) do
				obv2_create(player)
			end

			players.PlayerAdded:Connect(obv2_create)
			players.PlayerRemoving:Connect(function(player)
				obv2_delete(player)
			end)
		else
			for _, highlight in pairs(obv2_objects) do
				highlight:Destroy()
			end

			obv2_objects = {}
		end
	end,
})

ui:LoadConfiguration()
