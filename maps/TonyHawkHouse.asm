	object_const_def
;	const MAPNAME_OBJECTNAME


TonyHawkHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TonyHawkHouseShelf:
	jumptext TonyHawkHouseShelfText

TonyHawkHouseShelfText:
	text "Shelves of TONY"
	cont "HAWK's trophies."
	done

TonyHawkHouseSkateboard:
	jumptext TonyHawkHouseSkateboardText

TonyHawkHouseSkateboardText:
	text "That's a pretty"
	line "sweet skateboard."
	done

TonyHawkHouseTools:
	jumptext TonyHawkHouseToolsText

TonyHawkHouseToolsText:
	text "Some sort of"
	line "SKATEBOARD repair"
	cont "kit."

	para "Or just regular"
	line "tools for around"
	cont "the house."
	done

TrainerSkaterBoyHawk:
	trainer SKATER_BOY, HAWK, EVENT_BEAT_SKATER_BOY_HAWK, SkaterBoyHawkSeenText, SkaterBoyHawkBeatenText, 0, .Script

.Script:
	opentext
	checkevent EVENT_GOT_SKATEBOARD
	iftrue .After
	writetext SkaterBoyHawkSorryTakeThis
	waitbutton
	verbosegiveitem BICYCLE
	waitbutton
	setevent EVENT_GOT_SKATEBOARD
.After:
	writetext SkaterBoyHawkAfterText
	waitbutton
	closetext
	end

SkaterBoyHawkSorryTakeThis:
	text "Hey man, I'm real"
	line "sorry that I"
	cont "flipped like that"

	para "Here, have one of"
	line "my SKATEBOARDS."
	done

SkaterBoyHawkSeenText:
	text "I told KOTICK"
	line "I'm not working"
	cont "with him again"
	cont "after the PRO"
	cont "SKATER 3 DLC got"
	cont "canceled."

	para "Stop showing up"
	line "at my house!"
	done

SkaterBoyHawkBeatenText:
	text "Sorry about that,"
	line "I've got a lot of"
	cont "people hassling"
	cont "me."
	done

SkaterBoyHawkAfterText:
	text "Sorry about that"
	line "again."

	para "Life can be rough"
	line "as a guy who was"
	cont "famous in the 90s"
	done

TonyHawkHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3,  7, ROUTE_F, 4
	warp_event  2,  7, ROUTE_F, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  7,  3, BGEVENT_READ, TonyHawkHouseShelf
	bg_event  6,  3, BGEVENT_READ, TonyHawkHouseShelf
	bg_event  5,  4, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  1,  6, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  0,  6, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  2,  2, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  3,  2, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  4,  4, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  3,  0, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  2,  0, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  0,  1, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  1,  1, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  4,  0, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  6,  0, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  5,  0, BGEVENT_READ, TonyHawkHouseSkateboard
	bg_event  7,  6, BGEVENT_READ, TonyHawkHouseTools

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  3,  3, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerSkaterBoyHawk, 0
