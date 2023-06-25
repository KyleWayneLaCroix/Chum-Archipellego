	object_const_def
;	const MAPNAME_OBJECTNAME


IvyRoad_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_NEWMAP, IvyRoadFlypointCallback

IvyRoadFlypointCallback:
	setflag ENGINE_FLYPOINT_IVY_ROAD
	blackoutmod IVY_ROAD
	endcallback

CaseysMailbox:
	jumptext CaseysMailboxText

BriansMailbox:
	jumptext BriansMailboxText

KylesMailbox:
	jumptext KylesMailboxText

SamsMailbox:
	jumptext SamsMailboxText

CaseysPoolControls:
	jumptext CaseysPoolControlsText

IvyRoadDD:
	jumptext IvyRoadDDText

CaseysPoolControlsText:
	text "You would fuck"
	line "with the controls"
	cont "for CASEY's pool"
	cont "to prank him, but"
	cont "they don't seem"
	cont "to do anything."
	done

IvyRoadDDText:
	text "D.D.: Bark!"
	done

CaseysMailboxText:
	text "5333 IVY ROAD"
	line "HILDER HOUSE"
	done

BriansMailboxText:
	text "5335 IVY ROAD"
	line "WILSON HOUSE"
	done


KylesMailboxText:
	text "5337 IVY ROAD"
	line "LACROIX HOUSE"
	done

SamsMailboxText:
	text "5339 IVY ROAD"
	line "BROWN HOUSE"
	done

IvyRoadPoppy:
	opentext
	writetext IvyRoadPoppyBark
	waitbutton
	checkitem STICK
	iffalse .End
	writetext PoppyWantsStick
	yesorno
	iffalse .End
	takeitem STICK
	writetext PoppyTakesStick
	waitbutton
	givepoke POPPY, 32
	setevent EVENT_GOT_POPPY
.End:
	closetext
	end

IvyRoadDaisy:
	opentext
	writetext IvyRoadDaisyBark
	waitbutton
	checkitem LEFTOVERS
	iffalse .End
	writetext DaisyWantsLeftovers
	yesorno
	iffalse .End
	takeitem LEFTOVERS
	writetext DaisyTakesLeftovers
	waitbutton
	givepoke DAISY, 32
	setevent EVENT_GOT_DAISY
.End:
	closetext
	end

DaisyWantsLeftovers:
	text "DAISY is sniffing"
	line "around your pack."

	para "She's trying to"
	line "steal your"
	cont "LEFTOVERS."

	para "Let her?"
	done

DaisyTakesLeftovers:
	text "DAISY gobbles up"
	line "your LEFTOVERS!"

	para "She seems happy"
	line "and begins to"
	cont "follow you!"
	done

PoppyTakesStick:
	text "POPPY takes your"
	line "stick, wagging"
	cont "happily."

	para "She seems to be"
	line "following you"
	cont "now."
	done

PoppyWantsStick:
	text "POPPY is sniffing"
	line "around your pack."

	para "She seems to want"
	line "to steal the"
	cont "STICK you have in"
	cont "there."

	para "Give it to her?"
	done

IvyRoadPoppyBark:
	text "POPPY: Arf!"
	done

IvyRoadDaisyBark:
	text "DAISY: Woof!"
	done

BrianHouseWarning:
	opentext
	writetext BrianHouseWarningText
	waitbutton
	closetext
	end

BrianHouseWarningText:
	text "You get the sense"
	line "that if you enter"
	cont "this house, you"
	cont "may not be able"
	cont "to come back for"
	cont "a while..."
	done

IvyRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9, 15, CASEYS_HOUSE, 1
	warp_event  9, 11, CASEYS_HOUSE, 3
	warp_event 25, 15, BRIANS_HOUSE, 1
	warp_event 24, 11, BRIANS_HOUSE, 3
	warp_event 25, 11, BRIANS_HOUSE, 3
	warp_event 41, 15, KYLES_HOUSE, 1
	warp_event 41, 13, KYLES_HOUSE, 4
	warp_event 57, 15, SAMS_HOUSE, 1
	warp_event 58, 11, SAMS_HOUSE, 3
	warp_event 59, 11, SAMS_HOUSE, 3
	warp_event 38,  5, BAD_EGG_EXTERIOR, 2
	;warp_event 27, 10, BRIANS_SHED, 1
	;warp_event 43,  6, KYLES_SHED, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 25, 16, -1, BrianHouseWarning
	coord_event 25, 11, -1, BrianHouseWarning
	coord_event 24, 11, -1, BrianHouseWarning

	def_bg_events
;	bg_event x, y, type, script
	bg_event  4,  9, BGEVENT_READ, CaseysPoolControls
	bg_event 11, 19, BGEVENT_READ, CaseysMailbox
	bg_event 27, 19, BGEVENT_READ, BriansMailbox
	bg_event 43, 19, BGEVENT_READ, KylesMailbox
	bg_event 59, 19, BGEVENT_READ, SamsMailbox

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 41,  8, SPRITE_DOG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT,0, IvyRoadDD, 0
	object_event 13,  9, SPRITE_DOG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT,0, IvyRoadPoppy, EVENT_GOT_POPPY
	object_event  4,  3, SPRITE_FOX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT,0, IvyRoadDaisy, 0
