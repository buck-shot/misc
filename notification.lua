while game:GetService("Workspace").DistributedGameTime <= 15 do
    wait(1)
end
print("initial")
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
function loaded()
  Notification.new("success", "Success!", "Successfully loaded " .. sName .. "!", true, 5)
end

Notification.new("info", "Loading", "Please wait until the script finishes loading...", true, 10)
