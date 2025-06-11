function ShowNotification(source, title, message, icon, position)
  TriggerClientEvent('mfp_notify:ShowNotification', source, title, message, icon, position)
end

function ShowNotificationToAll(title, message, icon, position)
  TriggerClientEvent('mfp_notify:ShowNotification', -1, title, message, icon, position)
end

---- ADS ----------------------------------------------------------------------------------
AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  print(" _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ ")
  print("|     |   __|  _  |   __|     | __  |     |  _  |_   _|   __|")
  print("| | | |   __|   __|__   |   --|    -|-   -|   __| | | |__   |")
  print("|_|_|_|__|  |__|  |_____|_____|__|__|_____|__|    |_| |_____|")
  print("The resource " .. resourceName .. " has been started. You can now use the exports!")
end)

AddEventHandler('onResourceStop', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  print('The resource ' .. resourceName .. ' was stopped. Created by MFPSCRIPTS.com!')
end)