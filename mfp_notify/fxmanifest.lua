fx_version 'cerulean'
game 'gta5'

description 'MFP Notification'
author 'MFPSCRIPTS'
version '1.0.0' 

ui_page 'ui/notification.html'

files {
  'ui/notification.html',
  'ui/style.css',
  'ui/script.js',
  'ui/icons/*.*',
  'ui/icons/lorefriendly/*.*'
}

lua54 'yes'

escrow_ignore {
	'config.lua',
	'client.lua',
  'ui/*.*'
}  

client_script 'client.lua'
client_script 'config.lua'

server_script 'server.lua'

export 'ShowNotification'
server_export 'ShowNotification'
server_export 'ShowNotificationToAll'