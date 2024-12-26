local players = game:GetService("Players")
local run_service = game:GetService("RunService")

local ui = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local obv2_objects = {}

local window = ui:CreateWindow({
    Name = "CDark",
    Icon = 0,
    LoadingTitle = "CDark Hub",
    LoadingSubtitles = "by Celestial",
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
    local success, err = pcall(function()
        if player ~= players.LocalPlayer and player.Character then
            local character = player.Character

            if not character:FindFirstChild("Humanoid") then
                player.CharacterAdded:Wait()
                character = player.Character
            end

            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
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
                billboard.Size = UDim2.new(0, 200, 0, 100)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true

                local name_label = Instance.new("TextLabel")
                name_label.Size = UDim2.new(1, 0, 0.5, 0)
                name_label.BackgroundTransparency = 1
                name_label.Text = player.Name
                name_label.TextColor3 = Color3.new(1, 1, 1)
                name_label.TextStrokeTransparency = 0.5
                name_label.TextScaled = true
                name_label.Parent = billboard

                local health_bar_bg = Instance.new("Frame")
                health_bar_bg.Size = UDim2.new(1, 0, 0.2, 0)
                health_bar_bg.Position = UDim2.new(0, 0, 0.6, 0)
                health_bar_bg.BackgroundColor3 = Color3.new(0, 0, 0)
                health_bar_bg.BorderSizePixel = 0
                health_bar_bg.Parent = billboard

                local health_bar = Instance.new("Frame")
                health_bar.Size = UDim2.new(1, 0, 1, 0)
                health_bar.Position = UDim2.new(0, 0, 0, 0)
                health_bar.BorderSizePixel = 0
                health_bar.Parent = health_bar_bg

                local update_health = function()
                    if character and humanoid then
                        local health_percent = humanoid.Health / humanoid.MaxHealth
                        health_bar.Size = UDim2.new(health_percent, 0, 1, 0)

                        if health_percent > 0.75 then
                            health_bar.BackgroundColor3 = Color3.new(0, 1, 0)
                        elseif health_percent > 0.5 then
                            health_bar.BackgroundColor3 = Color3.new(1, 1, 0)
                        elseif health_percent > 0.25 then
                            health_bar.BackgroundColor3 = Color3.new(1, 0.5, 0)
                        else
                            health_bar.BackgroundColor3 = Color3.new(1, 0, 0)
                        end
                    end
                end

                update_health()

                humanoid.HealthChanged:Connect(update_health)
                run_service.Heartbeat:Connect(update_health)
                obv2_objects[player] = {highlight = highlight, billboard = billboard}
            end
        end
    end)
    
    if not success then
        ui:Notify({
            Title = "Erreur",
            Content = "Une erreur est survenue lors de la création de l'observation pour le joueur : " .. err,
            Duration = 5,
            Image = "cross"
        })
    end
end

local obv2_delete = function(player)
    local success, err = pcall(function()
        if obv2_objects[player] then
            if obv2_objects[player].highlight then
                obv2_objects[player].highlight:Destroy()
            end
            if obv2_objects[player].billboard then
                obv2_objects[player].billboard:Destroy()
            end
            obv2_objects[player] = nil
        end
    end)

    if not success then
        ui:Notify({
            Title = "Erreur",
            Content = "Une erreur est survenue lors de la suppression de l'observation pour le joueur : " .. err,
            Duration = 5,
            Image = "cross"
        })
    end
end

local main_section_obv2 = main_tab:CreateToggle({
    name = "Observation v2",
    current_value = false,
    flag = "main_obv2_toggle",

    callback = function(value)
        ui:Notify({
            Title = "Observation v2",
            Content = value and "L'observation v2 a été activée" or "L'observation v2 a été désactivée",
            Duration = 5,
            Image = value and "check" or "cross"
        })

        if value then
            for _, player in pairs(players:GetPlayers()) do
                obv2_create(player)
            end

            players.PlayerAdded:Connect(function(player)
                obv2_create(player)
            end)
            players.PlayerRemoving:Connect(function(player)
                obv2_delete(player)
            end)
        else
            for _, obj in pairs(obv2_objects) do
                if obj.highlight then
                    obj.highlight:Destroy()
                end
                if obj.billboard then
                    obj.billboard:Destroy()
                end
            end

            obv2_objects = {}
        end
    end
})

ui:LoadConfiguration()
