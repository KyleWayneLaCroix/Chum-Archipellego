	object_const_def
;	const MAPNAME_OBJECTNAME


IceTown_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

IceTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 15, 39, ICE_TOWN_POKECENTER_1F, 1
	warp_event 25, 37, ICE_TOWN_MART, 1
	warp_event 14, 31, FROZEN_CAVERN_1F, 1
	warp_event 22, 21, FROZEN_CAVERN_2F, 10
	warp_event 16, 27, SANHA_HOUSE, 1
	warp_event 27, 29, ICE_TOWN_TRAINER_CLUB, 1
	warp_event  9, 43, ICE_TOWN_HOUSE_1, 1
	warp_event  7, 35, ICE_TOWN_HOUSE_2, 1
	warp_event 17, 25, SANHA_HOUSE, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
