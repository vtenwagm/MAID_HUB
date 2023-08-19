device = game:GetService("RbxAnalyticsService"):GetClientId()
setclipboard(tostring(device))
name = game:HttpGet("https://maidhubservice.vtn1001.repl.co/api/device/check?device="..device)

if name == "none" then loadstring(game:HttpGet("https://raw.githubusercontent.com/vtenwagm/MAID_HUB/main/active.lua"))()

else loadstring(game:HttpGet("https://raw.githubusercontent.com/vtenwagm/MAID_HUB/main/main.lua"))()

end
