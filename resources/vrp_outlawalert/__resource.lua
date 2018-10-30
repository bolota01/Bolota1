resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

--resource_type 'gametype' { name = 'Hot Putsuit' }

description 'Gamemode by Nynjardin.'

dependency "vrp"

server_script {
    "@vrp/lib/utils.lua",
    "server.lua"
}
client_script {
    --"lib/Proxy.lua",
    --"lib/Tunnel.lua",
    "client.lua"
}