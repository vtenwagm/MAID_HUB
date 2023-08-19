local device = game:GetService("RbxAnalyticsService"):GetClientId()

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "MAID HUB chưa được kích hoạt", HidePremium = false, SaveConfig = true, ConfigFolder = "MAID HUB"})

local Tab = Window:MakeTab({
	Name = "Kích hoạt",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("để sử dụng MAID HUB bạn phải kích hoạt")

Tab:AddLabel("Device ID : "..device)

Tab:AddButton({
	Name = "Copy device id",
	Callback = function()
      	 setclipboard(tostring(device))
  	end    
})

Tab:AddLabel("Copy device id, join discord và dùng lệnh /setdevice để kích hoạt")
