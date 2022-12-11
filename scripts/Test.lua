    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KATERGaming/Roblox/main/Katerhub%20codes/kh-Libery.lua"))()
    local Window = Library.CreateLib("Colins big dick", "Sentinel")
    local oldTheme = ""
	
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Time Settings in "..code)
	
	MainSection:NewButton("Time set Night", "Makes your game more darker!", function()
        lighting = game:GetService("Lighting")
        if lighting.TimeOfDay == "00:00:00" then
        lighting.TimeOfDay = 11
        else 
        lighting.TimeOfDay = 19
        end
    end)

	MainSection:NewButton("Time set Day", "Makes it day time again!", function()
        lighting = game:GetService("Lighting")
        if lighting.TimeOfDay == "00:00:00" then
        lighting.TimeOfDay = 11
        else 
        lighting.TimeOfDay = 16
        end
    end)
	
    local MainSection = Main:NewSection("Player")
	
    MainSection:NewSlider("Walkspeed", "Changes the walkspeed", 100, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
	
    MainSection:NewSlider("Jumppower (R6)", "Changes the jumppower", 100, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
	
    MainSection:NewButton("Inf Jump", "you can spam space!", function()
         local InfiniteJumpEnabled = true
               game:GetService("UserInputService").JumpRequest:connect(function()
	           if InfiniteJumpEnabled then
		        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	     end
      end)
    end)
	
	local MainSection = Main:NewSection("Misc")
	
	MainSection:NewButton("Join our Discord!", "JUST DO IT!", function()
	 inviteCode = "cQnp4MMYUn"

     local request = http_request or request or (syn and syn.request) or (http and http.request)

     if not request then
        	 return
     end

     request(
         {
             Url = 'http://127.0.0.1:6463/rpc?v=1',
             Method = 'POST',
             Headers = {
                 ['Content-Type'] = 'application/json',
                 ['origin'] = 'https://discord.com',
             },
             Body = game:GetService('HttpService'):JSONEncode({
                 ["args"] = {
                     ['code'] = "XkTZbeH5M8",
                 },
                 ['cmd'] = 'INVITE_BROWSER',
                 ['nonce'] = '.',
             });
         }
     );
	end)
	
	MainSection:NewButton("Made by Kater#0001", "deez n.", function()
	   local Sound = Instance.new("Sound", game.Workspace)
       Sound.Volume = 10
       Sound.SoundId = "rbxassetid://6741738180"
       Sound:Play()
	end)


	local Main = Window:NewTab("Mic up")
	local MainSection = Main:NewSection("Options")
	MainSection:NewButton("Spawn small base", "Colin originals", function()
  local Part
      Part = Instance.new("Part", workspace)
      Part.Anchored = true
      Part.Size = Vector3.new(200, 1, 60000)
      Part.CFrame = CFrame.new(0, 100, 0)
      Part.CanCollide = true
  end)

	MainSection:NewButton("Spawn big base", "Colin originals", function()
  local Part
      Part = Instance.new("Part", workspace)
      Part.Anchored = true
      Part.Size = Vector3.new(200, 1, 200)
      Part.CFrame = CFrame.new(0, 100, 0)
      Part.CanCollide = true
  end)

	MainSection:NewButton("Sky box change", "Colin originals", function()
  s = Instance.new("Sky",game.Lighting)
  s.SkyboxBk,s.SkyboxDn,s.SkyboxFt,s.SkyboxLf,s.SkyboxRt,s.SkyboxUp = "rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408"
  end)

	MainSection:NewButton("Cntrl+click", "Colin originals", function()
		local Plr = game:GetService("Players").LocalPlayer
		local Mouse = Plr:GetMouse()

		Mouse.Button1Down:connect(function()
		if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
		if not Mouse.Target then return end
		Plr.Character:MoveTo(Mouse.Hit.p)
		end)
  end)
    

	local Main = Window:NewTab("HTC Vive")
	local MainSection = Main:NewSection("Options")
	
	MainSection:NewButton("Character Freeze (ButtonR1)", "It will look like you are lagging.", function()
	_G.key = Enum.KeyCode.v
 
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KATERGaming/Script-Hub/main/Part%20of%20Frezze", true))()
 
	setting = settings().Network
	local Effect = Instance.new("ColorCorrectionEffect")
	Effect.Parent = game.Lighting
	Effect.Saturation = -1 
	Effect.Contrast = 0
	toggle = false
 
	Effect.Enabled = false
	function onKeyPress(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.RightControl then	
			if toggle == false then
				setting.IncomingReplicationLag = 1000
				Effect.Enabled = true
				toggle = true
			else
				setting.IncomingReplicationLag = 0
				Effect.Enabled = false
				toggle = false
			end
 
		end
	end
 
	game:GetService("UserInputService").InputBegan:connect(onKeyPress)
	game:GetService("UserInputService").InputBegan:connect(onKeyPress)
    end)
	
	MainSection:NewButton("Invisible (ButtonL2)", "you will be invisible for others", function()
      local ScriptStarted = false
      local Keybind = "c"
      local Transparency = true
      local NoClip = false

      local Player = game:GetService("Players").LocalPlayer
      local RealCharacter = Player.Character or Player.CharacterAdded:Wait()

      local IsInvisible = false

      RealCharacter.Archivable = true
      local FakeCharacter = RealCharacter:Clone()
      local Part
      Part = Instance.new("Part", workspace)
      Part.Anchored = true
      Part.Size = Vector3.new(200, 1, 200)
      Part.CFrame = CFrame.new(0, -500, 0)
      Part.CanCollide = true
      FakeCharacter.Parent = workspace
      FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

      for i, v in pairs(RealCharacter:GetChildren()) do
        if v:IsA("LocalScript") then
            local clone = v:Clone()
            clone.Disabled = true
            clone.Parent = FakeCharacter
        end
      end
      if Transparency then
        for i, v in pairs(FakeCharacter:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Transparency = 0.7
            end
        end
      end
      local CanInvis = true
      function RealCharacterDied()
        CanInvis = false
        RealCharacter:Destroy()
        RealCharacter = Player.Character
        CanInvis = true
        isinvisible = false
        FakeCharacter:Destroy()
        workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid

        RealCharacter.Archivable = true
        FakeCharacter = RealCharacter:Clone()
        Part:Destroy()
        Part = Instance.new("Part", workspace)
        Part.Anchored = true
        Part.Size = Vector3.new(200, 1, 200)
        Part.CFrame = CFrame.new(9999, 9999, 9999)
        Part.CanCollide = true
        FakeCharacter.Parent = workspace
        FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

        for i, v in pairs(RealCharacter:GetChildren()) do
            if v:IsA("LocalScript") then
                local clone = v:Clone()
                clone.Disabled = true
                clone.Parent = FakeCharacter
            end
        end
        if Transparency then
            for i, v in pairs(FakeCharacter:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Transparency = 0.7
                end
            end
        end
       RealCharacter.Humanoid.Died:Connect(function()
       RealCharacter:Destroy()
       FakeCharacter:Destroy()
       end)
       Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
      end
      RealCharacter.Humanoid.Died:Connect(function()
       RealCharacter:Destroy()
       FakeCharacter:Destroy()
       end)
      Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
      local PseudoAnchor
      game:GetService "RunService".RenderStepped:Connect(
        function()
      if PseudoAnchor ~= nil then
          PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
      end
       if NoClip then
      FakeCharacter.Humanoid:ChangeState(11)
       end
        end
      )

      PseudoAnchor = FakeCharacter.HumanoidRootPart
      local function Invisible()
        if IsInvisible == false then
            local StoredCF = RealCharacter.HumanoidRootPart.CFrame
            RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
            FakeCharacter.HumanoidRootPart.CFrame = StoredCF
            RealCharacter.Humanoid:UnequipTools()
            Player.Character = FakeCharacter
            workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
            PseudoAnchor = RealCharacter.HumanoidRootPart
            for i, v in pairs(FakeCharacter:GetChildren()) do
                if v:IsA("LocalScript") then
                    v.Disabled = false
                end
            end

            IsInvisible = true
        else
            local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
            FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
     
            RealCharacter.HumanoidRootPart.CFrame = StoredCF
     
            FakeCharacter.Humanoid:UnequipTools()
            Player.Character = RealCharacter
            workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
            PseudoAnchor = FakeCharacter.HumanoidRootPart
            for i, v in pairs(FakeCharacter:GetChildren()) do
                if v:IsA("LocalScript") then
                    v.Disabled = true
                end
            end
            IsInvisible = false
        end
      end

      game:GetService("UserInputService").InputBegan:Connect(
        function(key, gamep)
            if gamep then
                return
            end
            if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
                if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
                    Invisible()
                end
            end
        end
      )
	end)
