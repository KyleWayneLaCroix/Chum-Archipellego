	object_const_def
;	const MAPNAME_OBJECTNAME


FrozenCavernB1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

FrozenCavernB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 23, 25, FROZEN_CAVERN_1F, 2
	warp_event 33,  5, FROZEN_CAVERN_B1F, 3
	warp_event 10, 11, FROZEN_CAVERN_1F, 4
	warp_event 24,  3, FROZEN_CAVERN_1F, 5
	warp_event 25,  6, FROZEN_CAVERN_1F, 6
	warp_event 20, 13, FROZEN_CAVERN_1F, 7
	warp_event 35, 10, FROZEN_CAVERN_1F, 8
	warp_event 09, 21, FROZEN_GROTTO, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
