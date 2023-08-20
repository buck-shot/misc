local xx = game.Players.LocalPlayer
local oldhmmnc  
oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
    if self == xx and getnamecallmethod():lower() == "kick" or not checkcaller() and getnamecallmethod() == "Destroy" and self.Name == "Highlight" then
        return
    end
    
    return oldhmmnc(self, ...)
end)

local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and args == {true, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil} then
        return wait(9e9)
    end
    return namecall(self, ...)
end)

pcall(function()
    game:GetService("StarterPlayer").StarterPlayerScripts:WaitForChild("bo"):Destroy()
    game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("bo"):Destroy()
    print("px/bypass")
end)

task.wait(3)
