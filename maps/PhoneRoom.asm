	object_const_def
;	const MAPNAME_OBJECTNAME


PhoneRoom_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

PhoneRoomPhoneScript:
	opentext
	checkevent EVENT_LA_PHONE_1
	iffalse .First
	checkitem CHAINSAW
	iffalse .Chainsaw
	checkitem BOMBS
	iffalse .Bombs
	checkitem DUNGEON_KEY
	iffalse .Shrine
	checkitem HM_SURF
	iffalse .Dungeon
	writetext PhoneRoomNoAnswer
	waitbutton
	closetext
	end
.Dungeon:
	writetext PhoneRoomGetSurf
	waitbutton
	closetext
	end
.Shrine:
	writetext PhoneRoomGetDungeonKey
	waitbutton
	closetext
	end
.DungeonKey:
	writetext PhoneRoomGetDungeonKey
	waitbutton
	closetext
	end
.Bombs:
	writetext PhoneRoomGetBombs
	waitbutton
	closetext
	end
.Chainsaw:
	writetext PhoneRoomPhoneText2
	waitbutton
	closetext
	end
.First:
	writetext PhoneRoomPhoneText1
	waitbutton
	closetext
	setevent EVENT_LA_PHONE_1
	warp BAD_EGG_EXTERIOR, 14, 10
	end

PhoneRoomPhoneText1:
	text "KYLE: Oh good,"
	line "you found the"
	cont "phone."

	para "I knew I should"
	line "have kept the"
	cont "cell phone in the"
	cont "game."

	para "You've been gone"
	line "for a few weeks"
	cont "now, glad you're"
	cont "not deleted or"
	cont "anything."

	para "Anyway, uh..."

	para "It looks like you"
	line "ended up in a"
	cont "different ROM."

	para "Seems somewhat"
	line "fused with the"
	cont "original BRO"
	cont "ISLAND."

	para "Weird stuff is"
	line "happening there."

	done


PhoneRoomPhoneText2:
	text "You're going to"
	line "need to get your"
	cont "CHAINSAW back to"
	cont "continue on your"
	cont "quest."

	para "Go check out the"
	line "BEACH that MARIN"
	cont "found you on."
	done

PhoneRoomGetBombs:
	text "You're going to"
	line "need to get some"
	cont "EXPLOSIVES to"
	cont "continue on your"
	cont "quest."

	para "Go north to the"
	line "MISPLACED WOODS"
	cont "and ask CASEY to"
	cont "borrow some bombs"
	done

PhoneRoomGetDungeonKey:
	text "You're going to"
	line "need to get into"
	cont "the DUNGEON on"
	cont "the beach to"
	cont "continue on your"
	cont "quest."

	para "There's a shrine"
	line "on the north side"
	cont "of town that has"
	cont "the key inside."
	done

PhoneRoomGetSurf:
	text "You're going to"
	line "need to be able"
	cont "to swim to reach"
	cont "the BAD EGG."

	para "It is inside the"
	cont "AWAKENING DUNGEON"
	cont "on the beach."
	done

PhoneRoomGoToBadEgg:
	text "You must go to"
	line "the BAD EGG."

	para "The northern"
	line "cave to the east"
	cont "of town is the"
	cont "path you seek."
	done

PhoneRoomNoAnswer:
	text "..."

	para "..."

	para "No one picks up."
	done

PhoneRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MAYBE_VILLAGE, 6

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 6, 6, BGEVENT_READ, PhoneRoomPhoneScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
