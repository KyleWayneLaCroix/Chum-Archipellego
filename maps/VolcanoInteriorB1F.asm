	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInteriorB1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInteriorB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 23, 29, VOLCANO_INTERIOR_1F, 4
	warp_event 25, 15, VOLCANO_INTERIOR_1F, 5
	warp_event  9, 21, VOLCANO_INTERIOR_B1F_HALL, 2
	warp_event 27, 21, VOLCANO_INTERIOR_B1F_HALL, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
