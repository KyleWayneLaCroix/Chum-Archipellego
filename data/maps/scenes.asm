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
	scene_var EEVEE_RANCH_EXTERIOR,         wEeveeRanchExteriorSceneID
	scene_var EEVEE_RANCH_INTERIOR,         wEeveeRanchInteriorSceneID
	scene_var MEEMAN_2F,                    wMeanman2FSceneID
	scene_var JUNGLE_GATE,                  wJungleGateSceneID

	scene_var INDIGO_PLATEAU_POKECENTER_1F, wIndigoPlateauPokecenter1FSceneID
	scene_var WILLS_ROOM,                   wWillsRoomSceneID
	scene_var KOGAS_ROOM,                   wKogasRoomSceneID
	scene_var BRUNOS_ROOM,                  wBrunosRoomSceneID
	scene_var KARENS_ROOM,                  wKarensRoomSceneID
	scene_var LANCES_ROOM,                  wLancesRoomSceneID
	scene_var HALL_OF_FAME,                 wHallOfFameSceneID

	scene_var VOLCANO_EXTERIOR,             wVolcanoExteriorSceneID
	scene_var VOLCANO_INTERIOR_1F,          wVolcanoInterior1FSceneID
	scene_var VOLCANO_INTERIOR_2F,          wVolcanoInterior2FSceneID
	scene_var VOLCANO_INTERIOR_3F,          wVolcanoInterior3FSceneID
	scene_var VOLCANO_INTERIOR_4F,          wVolcanoInterior4FSceneID
	scene_var VOLCANO_INTERIOR_5F,          wVolcanoInterior5FSceneID

	scene_var MARINS_HOUSE,                 wMarinsHouseSceneID
	scene_var MAYBE_VILLAGE,                wMaybeVillageSceneID
	scene_var MAYBE_VILLAGE_MART,           wMaybeVillageMartSceneID
	scene_var PHONE_ROOM,                   wPhoneRoomSceneID
	scene_var BAD_EGG_EXTERIOR,             wBadEggExteriorSceneID
	scene_var MISPLACED_WOODS,              wMisplacedWoodsSceneID
	scene_var IVY_ROAD,                     wIvyRoadSceneID
	scene_var BRIANS_HOUSE,                 wBriansHouseSceneID
	scene_var THE_DARK_LAB,                 wTheDarkLabSceneID
	scene_var AWAKENING_BEACH_2,			wAwakeningBeach2SceneID
	scene_var GRATE_GUY_CASINO,				wGrateGuyCasinoSceneID
	db -1 ; end
