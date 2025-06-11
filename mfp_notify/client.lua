RegisterCommand('test-notify', function()
     exports['mfp_notify']:ShowNotification("Settings","Your Phone has been hacked by the FIB.", nil, nil)
end)

----------------------

RegisterNUICallback('showNotification', function(data)
  SendNUIMessage({
    action = 'showNotification',
    title = data.title,
    message = data.message,
    icon = data.icon,
    time = 'Now'
  })
end)

RegisterNetEvent('mfp_notify:ShowNotification', function(title, message, icon, position)
  SendNUIMessage({
    action = 'showNotification',
    title = title or "Settings",
    message = message or "You changed something in your system..",
    icon = icon or "icons/settings-icon.png",
    position = position or Config.defaultLocation
  })
end)

function ShowNotification(title, message, icon, position)
  TriggerEvent('mfp_notify:ShowNotification', title, message, icon, position)
end