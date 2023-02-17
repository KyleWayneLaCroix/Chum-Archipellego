	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior4F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInterior4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9, 31, VOLCANO_EXTERIOR, 7
	warp_event 57, 39, VOLCANO_EXTERIOR, 8
	warp_event 61,  3, VOLCANO_INTERIOR_3F, 7
	warp_event 39, 17, VOLCANO_INTERIOR_3F, 8

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
