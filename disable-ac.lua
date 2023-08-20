local xx = game.Players.LocalPlayer
local oldhmmnc  
oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
    if self == xx and getnamecallmethod():lower() == "kick" or not checkcaller() and getnamecallmethod() == "Destroy" and self.Name == "Highlight" then
        return
    end
    
    return oldhmmnc(self, ...)
end)

pcall(function()
    game:GetService("ReplicatedStorage"):WaitForChild("ReplicatorChassis"):Destroy()
    game:GetService("StarterPlayer").StarterPlayerScripts:WaitForChild("bo"):Destroy()
    game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("bo"):Destroy()
    print("px/bypass")
end)

task.wait(3)
