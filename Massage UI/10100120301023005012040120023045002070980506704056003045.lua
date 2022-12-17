local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/KATERGaming/Massage-/main/Libery"))()
getgenv().IrisAd = true;

Notification.Notify("Kater Hub", "Premium loaded!", "http://www.roblox.com/asset/?id=8059768488", {
    Duration = 3,

    TitleSettings = {
        TextXAlignment = Enum.TextXAlignment.Center,
        Font = Enum.Font.SourceSansSemibold,
    },

    GradientSettings = {
        GradientEnabled = false,
        SolidColorEnabled = true,
        SolidColor = Color3.fromRGB(255, 21, 21),
        Retract = true
    }
})