	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoRestStop_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_NEWMAP, VolcanoRestStopFlypointCallback


VolcanoRestStopFlypointCallback:
	setflag ENGINE_FLYPOINT_VOLCANO_EXTERIOR
	blackoutmod VOLCANO_EXTERIOR
	endcallback

VolcanoRestStopNurseScript:
	opentext
	writetext VolcanoRestStopNurseText1
	waitbutton
	closetext
	special FadeBlackQuickly
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	waitsfx
	special HealParty
	special FadeInQuickly
	opentext
	reloadmappart
	writetext VolcanoRestStopNurseText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	end

VolcanoRestStopNurseText1:
	text "Hello, I hope you"
	line "are staying safe"
	cont "here on the BRO-"
	cont "-CANO."

	para "Let me heal your"
	line "#MON!"
	done

VolcanoRestStopNurseText2:
	text "Don't fall into"
	line "the lava!"
	done

VolcanoRestStopFairyScript:
	opentext
	cry DITTO
	writetext VolcanoRestStopFairyText
	waitbutton
	closetext
	end

VolcanoRestStopFairyText:
	text "MUSHARNA: shaaaa!"
	done

VolcanoRestStopYoungsterScript:
	jumptextfaceplayer VolcanoRestStopYoungsterText

VolcanoRestStopYoungsterText:
	text "Someone put some"
	line "ladders on the"
	cont "volcano to help"
	cont "get back up."

	para "I didn't touch"
	line "them to let 'em"
	cont "down though."

	para "They're not my"
	line "property, and"
	cont "That'd be wrong."
	done

VolcanoRestStopCoolTrainerFScript:
	jumptextfaceplayer VolcanoRestStopCoolTrainerFText

VolcanoRestStopCoolTrainerFText:
	text "The BROCANO has"
	line "been very odd"
	cont "lately."

	para "Someone saw some"
	line "weird stuff up on"
	cont "the peak."

	para "Some sort of..."
	line "shape."

	para "Since then, no"
	line "one's been able"
	cont "to make it to the"
	cont "top."
	done

VolcanoRestStopGentlemanScript:
 	faceplayer
 	opentext
	pokemart MARTTYPE_SHADY, MART_SHADY_GUY_BROCANO
 	closetext
 	end

VolcanoRestStopHikerScript:
	jumptextfaceplayer VolcanoRestStopHikerText

VolcanoRestStopHikerText:
	text "Usually I'm one"
	line "of the only ones"
	cont "hiking the"
	cont "BROCANO."

	para "For some reason,"
	line "the place is just"
	cont "full of weirdos"
	cont "today!"
	done

VolcanoRestStopCabinet:
	jumptext VolcanoRestStopCabinetText

VolcanoRestStopCabinetText:
	text "It's full of"
	line "POTIONs."

	para "Not even SUPER"
	line "POTIONS, just the"
	cont "regular kind."
	done

VolcanoRestStopFridge:
	jumptext VolcanoRestStopFridgeText

VolcanoRestStopFridgeText:
	text "You immediately"
	line "regret opening"
	cont "the fridge."

	para "It's a good thing"
	line "TRAINERs can't be"
	cont "poisoned."
	done

VolcanoRestStopSink:
	jumptext VolcanoRestStopSinkText

VolcanoRestStopSinkText:
	text "You honestly"
	line "can't tell if"
	cont "this is a sink or"
	cont "an oven."

	para "Or both."
	done

VolcanoRestStop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 4, 9, VOLCANO_EXTERIOR, 13
	warp_event 5, 9, VOLCANO_EXTERIOR, 13

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 8, 5, BGEVENT_READ, VolcanoRestStopCabinet
	bg_event 9, 5, BGEVENT_READ, VolcanoRestStopCabinet
	bg_event 8, 1, BGEVENT_READ, VolcanoRestStopFridge
	bg_event 6, 0, BGEVENT_READ, VolcanoRestStopSink
	bg_event 7, 0, BGEVENT_READ, VolcanoRestStopSink

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  5, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoRestStopNurseScript, 0
	object_event  6,  5, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoRestStopFairyScript, 0
	object_event  0,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoRestStopYoungsterScript, 0
	object_event  3,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoRestStopCoolTrainerFScript, 0
	object_event  9,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, VolcanoRestStopGentlemanScript, 0
	object_event  0,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VolcanoRestStopHikerScript, 0
