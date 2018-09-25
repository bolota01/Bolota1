resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'TRAILBLAZERrota/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'TRAILBLAZERrota/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'TRAILBLAZERrota/carvariations.meta'


files {
  'TRAILBLAZERrota/handling.meta',
  'TRAILBLAZERrota/vehicles.meta',
  'TRAILBLAZERrota/carvariations.meta',

}

client_script 'vehicle_names.lua'
