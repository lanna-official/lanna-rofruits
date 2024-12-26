local players = game:GetService("Players")
local run_service = game:GetService("RunService")
local workspace = game:GetService("Workspace")

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
        Enabled = false,
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

-- Raycasting function to check if the ESP is visible through walls
local function isVisible(player)
    local character = player.Character
    local camera = workspace.CurrentCamera
    local head = character:FindFirstChild("Head")

    if head then
        local ray = Ray.new(camera.CFrame.p, head.Position - camera.CFrame.p)
        local hitPart, hitPosition = workspace:FindPartOnRay(ray, character)

        -- If the ray hits something that isn't the player, return false
        if hitPart and hitPart.Parent ~= character then
            return false
        end
    end
    return true
end

-- Create ESP with health bar
local obv2_create = function(player)
    if player ~= players.LocalPlayer and player.Character then
        local character = player.Character

        if not character:FindFirstChild("Humanoid") then
            player.CharacterAdded:Wait()
            character = player.Character
        end

        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            -- Create Highlight for ESP
            local highlight = Instance.new("Highlight")
            highlight.Adornee = character
            highlight.FillTransparency = 0.5
            highlight.FillColor = Color3.new(1, 0.4, 0.7)
            highlight.OutlineTransparency = 0
            highlight.OutlineColor = Color3.new(1, 1, 1)
            highlight.Parent = character

            -- Create BillboardGui for Name and Health Bar
            local billboard = Instance.new("BillboardGui")
            local head = character:FindFirstChild("Head")
            if head then
                billboard.Adornee = head
            else
                warn("No head found for player: " .. player.Name)
                return
            end
            billboard.Size = UDim2.new(0, 200, 0, 100)
            billboard.StudsOffset = Vector3.new(0, 3, 0)
            billboard.AlwaysOnTop = true

            -- Name Label
            local name_label = Instance.new("TextLabel")
            name_label.Size = UDim2.new(1, 0, 0.5, 0)
            name_label.BackgroundTransparency = 0
            name_label.Text = player.Name
            name_label.TextColor3 = Color3.new(1, 1, 1)
            name_label.TextStrokeTransparency = 0.5
            name_label.TextScaled = true
            name_label.Parent = billboard

            -- Health Bar Background
            local health_bar_bg = Instance.new("Frame")
            health_bar_bg.Size = UDim2.new(1, 0, 0.2, 0)
            health_bar_bg.Position = UDim2.new(0, 0, 0.6, 0)
            health_bar_bg.BackgroundColor3 = Color3.new(0, 0, 0)
            health_bar_bg.BorderSizePixel = 0
            health_bar_bg.Parent = billboard

            -- Health Bar
            local health_bar = Instance.new("Frame")
            health_bar.Size = UDim2.new(1, 0, 1, 0)
            health_bar.Position = UDim2.new(0, 0, 0, 0)
            health_bar.BorderSizePixel = 0
            health_bar.Parent = health_bar_bg

            -- Update health bar based on health
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

            -- Update health continuously
            update_health()

            -- Reconnect the health update function when health changes
            humanoid.HealthChanged:Connect(update_health)
            run_service.Heartbeat:Connect(update_health)

            -- Store ESP objects
            obv2_objects[player] = {highlight = highlight, billboard = billboard, health_bar = health_bar}
        end
    end
end

-- Remove ESP and health bar when player leaves or dies
local obv2_delete = function(player)
    if obv2_objects[player] then
        if obv2_objects[player].highlight then
            obv2_objects[player].highlight:Destroy()
        end
        if obv2_objects[player].billboard then
            obv2_objects[player].billboard:Destroy()
        end
        obv2_objects[player] = nil
    end
end

-- Main Toggle for ESP
local main_section_obv2 = main_tab:CreateToggle({
    Name = "Observation v2",
    CurrentValue = false,
    Flag = "main_obv2_toggle",
    
    Callback = function(value)
        ui:Notify({
            Title = "Observation v2",
            Content = value and "L'observation v2 a été activée" or "L'observation v2 a été désactivée",
            Duration = 5,
            Image = value and "check" or "cross"
        })
        
        if value then
            -- Create ESP for all players
            for _, player in pairs(players:GetPlayers()) do
                obv2_create(player)
            end
            
            -- Reconnect ESP for new players
            players.PlayerAdded:Connect(obv2_create)
            players.PlayerRemoving:Connect(function(player)
                obv2_delete(player)
            end)
        else
            -- Delete ESP when disabled
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

-- Continuously update ESP visibility based on raycast
run_service.RenderStepped:Connect(function()
    for _, player in pairs(players:GetPlayers()) do
        if obv2_objects[player] then
            local visible = isVisible(player)
            local billboard = obv2_objects[player].billboard
            if visible then
                billboard.Enabled = true
            else
                billboard.Enabled = false
            end
        end
    end
})

ui:LoadConfiguration()
