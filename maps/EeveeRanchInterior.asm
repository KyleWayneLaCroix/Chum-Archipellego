	object_const_def
;	const MAPNAME_OBJECTNAME


EeveeRanchInterior_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

EeveeRanchInterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9, 13, EEVEE_RANCH_EXTERIOR, 4
	warp_event  8, 13, EEVEE_RANCH_EXTERIOR, 4
	warp_event  8,  0, EEVEE_RANCH_EXTERIOR, 5
	warp_event  9,  0, EEVEE_RANCH_EXTERIOR, 6

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
