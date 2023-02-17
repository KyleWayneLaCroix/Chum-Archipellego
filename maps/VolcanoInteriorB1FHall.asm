	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInteriorB1FHall_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInteriorB1FHall_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 15, 11, VOLCANO_INTERIOR_B1F, 3
	warp_event 3, 11, VOLCANO_INTERIOR_B1F, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
