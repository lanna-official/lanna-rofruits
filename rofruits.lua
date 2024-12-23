local G2L = {};

-- StarterGui.rofruits_v2
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Enabled"] = true;
G2L["1"]["Name"] = [[rofruits_v2]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.rofruits_v2.topbar_frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 300, 0, 35);
G2L["2"]["Position"] = UDim2.new(0.4997, 0, 0.38379, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[topbar_frame]];


-- StarterGui.rofruits_v2.topbar_frame.title_text
G2L["3"] = Instance.new("TextLabel", G2L["2"]);
G2L["3"]["TextWrapped"] = true;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["TextSize"] = 14;
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["3"]["BackgroundTransparency"] = 1;
G2L["3"]["RichText"] = true;
G2L["3"]["Size"] = UDim2.new(0, 300, 0, 35);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[RoFruits]];
G2L["3"]["Name"] = [[title_text]];


-- StarterGui.rofruits_v2.topbar_frame.title_text.title_script
G2L["4"] = Instance.new("LocalScript", G2L["3"]);
G2L["4"]["Name"] = [[title_script]];


-- StarterGui.rofruits_v2.topbar_frame.close_button
G2L["5"] = Instance.new("TextButton", G2L["2"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 20;
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Name"] = [[close_button]];
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[x]];
G2L["5"]["Position"] = UDim2.new(0.88333, 0, 0, 0);


-- StarterGui.rofruits_v2.topbar_frame.bar_frame
G2L["6"] = Instance.new("Frame", G2L["2"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6"]["Size"] = UDim2.new(0, 300, 0, 1);
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0.95543, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[bar_frame]];


-- StarterGui.rofruits_v2.loading_frame
G2L["7"] = Instance.new("Frame", G2L["1"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7"]["Size"] = UDim2.new(0, 300, 0, 150);
G2L["7"]["Position"] = UDim2.new(0.4997, 0, 0.5, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Name"] = [[loading_frame]];


-- StarterGui.rofruits_v2.loading_frame.loadbg_frame
G2L["8"] = Instance.new("Frame", G2L["7"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Size"] = UDim2.new(0, 286, 0, 15);
G2L["8"]["Position"] = UDim2.new(0.02333, 0, 0.86, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Name"] = [[loadbg_frame]];
G2L["8"]["BackgroundTransparency"] = 1;


-- StarterGui.rofruits_v2.loading_frame.loadbg_frame.UIStroke
G2L["9"] = Instance.new("UIStroke", G2L["8"]);
G2L["9"]["Color"] = Color3.fromRGB(255, 0, 0);


-- StarterGui.rofruits_v2.loading_frame.loadbg_frame.load_text
G2L["a"] = Instance.new("TextLabel", G2L["8"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["TextSize"] = 14;
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Size"] = UDim2.new(0, 286, 0, 15);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Chargement...]];
G2L["a"]["Name"] = [[load_text]];


-- StarterGui.rofruits_v2.loading_frame.loadfg_frame
G2L["b"] = Instance.new("Frame", G2L["7"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["b"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["b"]["Position"] = UDim2.new(0.02333, 0, 0.86, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[loadfg_frame]];
G2L["b"]["BackgroundTransparency"] = 0.5;


-- StarterGui.rofruits_v2.loading_frame.loadfg_frame.loadfg_script
G2L["c"] = Instance.new("LocalScript", G2L["b"]);
G2L["c"]["Name"] = [[loadfg_script]];


-- StarterGui.rofruits_v2.main_frame
G2L["d"] = Instance.new("Frame", G2L["1"]);
G2L["d"]["Visible"] = false;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["Size"] = UDim2.new(0, 300, 0, 150);
G2L["d"]["Position"] = UDim2.new(0.4997, 0, 0.5, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[main_frame]];


-- StarterGui.rofruits_v2.main_frame.menu_frame
G2L["e"] = Instance.new("Frame", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["e"]["Size"] = UDim2.new(0, 40, 0, 134);
G2L["e"]["Position"] = UDim2.new(0.02, 0, 0.06, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[menu_frame]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame
G2L["f"] = Instance.new("Frame", G2L["e"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["f"]["Size"] = UDim2.new(0, 239, 0, 134);
G2L["f"]["Position"] = UDim2.new(1.19833, 0, 0, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[fruits_frame]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.fruitlog_frame
G2L["10"] = Instance.new("Frame", G2L["f"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["10"]["Size"] = UDim2.new(0, 226, 0, 26);
G2L["10"]["Position"] = UDim2.new(0.02616, 0, 0.045, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[fruitlog_frame]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.fruitlog_frame.comingsoon_text
G2L["11"] = Instance.new("TextLabel", G2L["10"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextSize"] = 14;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 0);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(0, 226, 0, 26);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[ARRIVE BIENTOT!]];
G2L["11"]["Name"] = [[comingsoon_text]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.xray_content
G2L["12"] = Instance.new("Frame", G2L["f"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["12"]["Size"] = UDim2.new(0, 155, 0, 25);
G2L["12"]["Position"] = UDim2.new(0.32323, 0, 0.29127, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[xray_content]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.xray_content.xray_text
G2L["13"] = Instance.new("TextLabel", G2L["12"]);
G2L["13"]["TextWrapped"] = true;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextScaled"] = true;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["TextSize"] = 15;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Size"] = UDim2.new(0, 155, 0, 25);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[X-RAY: Permet de voir les fruits de toute la map!]];
G2L["13"]["Name"] = [[xray_text]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.xray_button
G2L["14"] = Instance.new("TextButton", G2L["f"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["TextScaled"] = true;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["Size"] = UDim2.new(0, 65, 0, 25);
G2L["14"]["Name"] = [[xray_button]];
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[X-RAY]];
G2L["14"]["Position"] = UDim2.new(0.02616, 0, 0.29127, 0);


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.test_content
G2L["15"] = Instance.new("Frame", G2L["f"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["15"]["Size"] = UDim2.new(0, 155, 0, 25);
G2L["15"]["Position"] = UDim2.new(0.32323, 0, 0.52261, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[test_content]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.test_content.test_text
G2L["16"] = Instance.new("TextLabel", G2L["15"]);
G2L["16"]["TextWrapped"] = true;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["TextScaled"] = true;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["TextSize"] = 15;
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Size"] = UDim2.new(0, 155, 0, 25);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[TEST: Test test test test test test test test test test test test]];
G2L["16"]["Name"] = [[test_text]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.test_button
G2L["17"] = Instance.new("TextButton", G2L["f"]);
G2L["17"]["TextWrapped"] = true;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["TextSize"] = 14;
G2L["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["TextScaled"] = true;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["Size"] = UDim2.new(0, 65, 0, 25);
G2L["17"]["Name"] = [[test_button]];
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Text"] = [[TEST]];
G2L["17"]["Position"] = UDim2.new(0.02616, 0, 0.52261, 0);


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.test_button
G2L["18"] = Instance.new("TextButton", G2L["f"]);
G2L["18"]["TextWrapped"] = true;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 14;
G2L["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["TextScaled"] = true;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["Size"] = UDim2.new(0, 65, 0, 25);
G2L["18"]["Name"] = [[test_button]];
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[TEST]];
G2L["18"]["Position"] = UDim2.new(0.02616, 0, 0.75396, 0);


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.test_content
G2L["19"] = Instance.new("Frame", G2L["f"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["19"]["Size"] = UDim2.new(0, 155, 0, 25);
G2L["19"]["Position"] = UDim2.new(0.32323, 0, 0.75396, 0);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Name"] = [[test_content]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_frame.test_content.test_text
G2L["1a"] = Instance.new("TextLabel", G2L["19"]);
G2L["1a"]["TextWrapped"] = true;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextScaled"] = true;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["TextSize"] = 15;
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Size"] = UDim2.new(0, 155, 0, 25);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[TEST: Test test test test test test test test test test test test]];
G2L["1a"]["Name"] = [[test_text]];


-- StarterGui.rofruits_v2.main_frame.menu_frame.fruits_button
G2L["1b"] = Instance.new("ImageButton", G2L["e"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["ImageColor3"] = Color3.fromRGB(255, 0, 0);
G2L["1b"]["Image"] = [[http://www.roblox.com/asset/?id=13492316250]];
G2L["1b"]["Size"] = UDim2.new(0, 27, 0, 27);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Name"] = [[fruits_button]];
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Position"] = UDim2.new(0.15, 0, 0.045, 0);


-- StarterGui.rofruits_v2.topbar_frame.title_text.title_script
local function C_4()
	local script = G2L["4"];
	local title_text = script.Parent

	title_text.Text = "<font color='rgb(255,0,0)'>Ro</font><font color='rgb(255,255,255)'>Fruits</font>"
end;
task.spawn(C_4);
-- StarterGui.rofruits_v2.loading_frame.loadfg_frame.loadfg_script
local function C_c()
	local script = G2L["c"];
	local tween_service = game:GetService("TweenService")

	local loadfg_frame = script.Parent
	local loading_frame = loadfg_frame.Parent
	local mainf_rame = loading_frame.Parent.main_frame
	local full = 286
	local height = 15
	local current = 0

	while (current < full) do
		local increment
		local pause
		local is_fast = math.random() > 0.7

		if (is_fast) then
			increment = math.random(5, 10) / 100 * full
		else
			increment = math.random(1, 3) / 100 * full
		end

		local target = math.min(current + increment, full)
		local tween_info = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local tween_animation = tween_service:Create(loadfg_frame, tween_info, {Size=UDim2.new(0, target, 0, height)})

		tween_animation:Play()
		current = target

		if (is_fast) then
			pause = math.random(1, 3) * 0.1
		else
			pause = math.random(2, 6) * 0.1
		end

		task.wait(pause)
	end

	loading_frame.Visible = false
	mainf_rame.Visible = true
end;
task.spawn(C_c);

return G2L["1"], require;
