description "VRP lscustoms"

dependency "vrp"

client_script{'menu.lua', 'lscustoms.lua', 'lsconfig.lua'}
server_script{
    '@vrp/lib/utils.lua',
    '@mysql-async/lib/MySQL.lua',
    'lscustoms_server.lua'
}

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
