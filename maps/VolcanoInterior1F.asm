	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

Volcano1FBoulder:
Volcano1FBoulder2:
	jumpstd StrengthBoulderScript

VolcanoInterior1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 27, 33, VOLCANO_EXTERIOR, 1
	warp_event 49, 29, VOLCANO_EXTERIOR, 2
	warp_event  5, 25, VOLCANO_EXTERIOR, 3
	warp_event 45, 17, VOLCANO_INTERIOR_B1F, 1
	warp_event 47,  3, VOLCANO_INTERIOR_B1F, 2
	warp_event 39, 33, VOLCANO_INTERIOR_2F, 1
	warp_event 21,  5, VOLCANO_INTERIOR_2F, 2
	warp_event 45,  3, VOLCANO_INTERIOR_2F, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 26, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Volcano1FBoulder, -1
	object_event 27, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Volcano1FBoulder2, -1
