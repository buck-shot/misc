local xx = game.Players.LocalPlayer
local oldhmmnc  
oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
    if self == xx and getnamecallmethod():lower() == "kick" or not checkcaller() and getnamecallmethod() == "Destroy" and self.Name == "Highlight" then
        return
    end
    
    return oldhmmnc(self, ...)
end)

for i = 1, 3 do
    task.wait(0.5)
    game:GetService("ReplicatedStorage"):WaitForChild("ReplicatorChassis"):Destroy()
end

print("px/bypass")

task.wait(3)
