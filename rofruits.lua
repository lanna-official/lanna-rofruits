local players = game:GetService("Players")
local run_service = game:GetService("RunService")

local ui = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local obv2_objects = {}

local window = ui:CreateWindow({
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
		
		local billboard = Instance.new("BillboardGui")
		
		billboard.Adornee = character:FindFirstChild("Head")
		billboard.Size = UDim2.new(0, 200, 0, 50)
		billboard.StudsOffset = Vector3.new(0, 2, 0)
		billboard.AlwaysOnTop = true
		
		local text_label = Instance.new("TextLabel")
		
		text_label.Size = UDim2.new(1, 0, 1, 0)
		text_label.BackgroundTransparency = 1
		text_label.Text = player.Name
		text_label.TextColor3 = Color3.new(1, 1, 1)
		text_label.TextStrokeTransparency = 0.5
		text_label.TextScaled = true
		text_label.Parent = billboard
		
		billboard.Parent = character

		obv2_objects[player] = {highlight = highlight, billboard = billboard}
	end
end

local obv2_delete = function(player)
	if (obv2_objects[player]) then
		if (obv2_objects[player].highlight) then
			obv2_objects[player].highlight:Destroy()
		end
		
		if (obv2_objects[player].billboard) then
			obv2_objects[player].billboard:Destroy()
		end
		
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
			Content = value and "L'observation v2 a été activée" or "L'observation v2 a été désactivée",
			Duration = 5,
			Image = value and "check" or "cross"
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
