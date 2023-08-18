local xx = game.Players.LocalPlayer
local oldhmmnc  
oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
    if self == xx and getnamecallmethod():lower() == "kick" or not checkcaller() and getnamecallmethod() == "Destroy" and self.Name == "Highlight" then
        return
    end
    
    return oldhmmnc(self, ...)
end)

local count = 0

for i = 1, 20 do
    task.wait(0.5)
    count = count + 1
    print(count)
    for i, connection in pairs(getconnections(game:GetService("Workspace").Vehicles.DescendantAdded)) do
        connection:Disable()           
    end

    for _, descendants in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
        for _, connections in pairs(getconnections(descendants.Changed)) do
            connections:Disable()
        end
    end
end
print("px/bypass")
