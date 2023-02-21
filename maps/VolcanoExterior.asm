	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoExterior_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoExterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 30, 49, VOLCANO_INTERIOR_1F, 1
	warp_event 39, 45, VOLCANO_INTERIOR_1F, 2
	warp_event 18, 45, VOLCANO_INTERIOR_1F, 3
	warp_event 31, 45, VOLCANO_INTERIOR_2F, 4
	warp_event 35, 39, VOLCANO_INTERIOR_3F, 3
	warp_event 17, 41, VOLCANO_INTERIOR_3F, 4
	warp_event 35, 33, VOLCANO_INTERIOR_4F, 1
	warp_event 53, 33, VOLCANO_INTERIOR_4F, 2
	warp_event 21, 31, VOLCANO_INTERIOR_5F, 1
	warp_event 29, 25, VOLCANO_INTERIOR_6F, 2
	warp_event 47, 25, VOLCANO_INTERIOR_6F_HALL, 1
	warp_event 36,  5, VOLCANO_INTERIOR_6F_HALL, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
