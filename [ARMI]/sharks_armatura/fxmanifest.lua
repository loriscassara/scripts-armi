fx_version 'cerulean'
game 'gta5'

shared_script '@es_extended/imports.lua'

client_scripts {
  'client/client.lua'
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/server.lua'
}

dependencies {
    'mysql-async',
    'es_extended'
}