fx_version 'cerulean'
game 'gta5'

author ' Original Author --> Tonybyn_Mp4. Modified by Waypoint'
description 'Burgershot Job for Waypoint RP'
repository 'https://github.com/TonybynMp4/y_burgershot' -- original repo
version '1.3.4'

ox_lib 'locale'
shared_scripts {
	'@ox_lib/init.lua',
}

client_scripts {
    '@qbx_core/modules/playerdata.lua',
    'client/main.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

files {
    'locales/*.json',
    'config/client.lua',
    'config/shared.lua',
    'config/chihuahua.lua',
    'config/burgershot.lua'
}

data_file 'DLC_ITYP_REQUEST' 'stream/alca_anim_eat.ytyp'


dependency '/assetpacks'
dependency '/assetpacks'

lua54 'yes'
use_experimental_fxv2_oal 'yes'
