	object_const_def
;	const MAPNAME_OBJECTNAME


GearCityHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

GearCityHouseGrannyScript:
	jumptextfaceplayer GearCityHouseGrannyText

GearCityHouseGrampsscript:
	jumptextfaceplayer GearCityHouseGrampsText

GearCityHouseGrannyText:
	text "Our son moved to"
	line "some sort of ICE"
	cont "TOWN."

	para "He gave up on"
	line "this town after"
	cont "he couldn't get"
	cont "his TRAINER CLUB"
	cont "business idea"
	cont "off the ground."

	para "Said it would be"
	line "more appreciated"
	cont "in the CHRISTMAS"
	cont "DLC."

	para "I wish he would"
	line "write..."
	done

GearCityHouseGrampsText:
	text "You're one of"
	line "those Poker-"
	cont "-man trainers."

	para "I don't cotton"
	line "to your kind"
	cont "around here."
	done

GearCityHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3,  7, GEAR_CITY, 10
	warp_event  4,  7, GEAR_CITY, 10

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GearCityHouseGrannyScript, 0
	object_event  5,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GearCityHouseGrampsScript, 0
