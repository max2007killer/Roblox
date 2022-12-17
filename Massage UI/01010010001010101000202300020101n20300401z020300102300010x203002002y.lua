local Notification = loadstring(game:HttpGet(""))()
getgenv().IrisAd = true;

Notification.Notify("Kater Hub", "LOADING...", "http://www.roblox.com/asset/?id=8059768488", {
    Duration = 8,

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

wait(10)

game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "[Kater Hub] Loaded!", Color = Color3.fromRGB( 24,236,17 ), Font = Enum.Font.Arial, FontSize = Enum.FontSize.Size24 } )

Notification.Notify("Kater Hub", "Loaded!  Have Fun", "http://www.roblox.com/asset/?id=7506111107", {
    Duration = 5,

    TitleSettings = {
        TextXAlignment = Enum.TextXAlignment.Center,
        Font = Enum.Font.SourceSansSemibold,
    },

    GradientSettings = {
        GradientEnabled = false,
        SolidColorEnabled = true,
        SolidColor = Color3.fromRGB(85, 255, 0),
        Retract = true
    }
})