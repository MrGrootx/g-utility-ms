fx_version "cerulean"
lua54 "yes"
game "gta5"

name "A script"
version "0.0.1"
description "g-utility-ms"
author "Groot Development"

shared_scripts{
	"shared/*.lua",
}


server_scripts{
	"server/**/*.lua",
}
client_scripts {
   'client/**/*.lua',
}