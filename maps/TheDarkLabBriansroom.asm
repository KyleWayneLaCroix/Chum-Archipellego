	object_const_def
;	const MAPNAME_OBJECTNAME


SanhaHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

SanhaHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  6, 17, ICE_TOWN, 5
	warp_event 14,  0, ICE_TOWN, 9
	warp_event  7, 17, ICE_TOWN, 5
	warp_event  2,  0, SANHA_HOUSE_B1F, 1
	warp_event  6,  0, SANHA_HOUSE_2F, 1
	warp_event  8,  0, SANHA_HOUSE_2F, 2
	warp_event 10,  0, SANHA_HOUSE_2F, 3
	warp_event 12,  0, SANHA_HOUSE_2F, 4
	warp_event 17,  0, SANHA_HOUSE_2F, 5

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
