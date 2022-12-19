	object_const_def
;	const MAPNAME_OBJECTNAME
	const METROID_CYBERSPACE_EXIT_SCIENTIST

MetroidCyberspaceExit_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script MetroidCyberspaceExitJustArrived, SCENE_METROID_CYBERSPACE_EXIT_FIRST
	scene_script MetroidCyberspaceExitNoop1Scene, SCENE_METROID_CYBERSPACE_EXIT_ARRIVED

	def_callbacks
;	callback type, script
MetroidCyberspaceExitJustArrived:
	sdefer MetroidCyberspaceExitArrivalScript

MetroidCyberspaceExitNoop1Scene:
	end

MetroidCyberspaceExitArrivalScript:
	applymovement PLAYER, MetroidExitWalkForwardMovement
	showemote EMOTE_SHOCK, METROID_CYBERSPACE_EXIT_SCIENTIST, 15
	applymovement METROID_CYBERSPACE_EXIT_SCIENTIST, MetroidExitScientistToPlayerMovement
	opentext
	writetext MetroidExit_ScientistText
	waitbutton
	closetext
	applymovement METROID_CYBERSPACE_EXIT_SCIENTIST, MetroidExitScientistToComputerMovement
	turnobject METROID_CYBERSPACE_EXIT_SCIENTIST, UP
	playsound SFX_GLASS_TING
	pause 30
	opentext
	writetext MetroidExit_ScientistComputerText
	waitbutton
	applymovement METROID_CYBERSPACE_EXIT_SCIENTIST, MetroidExitScientistToPlayerMovement
	verbosegiveitem EXP_SHARE, 5
	waitbutton 
	writetext MetroidExit_ScientistGaveItemText
	waitbutton
	applymovement METROID_CYBERSPACE_EXIT_SCIENTIST, MetroidExitScientistToComputerMovement
	writetext MetroidExit_ScientistAfterText
	waitbutton
	setscene SCENE_METROID_CYBERSPACE_EXIT_ARRIVED
	closetext
	end

MetroidExitScientist:
	jumptextfaceplayer MetroidExit_ScientistAfterText

MetroidExitComputerScript:
	jumptext MetroidExit_ComputerText

MetroidExitLabWarpScript:
	jumptext MetroidExit_LabWarpText

MetroidExitMetroidWarpScript:
	jumptext MetroidExit_MetroidWarpText

MetroidExitWalkForwardMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step DOWN
	step_end

MetroidExitScientistToPlayerMovement:
	step RIGHT
	step RIGHT
	step UP
	step_end

MetroidExitScientistToComputerMovement:
	step DOWN
	step LEFT
	step LEFT
	step_end

MetroidExit_LabWarpText:
	text "DIRECT CEMETARY"
	line "LAB ACCESS."

MetroidExit_MetroidWarpText:
	text "CYBERSPACE"
	line "ACCESS."

MetroidExit_ComputerText:
	text "A game of spider"
	line "solitaire is in"
	cont "progress."

	para "He's doing pretty"
	line "good considering"
	cont "he's playing with"
	cont "all four suits."
	done

MetroidExit_ScientistAfterText:
	text "This computer"
	line "isn't connected"
	cont "to that machine."

	para "I just use it to"
	line "surf the net."
	done

MetroidExit_ScientistGaveItemText:
	text "Those will let"
	line "you train several"
	cont "#MON at once!"
	done

MetroidExit_ScientistComputerText:
	text "Ah, here it is."
	line "Ahem."

	para "Congrats, you've"
	line "traversed"

	para "CYBERSPACE"

	para "By not being dead"
	line "you've proved"
	cont "this possible!"

	para "Anyway, welcome"
	line "to PAL ATOLL."

	para "If you need to"
	line "return to the"
	
	para "CEMETARY LAB, you"
	line "can use the mach-"
	cont "-ine labeled LAB"
	cont "on the right to"
	cont "instantly arrive."

	para "If you feel like"
	line "taking the scenic"
	cont "route back, use"
	cont "the machine with"
	cont "WEB on it."

	para "In recognition of"
	line "your accomplish-"
	cont "-ments, I present"
	cont "you with this:"
	done

MetroidExit_ScientistText:
	text "HOLY FUCK"

	para "uh, sorry."

	para "Honestly when I"
	line "took this job. I"

	para "figured this was"
	line "was one of those"
	cont "the experiment is"
	cont "me situations."

	para "Didn't think that"
	line "someone would"
	cont "walk out of that."

	para "Uhhhhhhh....."
	
	para "let me check the"
	line "instructions."

	para "Can't remember"
	line "what I was sup-"
	cont "-posed to say."
	done
MetroidCyberspaceExit_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  2,  3, METROID_END, 2
	warp_event  6,  3, CEMETARY_LAB, 3
	warp_event  5,  9, UNIVERCITY, 1
	warp_event  4,  9, UNIVERCITY, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 3, 6, BGEVENT_UP, MetroidExitComputerScript
	bg_event  7,  3, BGEVENT_UP, MetroidExitLabWarpScript
	bg_event  3,  3, BGEVENT_UP, MetroidExitMetroidWarpScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 2, 7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidExitScientist, 0
