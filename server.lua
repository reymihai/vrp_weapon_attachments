local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vRP_components") 
 
vRP.defInventoryItem({"lanterna", "Lanterna", "Este un component de arma!", function(args) 
    local choices = {}
	
	choices["Foloseste"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            vRP.tryGetInventoryItem({user_id, "lanterna", 1, true})
            TriggerClientEvent('add:lanterna', player)
            vRPclient.notify(player,{"Ai adaugat o lanterna armei tale"} ) 
            vRP.closeMenu({player})
        end
    end}
   
    return choices
end, 0.05})  

vRP.defInventoryItem({"surpresor", "Surpresor", "Este un component de arma!", function(args) 
    local choices = {}
	
	choices["Foloseste"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            TriggerClientEvent('add:surpresor', player)
            vRPclient.notify(player,{"Ai adaugat un surpresor armei tale"} ) 
            vRP.closeMenu({player})
        end
    end}
   
    return choices
end, 0.05})  

vRP.defInventoryItem({"grip", "Grip", "Este un component de arma!", function(args) 
    local choices = {}
	
	choices["Foloseste"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            TriggerClientEvent('add:grip', player)
            vRPclient.notify(player,{"Ai adaugat un grip armei tale"} ) 
            vRP.closeMenu({player})
        end
    end}
   
    return choices
end, 0.05})  

vRP.defInventoryItem({"skin", "Skin", "Este un component de arma!", function(args) 
    local choices = {}
	
	choices["Foloseste"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            TriggerClientEvent('add:skin', player)
            vRPclient.notify(player,{"Ai adaugat un skin armei tale"} ) 
            vRP.closeMenu({player})
        end
    end}
   
    return choices
end, 0.05})  
