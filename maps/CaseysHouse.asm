	object_const_def
;	const MAPNAME_OBJECTNAME


CaseysHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

CaseysHouseWorkshopCabinet:
CaseysHouseBookshelf:
	jumptext CaseysHouseBookshelfText


CaseysHouseBookshelfText:
	text "You had no idea"
	line "there were so"
	cont "many TEENAGE"
	cont "MUTANT NINJA"
	cont "TURTLES movie"
	cont "novelizations!"
	done

CaseysHouseCasey:
	faceplayer
	opentext
	writetext CaseysHouseCaseyIntro
	yesorno
	iffalse .Refused
	writetext CaseysHouseCaseySeen
	waitbutton
	closetext
	winlosstext CaseysHouseCaseyBeatenText, 0
	loadtrainer CASEY, CASEY_2
	startbattle
	reloadmapafterbattle
	opentext
	writetext CaseysHouseCaseyAfterText
	waitbutton
	closetext
	end
.Refused
	writetext CaseysHouseCaseyRefused
	waitbutton
.End:
	closetext
	end

CaseysHouseCaseyBeatenText:
	text "CASEY: If it were"
	line "a game of chance,"
	cont "maybe I'd have"
	cont "one."
	done

CaseysHouseCaseyAfterText:
	text "CASEY: Damn."

	para "I guess I'll get"
	line "ya next time."
	done

CaseysHouseCaseySeen:
	text "CASEY: You see I"
	line "Figured out this"
	cont "POKEY MON fightin"

	para "It's not a game"
	line "of chance."

	para "It's a game of"
	line "skill."
	done

CaseysHouseCaseyIntro:
	text "CASEY: Yeah buddy!"

	para "You did something"
	line "with that egg!"

	para "I don't know what"
	line "that means or how"
	cont "we got here, but"
	cont "KYLE said he's got"
	cont "it handled."

	para "Oh by the way."

	para "Wanna touch dogs?"
	done

CaseysHouseCaseyRefused:
	text "CASEY: You got it"
	line "bud."

	para "We'll do it next"
	line "time."
	done

CaseysHouseAshley:
	faceplayer
	opentext
	writetext CaseysHouseAshleyIntro
	yesorno
	iffalse .Refused
	writetext CaseysHouseAshleySeen
	waitbutton
	closetext
	winlosstext CaseysHouseAshleyBeatenText, 0
	loadtrainer TEACHER, ASHLEY
	startbattle
	reloadmapafterbattle
	opentext
	writetext CaseysHouseAshleyAfterText
	waitbutton
	closetext
	end
.Refused
	writetext CaseysHouseAshleyRefused
	waitbutton
.End:
	closetext
	end

CaseysHouseAshleySeen:
	text "ASHLEY: Great!"

	para "I may not have my"
	line "full team because"
	cont "someone decided"
	cont "I'm not part of"
	cont "his deep plot,"
	cont "but I bet I can"
	cont "beat you."
	done

CaseysHouseAshleyBeatenText:
	text "ASHLEY: Where's"
	line "my MILOTIC, KYLE?"
	done

CaseysHouseAshleyAfterText:
	text "ASHLEY: Good game"

	para "Come back if you"
	line "want a distraction"
	cont "again."

	para "Things have been"
	line "weird lately and I"
	cont "know I could use"
	cont "one."

	para "Be careful."
	done

CaseysHouseAshleyRefused:
	text "ASHLEY: Let me"
	line "know if you"
	cont "change your mind"
	cont "later."
	done

CaseysHouseAshleyIntro:
	text "ASHLEY: You must"
	line "be the new guy"
	cont "CASEY was talking"
	cont "about."

	para "You know KYLE"
	line "said he was just"
	cont "gonna make us GYM"
	cont "LEADERS & change"
	cont "up the dialog,"
	cont "but this seems"
	cont "like it got a bit"
	cont "off the rails."

	para "I don't even"
	line "have anything to"
	cont "do!"

	para "Since I haven't"
	line "had a chance to"
	cont "yet,"

	para "Wanna have a"
	line "#MON battle?"
	done

CaseysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  2, 17, IVY_ROAD, 1
	warp_event  3, 17, IVY_ROAD, 1
	warp_event 10,  4, IVY_ROAD, 2
	warp_event 10,  5, IVY_ROAD, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 20,  2, BGEVENT_READ, CaseysHouseWorkshopCabinet
	bg_event  4,  9, BGEVENT_READ, CaseysHouseBookshelf
	bg_event  5,  9, BGEVENT_READ, CaseysHouseBookshelf

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag

;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 18,  3, SPRITE_TARIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CaseysHouseCasey, 0
	object_event  6, 13, SPRITE_MARIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CaseysHouseAshley, 0

