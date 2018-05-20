
-- RnL Auto-Download Map File

AddCSLuaFile()

if SERVER then

	maplist = {}

	-- RnL
	maplist["rnl_ardennes"] = "452109731"
	maplist["rnl_battleofcarentan"] = "452109731"
	maplist["rnl_battleofcarentan_fix"] = "724635320"
	maplist["rnl_eglise"] = "452109731"
	maplist["rnl_falaise"] = "452109731"
	maplist["rnl_farm_v4"] = "452226991"
	maplist["rnl_farm_night_v1"] = "847377074"
	maplist["rnl_hill35_a8"] = "452226991"
	maplist["rnl_lafiere"] = "452109731"
	maplist["rnl_lapluie_v1"] = "452226991"
	maplist["rnl_laststand"] = "702465569"
	maplist["rnl_omahabeach_v7_22nd_update"] = "452226991"
	maplist["rnl_ramelle_b2e"] = "452226991"
	maplist["rnl_sanglots_longs_b1a"] = "452226991"
	maplist["rnl_sicily_a1"] = "452226991"
	maplist["rnl_siegfriedline_v2"] = "452226991"
	maplist["rnl_stannum_v3a"] = "452226991"
	maplist["rnl_stcomedumont"] = "452109731"
	maplist["rnl_stemariedumont"] = "705416167"
	maplist["rnl_adenau"] = "1382352014"
	maplist["rnl_dragoon_v1b14"] = "1382352014"
	maplist["rnl_glidernight_b3"] = "1382352014"
	maplist["rnl_kriegsmarine_beta1_d"] = "1382352014"

	-- Gets the current map name
	local map = game.GetMap()
	
	-- Finds the workshop ID for the current map name from the table above
	local workshopid = maplist[map] 

	if( workshopid != nil )then
	
		--If the map is in the table above, add it through workshop
		print( "[RNL Workshop] Setting up map download: " .. map .. " has Workshop ID of: " .. workshopid )
		
		resource.AddWorkshop( workshopid )
		
	else
	
		--If not, then hope the server has FastDL or the client has the map
		print( "[RNL Workshop] Not available for current map: " .. tostring( map ) )
		
	end

	resource.AddWorkshop( "452042706" ) -- RnL Content 1
	resource.AddWorkshop( "452075722" ) -- RnL Content 2
	resource.AddWorkshop( "452078053" ) -- RnL Content 3
	resource.AddWorkshop( "353023579" ) -- RnL Content 4
	resource.AddWorkshop( "918394019" ) -- RnL Map sorter / Auto-downloader / Map Icons

end
