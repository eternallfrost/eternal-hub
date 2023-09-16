local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

if not game:IsLoaded() then
    game.Loaded:Wait()
end

game:GetService("GuiService"):ClearError()

local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local MainWindow = Rayfield:CreateWindow({
	Name = "Eternal Hub - "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
	LoadingTitle = "Eternal User interface",
	LoadingSubtitle = "by eternallfrost",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil,
		FileName = "eternalexploits"
	},
	Discord = {
		Enabled = false,
		Invite = "",
		RememberJoins = true
	},
	KeySystem = true,
	KeySettings = {
		Title = "Eternal Hub - Key System",
		Subtitle = "Key System",
		Note = "Key link copied to clipboard",
		FileName = "EternalExploits_Key",
		SaveKey = true,
		GrabKeyFromSite = true,
		Key = {"https://pastebin.com/raw/qPr8fpY0"}
	 }
})

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

	setclipboard("https://link-center.net/388825/eternal-hub-keysystem")

	local MainTab = MainWindow:CreateTab("Main")

	local ScripthubTab = MainWindow:CreateTab("Scripthubs")

	local PlayerTab = MainWindow:CreateTab("Player")

	local MainSection = MainTab:CreateSection("Main")

	local ScriptHub = ScripthubTab:CreateSection("Scripthubs")

	local Player = PlayerTab:CreateSection("Player")

	function randomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end

	floatName = randomString()

	MainTab:CreateToggle({
		Name = "Tycoon auto click",
		CurrentValue = false,
		Callback =	function(tycoon)
			if(game.PlaceId == 13833961666) then
				if(tycoon == true) then
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
	local aseb = MainTab:CreateKeybind({
		Name = "Auto slap eternal bob",
		CurrentKeybind = "R",
		HoldToInteract = false,
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

	MainTab:CreateKeybind({
		Name = "Freeze/Unfreeze (if u abuse it might kick u)",
		CurrentKeybind = "Q",
		HoldToInteract = false,
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

	local IYbutton = ScripthubTab:CreateButton({
		Name = "Infinite Yield",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end    
	})

	local DDButton = ScripthubTab:CreateButton({
		Name = "Dark Dex",
		Callback = function()
			loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
		end    
	})

	local speedy = PlayerTab:CreateSlider({
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

	local jumpy = PlayerTab:CreateSlider({
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

	setclipboard("https://link-center.net/388825/eternal-hub-keysystem")

	local MainTab = MainWindow:CreateTab("Main")

	local MainSection = MainTab:CreateSection("Main")

	local ScripthubTab = MainWindow:CreateTab("Scripthubs")

	local MiscTab = MainWindow:CreateTab("Misc")

	local PlayerTab = MainWindow:CreateTab("Player")

	local ScriptHub = ScripthubTab:CreateSection("Scripthubs")

	local PlayerSection = PlayerTab:CreateSection("Player")

	local MiscSection = MiscTab:CreateSection("Misc")

	local pointEnabled = false
	local defaultloop = false

	MainTab:CreateKeybind({
		Name = "Point farm",
		CurrentKeybind = "F",
		HoldToInteract = false,
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
											Rayfield:Notify({
												Title = "Checking in a player",
												Content = "Checking in " .. player.Name .. " - " .. player.leaderstats.Rank.Value,
												Image = "",
												Duration = 5
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
											Rayfield:Notify({
												Title = "Checking out a player",
												Content = "Checking out " .. player.Name .. " - " .. player.leaderstats.Rank.Value,
												Image = "",
												Duration = 5
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

	MainTab:CreateKeybind({
		Name = "Freeze/Unfreeze",
		CurrentKeybind = "Q",
		HoldToInteract = false,
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

	local DG = MainTab:CreateButton({
		Name = "Destroy GUI",
		Callback = function()
			Rayfield:Destroy()
		end    
	})

	local RS = MainTab:CreateButton({
		Name = "Rejoin server",
		Callback = function()
			local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
			if teleportFunc then
				teleportFunc([[
					loadstring(game:HttpGet("https://raw.githubusercontent.com/eternallfrost/eternal-hub/main/eternalhubcomplete.lua"))()
				]])
			end
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
		end    
	})

	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

	local SH = MainTab:CreateButton({
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
					local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
					if teleportFunc then
						teleportFunc([[
							loadstring(game:HttpGet("https://raw.githubusercontent.com/eternallfrost/eternal-hub/main/eternalhubcomplete.lua"))()
						]])
					end
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
				else
					Rayfield:Notify({
                        Title = "Serverhop",
                        Content = "Could not find an available server!",
                        Image = "",
                        Duration = 5
                    })
				end
			end
		end    
	})

	local IYButton = ScripthubTab:CreateButton({
		Name = "Infinite Yield",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end    
	})

	local DD = ScripthubTab:CreateButton({
		Name = "Dark Dex",
		Callback = function()
			loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
		end    
	})

	local UsernameInfo = MiscTab:CreateLabel("Nil")
	local RankInfo = MiscTab:CreateLabel("Nil")
	local PointInfo = MiscTab:CreateLabel("Nil")

	local playersTab = {}

	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if(v:IsA("Player")) then
			table.insert(playersTab, v.Name)
		end
	end

	game:GetService("Players").PlayerAdded:Connect(function(player)
		table.insert(playersTab, player.Name)
	end)

	game:GetService("Players").PlayerRemoving:Connect(function(player)
		table.remove(playersTab, table.find(playersTab, player.Name))
	end)

	local CheckPLR = MiscTab:CreateDropdown({
		Name = "Select player to check info about them",
		Options = playersTab,
		CurrentOption = playersTab[1],
		MultipleOptions = false,
		Callback = function(Option)
			UsernameInfo:Set("Username: "..game:GetService("Players"):FindFirstChild(Option[1]).Name)
			RankInfo:Set("Rank: "..game:GetService("Players"):FindFirstChild(Option[1]).leaderstats.Rank.Value)
			PointInfo:Set("Points: "..game:GetService("Players"):FindFirstChild(Option[1]).leaderstats.Points.Value)
		end,
	 })

	 local farmTSW = false
	 MiscTab:CreateKeybind({
		Name = "Farm towels/weights",
		CurrentKeybind = "R",
		HoldToInteract = false,
		Callback = function()
			if(farmTSW == false) then
				farmTSW = true
				Rayfield:Notify({
					Title = "Farming Notification",
					Content = "Towel/weight farming is turned on",
					Image = "",
					Duration = 5
				})
				while true do
					if(farmTSW == true) then
						local args = {
							[1] = "Interactable",
							[2] = workspace:WaitForChild("GeneralInteractable"):WaitForChild("Weight")
						}
						
						game:GetService("ReplicatedStorage"):WaitForChild("RemoteStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))

						Rayfield:Notify({
							Title = "Farming Notification",
							Content = "Restocking one of the weights",
							Image = "",
							Duration = 3
						})
						
						task.wait(0.1)

						local args2 = {
							[1] = "Interactable",
							[2] = workspace:WaitForChild("GeneralInteractable"):WaitForChild("Towel")
						}
						
						game:GetService("ReplicatedStorage"):WaitForChild("RemoteStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args2))

						Rayfield:Notify({
							Title = "Farming Notification",
							Content = "Refilling one of the towels",
							Image = "",
							Duration = 3
						})
						
						task.wait(0.1)
					else
						break
					end
				end
			else
				farmTSW = false
				Rayfield:Notify({
					Title = "Farming Notification",
					Content = "Towel/weight farming is turned off",
					Image = "",
					Duration = 5
				})
			end
		end    
	})

	function isNumber(str)
		if tonumber(str) ~= nil or str == 'inf' then
			return true
		end
	end

	local HumanModCons = {}

	local speedy = PlayerTab:CreateSlider({
		Name = "Set WalkSpeed",
		Range = {0, 500},
		CurrentValue = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed,
		Increment = 2,
		Suffix = "WalkSpeed",
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

	local jumpy = PlayerTab:CreateSlider({
		Name = "Set JumpPower",
		Range = {0, 2500},
		CurrentValue = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower,
		Increment = 2,
		Suffix = "JumpPower",
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

	setclipboard("https://link-center.net/388825/eternal-hub-keysystem")

	local MainTab = MainWindow:CreateTab("Home")

	local ScripthubTab = MainWindow:CreateTab("Scripthubs")

	local MiscTab = MainWindow:CreateTab("Misc")

	local BadgesTab = MainWindow:CreateTab("Badges")

	local PlayerTab = MainWindow:CreateTab("Player")

	local MainSection = MainTab:CreateSection("Main")

	local MiscSection = MiscTab:CreateSection("Misc")

	local BadgesSection = BadgesTab:CreateSection("Badges")

	local ScriptHub = ScripthubTab:CreateSection("Scripthubs")

	local PlayerSection = PlayerTab:CreateSection("Player")

	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

	local SH = MainTab:CreateButton({
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
					local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
					if teleportFunc then
						teleportFunc([[
							loadstring(game:HttpGet("https://raw.githubusercontent.com/eternallfrost/eternal-hub/main/eternalhubcomplete.lua"))()
						]])
					end
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
				else
					Rayfield:Notify({
                        Title = "Serverhop",
                        Content = "Could not find an available server!",
                        Image = "",
                        Duration = 5
                    })
				end
			end
		end    
	})

	local VTS = MainTab:CreateButton({
		Name = "Teleport to testing server",
		Callback = function()
			local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
			if teleportFunc then
				teleportFunc([[
					loadstring(game:HttpGet("https://raw.githubusercontent.com/eternallfrost/eternal-hub/main/eternalhubcomplete.lua"))()
				]])
				game:GetService("TeleportService"):Teleport(9020359053)
            end
		end    
	})

	local IYButton = ScripthubTab:CreateButton({
		Name = "Infinite Yield",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end    
	})

	local DD = ScripthubTab:CreateButton({
		Name = "Dark Dex",
		Callback = function()
			loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
		end    
	})

	MiscTab:CreateKeybind({
		Name = "Freeze/Unfreeze",
		CurrentKeybind = "F",
		HoldToInteract = false,
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

	MiscTab:CreateToggle({
		Name = "Auto Enter Arena",
		CurrentValue = false,
		Callback =	function(AutoEnterArena)
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

	MiscTab:CreateButton({
		Name = "Bob Farm",
		CurrentValue = false,
		Callback =	function()
			local doneforFirst = false

			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
			game.Players.LocalPlayer.CharacterAdded:Connect(function()
				if(doneforFirst == false) then
					doneforFirst = true
					task.wait(0.5)
					fireclickdetector(workspace.Lobby.Replica.ClickDetector)
					task.wait(0.5)
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
				else
					while true do
						task.wait()
						if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
							firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
						end
						task.wait(0.5)
						if(game.Players.LocalPlayer.Character:FindFirstChild("entered") == true) then
							task.wait(0.5)
							game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, nil)
							task.wait(0.5)
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
							task.wait()
						else
							firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
							firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
							task.wait()
						end
					end
				end
			end)
		end
	})	

	local TB = BadgesTab:CreateButton({
		Name = "Get the tycoon badge",
		Callback = function()
			repeat task.wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,-2,0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
			until game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text == "Plate Counter: 600"
		end    
	})

	local BR = BadgesTab:CreateButton({
		Name = "Get the brazil badge",
		Callback = function()
			game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = workspace.Lobby.brazil.portal.CFrame
		end    
	})

	local COUR = BadgesTab:CreateButton({
		Name = "Get the court evidence badge",
		Callback = function()
			fireclickdetector(workspace.Lobby.Scene.knofe.ClickDetector)
		end    
	})

	local ORAN = BadgesTab:CreateButton({
		Name = "Get lone orange badge",
		Callback = function()
			fireclickdetector(workspace.Arena.island5.Orange.ClickDetector)
		end    
	})

	local duck = BadgesTab:CreateButton({
		Name = "Get the duck badge",
		Callback = function()
			fireclickdetector(workspace.Arena["default island"]:FindFirstChild("Rubber Ducky").ClickDetector)
		end    
	})

	local DG = MainTab:CreateButton({
		Name = "Destroy GUI",
		Callback = function()
			Rayfield:Destroy()
		end    
	})

	local RS = MainTab:CreateButton({
		Name = "Rejoin server",
		Callback = function()
			local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
			if teleportFunc then
				teleportFunc([[
					loadstring(game:HttpGet("https://raw.githubusercontent.com/eternallfrost/eternal-hub/main/eternalhubcomplete.lua"))()
				]])
			end
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
		end    
	})

	local speedy = PlayerTab:CreateSlider({
		Name = "Set WalkSpeed",
		Range = {0, 500},
		CurrentValue = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed,
		Increment = 2,
		Suffix = "WalkSpeed",
		Callback = function(speedValu)
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = speedValu
		end    
	})

	local jumpy = PlayerTab:CreateSlider({
		Name = "Set JumpPower",
		Range = {0, 2500},
		CurrentValue = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower,
		Increment = 2,
		Suffix = "JumpPower",
		Callback = function(jumpValu)
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = jumpValu
		end    
	})
elseif(game.PlaceId == 2778845430) then
	setclipboard("https://link-center.net/388825/eternal-hub-keysystem")

	local MainTab = MainWindow:CreateTab("Main")

	local ScripthubTab = MainWindow:CreateTab("Scripthubs")

	local MiscTab = MainWindow:CreateTab("Misc")

	local PlayerTab = MainWindow:CreateTab("Player")

	local Main = MainTab:CreateSection("Main")

	local ScriptHub = ScripthubTab:CreateSection("Scripthubs")

	local Player = PlayerTab:CreateSection("Player")

	local MiscSection = MiscTab:CreateSection("Misc")

	local DG = MainTab:CreateButton({
		Name = "Destroy GUI",
		Callback = function()
			Rayfield:Destroy()
		end    
	})

	local RS = MainTab:CreateButton({
		Name = "Rejoin server",
		Callback = function()
			local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
			if teleportFunc then
				teleportFunc([[
					loadstring(game:HttpGet("https://raw.githubusercontent.com/eternallfrost/eternal-hub/main/eternalhubcomplete.lua"))()
				]])
			end
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
		end    
	})

	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

	local SH = MainTab:CreateButton({
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
					local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
					if teleportFunc then
						teleportFunc([[
							loadstring(game:HttpGet("https://raw.githubusercontent.com/eternallfrost/eternal-hub/main/eternalhubcomplete.lua"))()
						]])
					end
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
				else
					Rayfield:Notify({
                        Title = "Serverhop",
                        Content = "Could not find an available server!",
                        Image = "",
                        Duration = 5
                    })
				end
			end
		end    
	})

	local RMAFK = MainTab:CreateButton({
		Name = "Disable AFK Forcefield",
		Callback = function()
			game:GetService("Players").LocalPlayer.Backpack.AFKClient:Destroy()
		end    
	})

	local IYButton = ScripthubTab:CreateButton({
		Name = "Infinite Yield",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end    
	})

	local DD = ScripthubTab:CreateButton({
		Name = "Dark Dex",
		Callback = function()
			loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))()
		end    
	})

	local UsernameInfo = MiscTab:CreateLabel("Nil")
	local RankInfo = MiscTab:CreateLabel("Nil")
	local LocationInfo = MiscTab:CreateLabel("Nil")
	local PointInfo = MiscTab:CreateLabel("Nil")

	local playersTab = {}

	for _, v in pairs(game:GetService("Players"):GetPlayers()) do
		if(v:IsA("Player")) then
			table.insert(playersTab, v.Name)
		end
	end

	game:GetService("Players").PlayerAdded:Connect(function(player)
		table.insert(playersTab, player.Name)
	end)

	game:GetService("Players").PlayerRemoving:Connect(function(player)
		table.remove(playersTab, table.find(playersTab, player.Name))
	end)

	local CheckPLR = MiscTab:CreateDropdown({
		Name = "Select player to check info about them",
		Options = playersTab,
		CurrentOption = playersTab[1],
		MultipleOptions = false,
		Callback = function(Option)
			UsernameInfo:Set("Username: "..game:GetService("Players"):FindFirstChild(Option[1]).Name)
			RankInfo:Set("Rank: "..game:GetService("Players"):FindFirstChild(Option[1]).leaderstats.Rank.Value)
			LocationInfo:Set("Location: "..game:GetService("Players"):FindFirstChild(Option[1]).CurrentRoom.Value)
			PointInfo:Set("Points: "..game:GetService("Players"):FindFirstChild(Option[1]).leaderstats.Points.Value)
		end,
	 })

	 
	 local ChangeAM = MiscTab:CreateDropdown({
		Name = "Change character material",
		Options = {"Plastic",
			"SmoothPlastic",
			"Neon",
			"Wood",
			"WoodPlanks",
			"Marble",
			"Slate",
			"Concrete",
			"Granite",
			"Brick",
			"Pebble",
			"Cobblestone",
			"CorrodedMetal",
			"DiamondPlate",
			"Foil",
			"Metal",
			"Grass",
			"Sand",
			"Fabric",
			"Ice",
			"ForceField"
		},
		CurrentOption = {"SmoothPlastic"},
		MultipleOptions = false,
		Callback = function(Option)
			game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SendIdleEvent"):FireServer(Option[1])
		end,
	 })

	function isNumber(str)
		if tonumber(str) ~= nil or str == 'inf' then
			return true
		end
	end

	local HumanModCons = {}

	local speedy = PlayerTab:CreateSlider({
		Name = "Set WalkSpeed",
		Range = {0, 500},
		CurrentValue = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed,
		Increment = 2,
		Suffix = "WalkSpeed",
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

	local jumpy = PlayerTab:CreateSlider({
		Name = "Set JumpPower",
		Range = {0, 2500},
		CurrentValue = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower,
		Increment = 2,
		Suffix = "JumpPower",
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
end
