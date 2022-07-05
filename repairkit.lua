elseif itemName == "repairkit" then
    if not vRPclient.isInVehicle(source) then
        local vehicle = vRPclient.getNearestVehicle(source,3.5)
        if vehicle then


     if vRP.hasPermission(user_id,"mecanico.permissao") then
        
        
        TriggerClientEvent('cancelando',source,true)
        vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
        vRPclient._playAnim(source,false,{{"mini@repair","fixing_a_player"}},true)
        TriggerClientEvent("progress",source,30000,"reparando veículo")
        Citizen.Wait(30000)
        TriggerClientEvent('cancelando',source,false)
        TriggerClientEvent('reparar',source)
        TriggerClientEvent("Notify",source,'sucesso',"Veiculo Reparado com sucesso!.",8000)
        vRPclient._stopAnim(source,false)

     else
            if vRP.tryGetInventoryItem(user_id,"repairkit",1) then
                actived[user_id] = true
                
                TriggerClientEvent('cancelando',source,true)
                vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
                vRPclient._playAnim(source,false,{{"mini@repair","fixing_a_player"}},true)
                TriggerClientEvent("progress",source,30000,"reparando veículo")
                Citizen.Wait(30000)	
                    actived[user_id] = nil
                    TriggerClientEvent('cancelando',source,false)
                    TriggerClientEvent('reparar',source)
                    TriggerClientEvent("Notify",source,'sucesso',"Veiculo Reparado com sucesso!.",8000)
                    vRPclient._stopAnim(source,false)
                
                
               end
            end
        end
    end