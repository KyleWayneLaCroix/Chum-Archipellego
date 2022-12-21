MACRO scene_var
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                wPokecenter2FSceneID
	scene_var TRADE_CENTER,                 wTradeCenterSceneID
	scene_var COLOSSEUM,                    wColosseumSceneID
	scene_var TIME_CAPSULE,                 wTimeCapsuleSceneID

	scene_var BATTLE_TOWER_1F,              wBattleTower1FSceneID
	scene_var BATTLE_TOWER_ELEVATOR,        wBattleTowerElevatorSceneID
	scene_var BATTLE_TOWER_HALLWAY,         wBattleTowerHallwaySceneID
	scene_var BATTLE_TOWER_BATTLE_ROOM,     wBattleTowerBattleRoomSceneID

	scene_var PLAYERS_HOUSE_1F,             wPlayersHouse1FSceneID

	scene_var AWAKENING_LAB,                wAwakeningLabSceneID
	scene_var AWAKENING_BEACH,              wAwakeningBeachSceneID
	scene_var GEAR_CITY,					wGearCitySceneID
	scene_var CITY_GEAR_HQ,					wCityGearHQSceneID
	scene_var CITY_GEAR_HQ_BASEMENT,		wCityGearHQBasementSceneID

	scene_var CEMETARY_LAB,                 wCemetaryLabSceneID

	scene_var METROID_CYBERSPACE_EXIT,      wMetroidCyberspaceExitSceneID

	scene_var UNIVERCITY_MART_1F,           wUnivercityMart1FSceneID

	scene_var INDIGO_PLATEAU_POKECENTER_1F, wIndigoPlateauPokecenter1FSceneID
	scene_var WILLS_ROOM,                   wWillsRoomSceneID
	scene_var KOGAS_ROOM,                   wKogasRoomSceneID
	scene_var BRUNOS_ROOM,                  wBrunosRoomSceneID
	scene_var KARENS_ROOM,                  wKarensRoomSceneID
	scene_var LANCES_ROOM,                  wLancesRoomSceneID
	scene_var HALL_OF_FAME,                 wHallOfFameSceneID

	db -1 ; end
