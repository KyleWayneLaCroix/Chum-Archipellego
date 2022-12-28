	object_const_def
;	const MAPNAME_OBJECTNAME
	const ROUTE_D_NAME_RATER

RouteDNameRaterHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

RouteDNameRater:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end

RouteDNameRaterHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3,  7, ROUTE_D, 2
	warp_event  4,  7, ROUTE_D, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  5,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteDNameRater, -1
