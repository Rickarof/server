function onUse(cid, item, frompos, item2, topos)
  	if item.aid == 45003 then
		local itemWeight = getItemWeightById(item.uid, 1)
		local playerCap = getPlayerFreeCap(cid)
		recompensa = 2492
		if getPlayerStorageValue(cid, item.uid) == -1 then
			if playerCap >= itemWeight then
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'You have found a ' .. getItemNameById(recompensa) .. '.')
				doPlayerAddItem(cid, recompensa ,1)
				setPlayerStorageValue(cid, item.uid, 1)
			else
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'You have found a ' .. getItemNameById(recompensa) .. ' weighing ' .. itemWeight .. ' oz it\'s too heavy.')
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "It is empty.")
		end
	else
		return false
	end

	return true
end