	object_const_def
;	const MAPNAME_OBJECTNAME


KylesHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

KylesHouseShelf:
KylesHouseConsole:
KylesHouseKyle:
KylesHouseJordanScript:
KylesHouseJoy:
KylesHouseRoy:
KylesHouseShaska:
	end

KylesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4, 13, IVY_ROAD, 7
	warp_event  5, 13, IVY_ROAD, 7
	warp_event  0,  5, HAUNTED_ATTIC, 1
	warp_event 12,  0, IVY_ROAD, 8

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  6, 10, BGEVENT_READ, KylesHouseConsole
	bg_event 13,  9, BGEVENT_READ, KylesHouseShelf
	bg_event 12,  9, BGEVENT_READ, KylesHouseShelf
	bg_event  3,  9, BGEVENT_READ, KylesHouseShelf
	bg_event  2,  9, BGEVENT_READ, KylesHouseShelf
	bg_event  1,  9, BGEVENT_READ, KylesHouseShelf
	bg_event  0,  9, BGEVENT_READ, KylesHouseShelf

	def_object_events
;	object_event , y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  0,  2, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KylesHouseKyle, 0
	object_event  6,  5, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KylesHouseJordanScript, 0
	object_event  5,  5, SPRITE_CAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, KylesHouseJoy, 0
	object_event  8, 10, SPRITE_CAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, KylesHouseRoy, 0
	object_event 10,  6, SPRITE_FOX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, KylesHouseShaska, 0
