if not game:IsLoaded() then
    game.Loaded:Wait()
end

game:GetService("GuiService"):ClearError()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()

local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

if(game.PlaceId == 13833961666) then -- eternal bob
	local bypass;
		bypass = hookmetamethod(game, "__namecall", function(method, ...) 
			if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
				return
			elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
				return
			elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
				return
			end
			return bypass(method, ...)
    end)
	local MainWindow = OrionLib:MakeWindow({Name = "eternal's hub - SB bob bossfight", HidePremium = true, SaveConfig = true, ConfigFolder = "eternalExploits", IntroEnabled = false})

	local MainTab = MainWindow:MakeTab({
		Name = "Main",
		Icon = "",
		PremiumOnly = false
	})

	local ScripthubTab = MainWindow:MakeTab({
		Name = "Scripthubs",
		Icon = "",
		PremiumOnly = false
	})

	local PlayerTab = MainWindow:MakeTab({
		Name = "Player",
		Icon = "",
		PremiumOnly = false
	})

	local MainSection = MainTab:AddSection({
		Name = "Main"
	})

	local ScriptHub = ScripthubTab:AddSection({
		Name = "Scripthubs"
	})

	local Player = PlayerTab:AddSection({
		Name = "Player"
	})

	function randomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end

	floatName = randomString()

	local tycoon
	MainTab:AddToggle({
		Name = "Tycoon auto click",
		Default = false,
		Callback =	function(tycoonValue)
			if(game.PlaceId == 13833961666) then
				tycoon = tycoonValue

				local tycoonuser

				if(tycoon == true) then
					for _, players in pairs(game:GetService("Players"):GetChildren()) do
						if(players.leaderstats.Glove.Value == "Tycoon") then
							tycoonuser = players.Name
							break
						end
					end

					while true do
						if(tycoon == true) then
							local name = "ClickDetector"
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ClickDetector") and descendant.Name == name then
									fireclickdetector(descendant)
								end
							end
						else
							break
						end
						task.wait(0.1)
					end
				else
					-- do nothing
				end
			else

			end
		end    
	})

	local eternalbob = false
	MainTab:AddBind({
		Name = "Auto slap eternal bob",
		Default = Enum.KeyCode.R,
		Hold = false,
		Callback =	function()
			if(game.PlaceId == 13833961666) then
				if(eternalbob == true) then
					eternalbob = false
				else
					eternalbob = true
					while true do
						if(eternalbob == true) then
							game.Workspace.bobBoss:WaitForChild("DamageEvent"):FireServer()
						else
							break
						end
	
						task.wait(0.001)
					end
				end
			end
		end    
	})

	MainTab:AddBind({
		Name = "Freeze/Unfreeze (if u abuse it might kick u)",
		Default = Enum.KeyCode.Q,
		Hold = false,
		Callback = function()
			if(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored == false) then
				for _, parts in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if(parts:IsA("BasePart")) then
						parts.Anchored = true
					end
				end
			else
				for _, parts in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if(parts:IsA("BasePart")) then
						parts.Anchored = false
					end
				end
			end
		end    
	})

	ScripthubTab:AddButton({
		Name = "Infinite Yield",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end    
	})

	ScripthubTab:AddButton({
		Name = "Dark Dex",
		Callback = function()
			loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
		end    
	})

	PlayerTab:AddSlider({
		Name = "Set WalkSpeed",
		Min = 0,
		Max = 350,
		Default = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed,
		Color = Color3.fromRGB(107, 141, 214),
		Increment = 1,
		ValueName = "WalkSpeed",
		Callback = function(speedValu)
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = speedValu
		end    
	})

	PlayerTab:AddSlider({
		Name = "Set JumpPower",
		Min = 0,
		Max = 2500,
		Default = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower,
		Color = Color3.fromRGB(107, 141, 214),
		Increment = 1,
		ValueName = "JumpPower",
		Callback = function(jumpValu)
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = jumpValu
		end    
	})

