	object_const_def
;	const MAPNAME_OBJECTNAME


HauntedAttic_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

HauntedAttic_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  2,  9, KYLES_HOUSE, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event , y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
