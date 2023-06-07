	object_const_def
;	const MAPNAME_OBJECTNAME


BriansHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

BriansHouseBookshelf:
BriansHouseBrian:
	end

BriansHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  6, 13, IVY_ROAD, 3
	warp_event  7, 13, IVY_ROAD, 3
	warp_event 12,  0, IVY_ROAD, 5
	;warp_event  3,  1, DARK_BASEMENT, 1
	;warp_event  3,  2, DARK_BASEMENT, 1
	;warp_event  3,  3, DARK_BASEMENT, 1
	;warp_event  2,  3, DARK_BASEMENT, 1
	;warp_event  1,  3, DARK_BASEMENT, 1
	;warp_event  0,  3, DARK_BASEMENT, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 11,  7, BGEVENT_READ, BriansHouseBookshelf
	bg_event 12,  7, BGEVENT_READ, BriansHouseBookshelf
	bg_event 13,  7, BGEVENT_READ, BriansHouseBookshelf

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag

;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  2,  4, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseBrian, 0