elseif(game.PlaceId == 4499855755) then
	local RemoteEvent = ReplicatedStorage.RemoteStorage.RemoteEvent
	local cooldown = 2
	local MainWindow = OrionLib:MakeWindow({Name = "eternal's hub - Nova Hotels", HidePremium = true, SaveConfig = true, ConfigFolder = "eternalExploits", IntroEnabled = false})

	local MainTab = MainWindow:MakeTab({
		Name = "Main",
		Icon = "",
		PremiumOnly = false
	})

	local MainSection = MainTab:AddSection({
		Name = "Main"
	})

	local ScripthubTab = MainWindow:MakeTab({
		Name = "Scripthubs",
		Icon = "",
		PremiumOnly = false
	})

	local PlayerTab = MainWindow:MakeTab({
		Name = "Player",
		Icon = "",
		PremiumOnly = false
	})

	local ScriptHub = ScripthubTab:AddSection({
		Name = "Player"
	})

	local PlayerSection = PlayerTab:AddSection({
		Name = "Player"
	})

	local pointEnabled = false
	local defaultloop = false

	MainTab:AddBind({
		Name = "Point farm",
		Default = Enum.KeyCode.F,
		Hold = false,
		Callback = function()
			if (pointEnabled == false) then
				pointEnabled = true
				while true do
					if(defaultloop == false) then
						defaultloop = true
					end
					if (pointEnabled == true) then
						if(defaultloop == true) then
							for _, player in pairs(Players:GetPlayers()) do
								if(pointEnabled == true) then
									if(defaultloop == true) then
										if (player.Name ~= game:GetService("Players").LocalPlayer.Name and
											(player.leaderstats.Rank.Value == "Guest" or player.leaderstats.Rank.Value == "Hotel Guest")) then
											RemoteEvent:FireServer("CheckIn", player, "Standard Suite")
											OrionLib:MakeNotification({
												Name = "Checking in a player",
												Content = "Checking in " .. player.Name .. " - " .. player.leaderstats.Rank.Value,
												Image = "",
												Time = 5
											})
											task.wait(cooldown)
										end
									else
										break
									end
								else
									break
								end
							end
							task.wait(cooldown)
							for _, player in pairs(Players:GetPlayers()) do
								if(pointEnabled == true) then
									if(defaultloop == true) then
										if (player.Name ~= game:GetService("Players").LocalPlayer.Name and
											(player.leaderstats.Rank.Value == "Guest" or player.leaderstats.Rank.Value == "Hotel Guest")) then
											RemoteEvent:FireServer("CheckOut", player, true)
											OrionLib:MakeNotification({
												Name = "Checking out a player",
												Content = "Checking out " .. player.Name .. " - " .. player.leaderstats.Rank.Value,
												Image = "",
												Time = 5
											})
											task.wait(cooldown)
										end
									else
										break
									end
								else
									break
								end
							end
						else
							break
						end
					else
						break
					end
					task.wait(cooldown)
				end
			else
				pointEnabled = false
			end
		end
	})

	MainTab:AddBind({
		Name = "Freeze/Unfreeze",
		Default = Enum.KeyCode.E,
		Hold = false,
		Callback = function()
			if(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored == false) then
				for _, parts in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if(parts:IsA("BasePart")) then
						parts.Anchored = true
					end
				end
			else
				for _, parts in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if(parts:IsA("BasePart")) then
						parts.Anchored = false
					end
				end
			end
		end    
	})

	ScripthubTab:AddButton({
		Name = "Infinite Yield",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end    
	})

	ScripthubTab:AddButton({
		Name = "Dark Dex",
		Callback = function()
			loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
		end    
	})

	function isNumber(str)
		if tonumber(str) ~= nil or str == 'inf' then
			return true
		end
	end

	local HumanModCons = {}

	PlayerTab:AddSlider({
		Name = "Set WalkSpeed",
		Min = 0,
		Max = 350,
		Default = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed,
		Color = Color3.fromRGB(107, 141, 214),
		Increment = 1,
		ValueName = "WalkSpeed",
		Callback = function(speedValu)
			if isNumber(speedValu) then
				local Char = game:GetService("Players").LocalPlayer.Character or workspace:FindFirstChild(game:GetService("Players").LocalPlayer.Name)
				local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
				local function WalkSpeedChange()
					if Char and Human then
						Human.WalkSpeed = speedValu
					end
				end
				WalkSpeedChange()
				HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
				HumanModCons.wsCA = (HumanModCons.wsCA and HumanModCons.wsCA:Disconnect() and false) or game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(nChar)
					Char, Human = nChar, nChar:WaitForChild("Humanoid")
					WalkSpeedChange()
					HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
				end)
			end
		end    
	})

	PlayerTab:AddSlider({
		Name = "Set JumpPower",
		Min = 0,
		Max = 2500,
		Default = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower,
		Color = Color3.fromRGB(107, 141, 214),
		Increment = 1,
		ValueName = "JumpPower",
		Callback = function(jumpValu)
			if isNumber(jumpValu) then
				local Char = game:GetService("Players").LocalPlayer.Character or workspace:FindFirstChild(game:GetService("Players").LocalPlayer.Name)
				local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
				local function JumpPowerChange()
					if Char and Human then
						if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
							game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = jumpValu
						else
							game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = jumpValu
						end
					end
				end
				JumpPowerChange()
				HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("JumpPower"):Connect(JumpPowerChange)
				HumanModCons.jpCA = (HumanModCons.jpCA and HumanModCons.jpCA:Disconnect() and false) or game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(nChar)
					Char, Human = nChar, nChar:WaitForChild("Humanoid")
					JumpPowerChange()
					HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("JumpPower"):Connect(JumpPowerChange)
				end)
			end
		end    
	})
