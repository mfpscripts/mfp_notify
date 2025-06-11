Docs: https://docs.maxifaxipaxi.com/scripts/notify

Exports:
-- Top Right (Standard)
exports['mfp_notify']:ShowNotification(
  "Mission Update",
  "~y~Yellow Text~w~ and ~g~Green Text~w~ work!",
  "https://example.com/icon.png"
)

-- Top Left
exports['mfp_notify']:ShowNotification(
  "Mission Update",
  "~r~This is a test notification~w~ in the top left.",
  "https://example.com/icon.png",
  "top-left"
)

-- Bottom left (over the minimap)
exports['mfp_notify']:ShowNotification(
  "Low Ammo Warning",
  "~r~Warning:~w~ You are running out of ammo!",
  "https://example.com/warning-icon.png",
  "bottom-left"
)



---------------------------
Icons:

Apple be like:
Maps: icons/maps-icon.png
News: icons/news-icon.png
Settings: icons/settings-icon.png
Message: icons/message-icon.png
Emergency: icons/emergency-icon.png
System: icons/system-icon.png
FindMy: icons/findmy-icon.png
Clock: icons/clock-icon.png
Mail: icons/mail-icon.png




Lorefriendly: (Make sure to get your own icons to be 100% safe!)
Mail-Lorefriendly: icons/lorefriendly/mail-icon-lore.png
Maps-Lorefriendly: icons/lorefriendly/maps-icon-lore.png
Settings-Lorefriendly: icons/lorefriendly/settings-icon-lore.png