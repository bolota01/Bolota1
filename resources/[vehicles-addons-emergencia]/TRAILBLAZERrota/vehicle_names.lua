function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('B71679ED', 'TRAILBLAZERrota')
  AddTextEntry('B71679ED', 'TRAILBLAZERrota')
end)
