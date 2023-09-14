print("px/executed")

while game:GetService("Workspace").DistributedGameTime <= 15 do
    wait(1)
end

print("initial")

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

if game:GetService("Players").LocalPlayer.Name == "AlmostDivine" then
    Notification.new("warning", "Unauthorized", "You're unauthorized to use this script.", true, 5)
    warn("px/unauthorized")
    return
end

print("px/authorized")

function loaded()
  Notification.new("success", "Authorized", "Successfully loaded " .. sName .. "!", true, 5)
end

function wait()
  Notification.new("info", "Loading", "Please wait until the script finishes loading...", true, timetowait)
end
