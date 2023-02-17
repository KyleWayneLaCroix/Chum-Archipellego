	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior2F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

Volcano2FBoulder:
	end

VolcanoInterior2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 21, 33, VOLCANO_INTERIOR_1F, 6
	warp_event 21,  3, VOLCANO_INTERIOR_1F, 7
	warp_event 3,  7, VOLCANO_INTERIOR_1F, 8
	warp_event 11, 27, VOLCANO_EXTERIOR, 4
	warp_event 17, 21, VOLCANO_INTERIOR_3F, 1
	warp_event 11,  5, VOLCANO_INTERIOR_3F, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 22, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Volcano2FBoulder, -1
