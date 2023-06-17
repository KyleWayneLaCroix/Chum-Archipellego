	object_const_def
;	const MAPNAME_OBJECTNAME


ErrorRoom_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

ErrorRoomFocusBand:
	itemball FOCUS_BAND

ErrorRoomNugget:
	itemball NUGGET

ErrorRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  5,  1, MEEMAN_ROOF, 3
	warp_event  6,  1, MEEMAN_ROOF, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  3,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, ErrorRoomFocusBand, EVENT_ERROR_ROOM_FOCUS_BAND
	object_event  8,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, ErrorRoomNugget, EVENT_ERROR_ROOM_NUGGET
