local LocalPlayer = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()

local OldNamecall; OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
    local Method = getnamecallmethod()

    if Self == LocalPlayer and (Method == "Kick" or Method == "kick") then
        return
    end

    return OldNamecall(Self, ...)
end))

local OldKick; OldKick = hookfunction(LocalPlayer.Kick, newcclosure(function(Self, ...)
    if Self == LocalPlayer then
        return
    end
    
    return OldKick(Self, ...)
end))

pcall(function()
    game:GetService("StarterPlayer").StarterPlayerScripts:WaitForChild("bo"):Destroy()
    game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("bo"):Destroy()
    print("px/bypass")
end)
