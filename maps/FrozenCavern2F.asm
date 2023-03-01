	object_const_def
;	const MAPNAME_OBJECTNAME


FrozenCavern2F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

FrozenCavern2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 29, 23, FROZEN_CAVERN_1F,  3
	warp_event 29,  5, FROZEN_CAVERN_1F,  5
	warp_event 33,  7, FROZEN_CAVERN_3F,  1
	warp_event 33, 10, FROZEN_CAVERN_1F, 11
	warp_event  8,  5, FROZEN_CAVERN_1F, 12
	warp_event 21,  6, FROZEN_CAVERN_1F, 13
	warp_event 18,  3, FROZEN_CAVERN_1F, 14
	warp_event 18, 11, FROZEN_CAVERN_1F, 15
	warp_event 22,  3, FROZEN_CAVERN_3F,  2
	warp_event  4, 25, ICE_TOWN, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
