-- hat needed: https://www.roblox.com/catalog/6685365462/Red-Stickman-Head
-- made by scriptifer#9511
pcall(function()
	settings().Physics.AllowSleep = false
	settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
end)
local Rig = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Lowerrated/immortal/main/main-no-animation"))()
local ThrowCFrame = CFrame.new(-0.90346241, 0.358176708, 0.845849514, 0.541109383, -0.513258696, -0.666157901, 0.719156563, -0.128184244, 0.682922184, -0.435906649, -0.848607302, 0.299751639)
local BaseRA_CFrame
local Debris = game:GetService("Debris")
local TweenService = game:GetService("TweenService")
local Ball = Instance.new("Part")
local A0Ball = Instance.new("Attachment")
local APBall = Instance.new("AlignPosition")
local A0ThrowArm = Instance.new("Attachment")
local ShowFling = true
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local threw = false
for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
	if not v:IsDescendantOf(Rig) then
		if v:IsA("BasePart") then 
			spawn(function()
				while true do
					v.Velocity = Vector3.new(45,0,0)
					task.wait(0)
				end
			end)
		end
	end
end
A0ThrowArm.Parent = Rig["Right Arm"]
A0ThrowArm.Position = Vector3.new(0, -1.7, 0)
Ball.Parent = workspace
Ball.Shape = Enum.PartType.Ball
Ball.Size = Vector3.new(1.65, 1.65, 1.65)
Ball.Transparency = 1
Ball.Name = "Baller_Ball"
A0Ball.Parent = Ball
APBall.Parent = Ball
APBall.Attachment0 = A0Ball
APBall.Attachment1 = A0ThrowArm
APBall.Responsiveness = 200
APBall.MaxForce = math.huge
Ball.CanCollide = false
local function get(part)
	if not APBall.Enabled then
		if part then
			if part:IsDescendantOf(Rig.Parent) then
				threw = false
				Ball.CanCollide = false
				APBall.Enabled = true
			end
		else
			threw = false
			Ball.CanCollide = false
			APBall.Enabled = true
		end
	end
end
local function throw()
	if not threw then
		threw = true
		local throw = TweenService:Create(Rig.Torso["Right Shoulder"], TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0.5, false, 0), {C1 = ThrowCFrame})
		throw:Play()
		throw.Completed:Wait()
		APBall.Enabled = false
		Ball.CanCollide = true
		Ball.CanTouch = false
		local throwvelocity = Instance.new("BodyPosition")
		throwvelocity.Parent = Ball
		throwvelocity.Position = Mouse.hit.Position
		throwvelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		Debris:AddItem(throwvelocity, 0.25)
		task.wait(0.5)
		TweenService:Create(Rig.Torso["Right Shoulder"], TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0.5, false, 0), {C1 = CFrame.new(-1.2637558, 1.33980083, -0.260471344, 0.96984601, -0.17364791, 0.171009868, -0.171009824, -0.984807372, -0.0301535316, 0.173647881, -8.56816769e-08, -0.984807789)}):Play()
		Ball.CanTouch = true
	end
end
Rig.Torso["Left Hip"].C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Rig.Torso["Left Hip"].C1 = CFrame.new(0.255651474, 2.22140408, 0, 0.939692259, -0.342020005, 0, 0.342020005, 0.939692259, 0, 0, 0, 1)
Rig.Torso["Left Shoulder"].C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Rig.Torso["Left Shoulder"].C1 = CFrame.new(0.599997997, 1.51243591, -0.180386543, 1.49011612e-08, -0.999999583, 5.96244254e-09, 0.866024971, 0, 0.500000179, -0.49999997, -7.4505806e-09, 0.866025329)
Rig.Torso["Right Hip"].C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Rig.Torso["Right Hip"].C1 = CFrame.new(-0.145107269, 2.0564394, 0, 0.984807551, 0.173648149, 0, -0.173648149, 0.984807551, 0, 0, 0, 1)
Rig.Torso["Right Shoulder"].C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Rig.Torso["Right Shoulder"].C1 = CFrame.new(-1.2637558, 1.33980083, -0.260471344, 0.96984601, -0.17364791, 0.171009868, -0.171009824, -0.984807372, -0.0301535316, 0.173647881, -8.56816769e-08, -0.984807789)
Rig.Torso.Neck.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
Rig.Torso.Neck.C1 = CFrame.new(0, -0.5, 0, -0.866025388, -0.5, 0, 0, 0, 1, -0.5, 0.866025388, 0)
Rig["RedStickman"]:Destroy()
spawn(function()
	local accessory = Rig.Parent["RedStickman"].Handle
	local a0accessory = Instance.new("Attachment")
	local apaccessory = Instance.new("AlignPosition")
	a0accessory.Parent = accessory
	apaccessory.Parent = accessory
	apaccessory.Attachment0 = a0accessory
	apaccessory.Attachment1 = A0Ball
	apaccessory.Responsiveness = 200
	apaccessory.MaxForce = math.huge
	if getsynasset and isfile and writefile then
		local BoomSound = Instance.new("Sound")
		BoomSound.Parent = accessory
		local file_exists = isfile("boom.mp3")
		if not file_exists then
			writefile("boom.mp3", game:HttpGetAsync("https://github.com/Lowerrated/Lowerrated/blob/main/boom.mp3?raw=true"))
		end
		BoomSound.SoundId = getsynasset("boom.mp3")
		Rig.Parent.HumanoidRootPart.Touched:Connect(function(part)
			if not part:IsDescendantOf(Rig.Parent) then
				if part.Parent:FindFirstChildOfClass("Humanoid") then
					BoomSound.Playing = true
				end
			end
		end)
	end
end)
local fling = Instance.new("BodyAngularVelocity")
local apfling = Instance.new("AlignPosition")
local a0fling = Instance.new("Attachment")
if ShowFling then
	local selection = Instance.new("SelectionBox")
	selection.Parent = workspace
	selection.Adornee = Rig.Parent.HumanoidRootPart
end
Rig.Parent.HumanoidRootPart.AlignOrientation:Destroy()
fling.Parent = Rig.Parent.HumanoidRootPart
fling.AngularVelocity = Vector3.new(1000, 1000, 1000)
apfling.Parent = Rig.Parent.HumanoidRootPart
a0fling.Parent = apfling.Parent
apfling.Attachment0 = a0fling
apfling.Attachment1 = A0Ball
apfling.Responsiveness = 200
apfling.MaxForce = math.huge
Mouse.Button1Down:Connect(function()
	if Mouse.Target then
		throw()
	end
end)
Mouse.KeyDown:Connect(function(key)
	if string.lower(key) == "e" then
		if threw then
			get()
		end
	end
end)