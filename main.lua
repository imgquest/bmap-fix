local BattlefieldMapFixFreeze = CreateFrame("Frame")
BattlefieldMapFixFreeze:RegisterEvent("ZONE_CHANGED")
BattlefieldMapFixFreeze:RegisterEvent("ZONE_CHANGED_INDOORS")

BattlefieldMapFixFreeze:SetScript("OnEvent", function()
	BattlefieldMap_LoadUI()

	if ( BattlefieldMapFrame ) then
		local mapID = MapUtil.GetDisplayableMapForPlayer()
		BattlefieldMapFrame:SetMapID(mapID)
	end
end)
