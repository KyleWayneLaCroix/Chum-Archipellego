	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior5FHall_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInterior5FHall_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 11, 13, VOLCANO_INTERIOR_5F, 2
	warp_event 3, 5, VOLCANO_INTERIOR_6F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
