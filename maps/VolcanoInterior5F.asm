	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior5F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInterior5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 19, 33, VOLCANO_EXTERIOR, 9
	warp_event 33, 23, VOLCANO_INTERIOR_5F_HALL, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
