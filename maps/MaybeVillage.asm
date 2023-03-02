	object_const_def
;	const MAPNAME_OBJECTNAME


MaybeVillage_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MaybeVillage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3, 26, MAYBE_VILLAGE_POKEMON_CENTER_1F, 1
	warp_event 15, 20, DOG_LADY_HOUSE, 1
	warp_event 17, 20, DOG_LADY_HOUSE, 3
	warp_event 15, 32, OLD_MANS_HOUSE, 1
	warp_event 27, 21, MARINS_HOUSE, 1
	warp_event 27, 31, PHONE_ROOM, 1
	warp_event 37, 30, AWAKENING_TRAINER_CLUB, 1
	warp_event 39, 14, MAYBE_VILLAGE_MART, 1
	warp_event 25,  4, QUADRUPLETS_HOUSE, 1
	warp_event 27,  4, QUADRUPLETS_HOUSE, 2
	warp_event 17,  3, SUPER_FISHER_FELLOWS_HOUSE, 1
	warp_event 56,  7, BAD_EGG_EXTERIOR, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
