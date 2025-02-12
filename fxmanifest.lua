fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'ScrachStack'
description 'Bus Stops'
version '1.0.1'
lua54 'yes'

client_scripts {
    'client/*',
}

server_script 'server/*'

shared_script '@ox_lib/init.lua'
shared_script 'config.lua'
