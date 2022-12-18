	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KATERGaming/Roblox/main/Katerhub%20codes/kh-Libery.lua"))()
    local Window = Library.CreateLib("Kater Hub | Desktop Mode", "Sentinel")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Time Settings in ")
	
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
	local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
	
    MainSection:NewSlider("Walkspeed", "Changes the walkspeed", 150, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
	
  if humanoid.RigType == Enum.HumanoidRigType.R6 then
    MainSection:NewSlider("Jumppower (R6)", "Changes the jumppower", 150, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
  end
	
    MainSection:NewButton("Inf Jump", "you can jump to space!", function()
         local InfiniteJumpEnabled = true
               game:GetService("UserInputService").JumpRequest:connect(function()
	           if InfiniteJumpEnabled then
		        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	     end
      end)
    end)
	
	MainSection:NewKeybind("Instand Reset", "It kills you and lets you respawn", Enum.KeyCode.F1, function()
	    game.Players.LocalPlayer.Character.Head:Destroy()
	end)
	
    local Main = Window:NewTab("Teleport")
    local MainSection = Main:NewSection("Teleport Options")

    MainSection:NewTextBox("Teleport to Player", "Put the players username in the textbox and hit ENTER!", function(txt)
        local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local p2 = ""..txt
        local pos = p1.CFrame

        p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
    end)
	
	

    local MainSection = Main:NewSection("Coordinat Options")
    MainSection:NewTextBox("Teleport to Coordinates", "put the coordinates in the textbox and hit Enter!", function(txt)
	    
	end)
	
    local Position1 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	
    MainSection:NewButton("Print Coordinates", "just use the first Numbers before the ."..Position1.X , function()
	    print(Position1)
    end)
	
    local MainSection = Main:NewSection("Network Options")
	local TeleportService = game:GetService("TeleportService")
	local copyJID = game.JobId
	
    MainSection:NewButton("Copy JobId", ""..copyJID , function()
	    setclipboard(game.JobId)
    end)
	
    MainSection:NewTextBox("Join Job ID", "Every Lobby has its own JobID / invitecode.", function(id)
        local TeleportService = game:GetService("TeleportService")
        TeleportService:TeleportToPlaceInstance(placeId, JobId, player)
		
		TeleportService = ""..id
	end)
	
	MainSection:NewKeybind("Rejoin Lobby", "It rejoins the lobby.", Enum.KeyCode.F3, function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer

        ts:Teleport(game.PlaceId, p)
    end)
	
	
	
    local MainSection = Main:NewSection("Other Options")
    MainSection:NewButton("Ctrl+Click", "It will tp you to the position you click", function()
        local Plr = game:GetService("Players").LocalPlayer
        local Mouse = Plr:GetMouse()

        Mouse.Button1Down:connect(function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
        if not Mouse.Target then return end
        Plr.Character:MoveTo(Mouse.Hit.p)
        end)
    end)


    local Main = Window:NewTab("FE scripts")
    local MainSection = Main:NewSection("Trolling Options")
	
    MainSection:NewButton("Toggle Invisible (C)", "Turns you invisible.", function()
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
	
	MainSection:NewButton("Toggle Lag Character (V)", "For Players it looks like ur laggin.", function()
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
	
  if humanoid.RigType == Enum.HumanoidRigType.R15 then
    local MainSection = Main:NewSection("R15 Options")
	
	MainSection:NewButton("Change Size (Big)", "Make you Bigger.", function()
	    local LocalPlayer = game:GetService("Players").LocalPlayer
	    local Character = LocalPlayer.Character
	    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	    
	    function rm()
	    	for i,v in pairs(Character:GetDescendants()) do
	    		if v:IsA("BasePart") then
	    			if v.Name == "Handle" or v.Name == "Head" then
	    				if Character.Head:FindFirstChild("OriginalSize") then
	    					Character.Head.OriginalSize:Destroy()
	    				end
	    			else
	    				for i,cav in pairs(v:GetDescendants()) do
	    					if cav:IsA("Attachment") then
	    						if cav:FindFirstChild("OriginalPosition") then
	    							cav.OriginalPosition:Destroy()  
	    						end
	    					end
	    				end
	    				v:FindFirstChild("OriginalSize"):Destroy()
	    				if v:FindFirstChild("AvatarPartScaleType") then
	    					v:FindFirstChild("AvatarPartScaleType"):Destroy()
	    				end
	    			end
	    		end
	    	end
	    end

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
	    wait(1)

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
	    wait(1)

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
	    wait(1)

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
	    wait(1)

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("HeadScale"):Destroy()
	    wait(1)
	end)
	
	MainSection:NewButton("Change Size (Small)", "Make you Smaller.", function()
	    local LocalPlayer = game:GetService("Players").LocalPlayer
	    local Character = LocalPlayer.Character
	    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

	    local function rm()
	    	for i,v in pairs(Character:GetDescendants()) do
	    		if v:IsA("BasePart") then
	    			if v.Name ~= "Head" then
	    				for i,cav in pairs(v:GetDescendants()) do
	    					if cav:IsA("Attachment") then
	    						if cav:FindFirstChild("OriginalPosition") then
	    							cav.OriginalPosition:Destroy()
	    						end
	    					end
	    				end
	    				v:FindFirstChild("OriginalSize"):Destroy()
	    				if v:FindFirstChild("AvatarPartScaleType") then
	    					v:FindFirstChild("AvatarPartScaleType"):Destroy()
	    				end
	    			end
	    		end
	    	end
	    end

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
	    wait(0.2)

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
	    wait(0.2)

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
	    wait(0.2)

	    rm()
	    wait(0.5)
	    Humanoid:FindFirstChild("HeadScale"):Destroy()
	    wait(0.2)
	end)
	
	MainSection:NewButton("FE Ball", "Makes you spinning like a ball!", function()
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/KATERGaming/Script-Hub/main/Hamster%20ball"))()
	end)
	
	MainSection:NewButton("Launch: FE sturdy (Fully Working)", "ctrls: Q, Y, E, R, T, U, F, O, G, H, J, K, L", function()
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/KATERGaming/Roblox/main/scripts/FE%20sturdy.lua"))()
    end)
   end

	if game.PlaceId == 6884319169 then
		local Part1
                Part1 = Instance.new("Part", workspace)
                Part1.Anchored = true
                Part1.Size = Vector3.new(100, 1, 100)
                Part1.CFrame = CFrame.new(6220, 20, 60)
                Part1.CanCollide = true
                wait(0.1)

		local Part2
                Part2 = Instance.new("Part", workspace)
                Part2.Anchored = true
                Part2.Size = Vector3.new(100, 1, 100)
                Part2.CFrame = CFrame.new(4225, 2, 60)
                Part2.CanCollide = true
                wait(0.1)
		
		
		local Main = Window:NewTab("Mic Up")
		local MainSection = Main:NewSection("Script hub base")
	  
		MainSection:NewButton("Create Base", "it will spawn the base.", function()
            local Base1
                Base1 = Instance.new("Part", workspace)
	            Base1.Anchored = true
	            Base1.Size = Vector3.new(200, 1, 200)
	            Base1.CFrame = CFrame.new(0, 100, 0)
	            Base1.CanCollide = true
		end)
	  
		local MainSection = Main:NewSection("Private Teleports")
		MainSection:NewButton("Private Room 1", "it will teleport you into the room.", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6220, 23, 69)
		end)
	  
		MainSection:NewButton("Private Room 2", "it will teleport you into the room.", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4220, 5, 69)
		end)
	  
		local MainSection = Main:NewSection("Public Teleports")
		MainSection:NewButton("Toilets", "it will teleport you into the Toilets", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-101, 5, 86)
		end)
	  
		MainSection:NewButton("D. Shop", "it will teleport you into the Shop.", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-114, 3, -90)
		end)
	  
		MainSection:NewButton("Water slide", "it will teleport you in the middle of nowhere.", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44, 284, 192)
		end)
	  
		MainSection:NewButton("Floating Plattform", "it will tp you up there", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171, 61, -114)
		end)
	end