elseif(game.PlaceId == 6403373529) then
	local bypass;
		bypass = hookmetamethod(game, "__namecall", function(method, ...) 
			if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
				return
			elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
				return
			elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
				return
			end
			return bypass(method, ...)
    end)
	local MainWindow = OrionLib:MakeWindow({Name = "eternal's hub - Slap battles", HidePremium = true, SaveConfig = true, ConfigFolder = "eternalExploits", IntroEnabled = false})

	local MainTab = MainWindow:MakeTab({
		Name = "Home",
		Icon = "",
		PremiumOnly = false
	})

	local ScripthubTab = MainWindow:MakeTab({
		Name = "Scripthubs",
		Icon = "",
		PremiumOnly = false
	})

	local MiscTab = MainWindow:MakeTab({
		Name = "Misc",
		Icon = "",
		PremiumOnly = false
	})

	local BadgesTab = MainWindow:MakeTab({
		Name = "Badges",
		Icon = "",
		PremiumOnly = false
	})

	local PlayerTab = MainWindow:MakeTab({
		Name = "Player",
		Icon = "",
		PremiumOnly = false
	})

	local MainSection = MainTab:AddSection({
		Name = "Main"
	})

	local MiscSection = MiscTab:AddSection({
		Name = "Misc"
	})

	local BadgesTab = BadgesTab:AddSection({
		Name = "Get badges"
	})

	local ScriptHub = ScripthubTab:AddSection({
		Name = "Scripthubs"
	})

	local Player = PlayerTab:AddSection({
		Name = "Player"
	})

	MainTab:AddButton({
		Name = "Destroy GUI",
		Callback = function()
			OrionLib:Destroy()
		end    
	})

	MainTab:AddButton({
		Name = "Rejoin server",
		Callback = function()
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
		end    
	})

	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

	MainTab:AddButton({
		Name = "Serverhop",
		Callback = function()
			if httprequest then
				local servers = {}
				local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)})
				local body = game:GetService("HttpService"):JSONDecode(req.Body)
				if body and body.data then
					for i, v in next, body.data do
						if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
							table.insert(servers, 1, v.id)
						end
					end
				end
				if #servers > 0 then
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
				else
					OrionLib:MakeNotification({
						Name = "Serverhop",
						Content = "Could not find an available server",
						Image = "",
						Time = 5
					})
				end
			end
		end    
	})

	ScripthubTab:AddButton({
		Name = "Infinite Yield",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end    
	})

	ScripthubTab:AddButton({
		Name = "Dark Dex",
		Callback = function()
			loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
		end    
	})

	MiscTab:AddBind({
		Name = "Freeze/Unfreeze (Might get kicked if used a lot)",
		Default = Enum.KeyCode.F,
		Hold = false,
		Callback = function()
			if(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored == false) then
				for _, parts in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if(parts:IsA("BasePart")) then
						parts.Anchored = true
					end
				end
			else
				for _, parts in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if(parts:IsA("BasePart")) then
						parts.Anchored = false
					end
				end
			end
		end    
	})

	local AutoEnterArena = false

	MiscTab:AddToggle({
		Name = "Auto Enter Arena",
		Default = false,
		Callback =	function(ArenaValue)
			AutoEnterArena = ArenaValue
			if(AutoEnterArena == false) then
				
				while true do
					if(AutoEnterArena == true) then
						if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
							firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
						end
						task.wait()
					end
					task.wait()
				end
			else
				
			end
		end
	})

	local BobFarm

	MiscTab:AddToggle({
		Name = "Bob Farm",
		Default = false,
		Callback =	function(bobValue)
			BobFarm = bobValue
			if(BobFarm == false) then
				game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
				repeat
					print("2138 eternal")
				until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health >= 0
				fireclickdetector(workspace.Lobby.Replica.ClickDetector)
				task.wait(0.5)
				while true do
					if(BobFarm == true) then
						if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
							firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
						end
						task.wait(0.5)
						game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
						task.wait(0.5)
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
					end
					task.wait()
				end
			else

			end
		end
	})	

	BadgesTab:AddButton({
		Name = "Get the tycoon badge",
		Callback = function()
			repeat task.wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,-2,0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
			until game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text == "Plate Counter: 600"
		end    
	})

	BadgesTab:AddButton({
		Name = "Get the brazil badge",
		Callback = function()
			game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Lobby.brazil.portal.CFrame
		end    
	})

	BadgesTab:AddButton({
		Name = "Get the court evidence badge",
		Callback = function()
			fireclickdetector(workspace.Lobby.Scene.knofe.ClickDetector)
		end    
	})

	BadgesTab:AddButton({
		Name = "Get lone orange badge",
		Callback = function()
			fireclickdetector(workspace.Arena.island5.Orange.ClickDetector)
		end    
	})

	BadgesTab:AddButton({
		Name = "Get the duck badge",
		Callback = function()
			fireclickdetector(workspace.Arena["default island"]:FindFirstChild("Rubber Ducky").ClickDetector)
		end    
	})

	PlayerTab:AddSlider({
		Name = "Set WalkSpeed",
		Min = 0,
		Max = 350,
		Default = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed,
		Color = Color3.fromRGB(107, 141, 214),
		Increment = 1,
		ValueName = "WalkSpeed",
		Callback = function(speedValu)
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = speedValu
		end    
	})

	PlayerTab:AddSlider({
		Name = "Set JumpPower",
		Min = 0,
		Max = 2500,
		Default = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower,
		Color = Color3.fromRGB(107, 141, 214),
		Increment = 1,
		ValueName = "JumpPower",
		Callback = function(jumpValu)
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = jumpValu
		end    
	})
end

OrionLib:Init()
