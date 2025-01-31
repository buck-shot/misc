local LP = game:GetService("Players").LocalPlayer or game:GetService("Players").PlayerAdded:Wait()
local oldhmmi
local oldhmmnc
oldhmmi = hookmetamethod(game, "__index", function(self, method)
    if self == LP and method:lower() == "kick" then return error("Expected ':' not '.' calling member function Kick", 2) end
    return oldhmmi(self, method)
end)
oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
    if self == LP and getnamecallmethod():lower() == "kick" then return end
    return oldhmmnc(self, ...)
end)

local x; x = hookmetamethod(game, "__namecall", function(self, ...)
    if not checkcaller() and getnamecallmethod() == "Destroy" and self.Name == "Highlight" then return end
    return x(self, ...)
end)

print("like nothing ever happened!")
