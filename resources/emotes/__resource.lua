
dependency "vrp"

server_script {
    "@vrp/lib/utils.lua",   
    "sv.lua"
}

client_script {
    "lib/Tunnel.lua",
    "lib/Proxy.lua",
    "cl.lua"
}