local c  = game:GetService("Players").LocalPlayer.Character.Head.Position
local p1 = Instance.new("Part")

p1['Parent']=game:GetService("Workspace")
p1['Shape']=Enum.PartType.Ball
p1['BrickColor'] = BrickColor.new("Bright Red")
p1['Size'] = Vector3.new(50,50,50)
p1['Name'] = 'NukeScript'
p1['Anchored']= true
p1['CanCollide'] = false
p1['Position'] = Vector3.new(c.X, c.Y, c.Z)
p1['Transparency'] = 0.3

local p2 = Instance.new("Part")

p2['Parent']=game:GetService("Workspace")
p2['Shape']=Enum.PartType.Ball
p2['BrickColor'] = BrickColor.new("Bright Red")
p2['Size'] = Vector3.new(10,10,10)
p2['Name'] = 'NukeScript'
p2['Anchored']=true
p2['CanCollide'] = false
p2['Position']=Vector3.new(c.X, c.Y, c.Z)
p2['Transparency'] = 0.3

p1.Touched:Connect(function (hit)
pcall(function ()
if hit.Parent:FindFirstChildOfClass("Humanoid") then
hit.Parent:FindFirstChildOfClass("Humanoid").Health = 0
end
hit.Anchored = false
hit.BrickColor = BrickColor.new("CGA brown")
hit.Anchored = false
hit.Material = Enum.Material.CorrodedMetal
end)
end)
pcall(function ()
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v.ClassName == 'Part' or v.ClassName == 'MeshPart' or v.ClassName == 'UnionOperation' then
if v.Name ~= ' NukeScript' then
v.CanTouch = true
v.CanCollide = true
v.Anchored = false
end
end
end
end)
game:GetService("RunService").Heartbeat:Connect(function ()
local a = p1.Size
local b = p2.Size
p1.Size = Vector3.new(a.X+1, a.Y+1, a.Z+1)
p2.Size = Vector3.new(b.X+1, b.Y+1, a.Z+1)
end)
