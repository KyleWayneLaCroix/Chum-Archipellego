	object_const_def
;	const MAPNAME_OBJECTNAME


CaseysHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

CaseysHouseWorkshopCabinet:
CaseysHouseBookshelf:
	jumptext CaseysHouseBookshelfText


CaseysHouseBookshelfText:
	text "You had no idea"
	line "there were so"
	cont "many TEENAGE"
	cont "MUTANT NINJA"
	cont "TURTLES movie"
	cont "novelizations!"
	done

CaseysHouseCasey:
CaseysHouseAshley:
	end

CaseysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  2, 17, IVY_ROAD, 1
	warp_event  3, 17, IVY_ROAD, 1
	warp_event 10,  4, IVY_ROAD, 2
	warp_event 10,  5, IVY_ROAD, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 20,  2, BGEVENT_READ, CaseysHouseWorkshopCabinet
	bg_event  4,  9, BGEVENT_READ, CaseysHouseBookshelf
	bg_event  5,  9, BGEVENT_READ, CaseysHouseBookshelf

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag

;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 18,  3, SPRITE_TARIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CaseysHouseCasey, 0
	object_event  6, 13, SPRITE_MARIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CaseysHouseAshley, 0

