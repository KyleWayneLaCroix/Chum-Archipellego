	object_const_def
;	const MAPNAME_OBJECTNAME
	const CEMETARY_LAB_KYLE
	const CEMETARY_LAB_HEALER

CemetaryLab_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script CemetaryLabNoop1Scene, SCENE_CEMETARY_LAB_INTRO
	scene_script CemetaryLabNoop2Scene, SCENE_CEMETARY_LAB_METROID

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_OBJECTS, CemetaryLabKyleCallback
	callback MAPCALLBACK_TILES, CemetaryLabTheMachineCallback

CemetaryLabNoop1Scene:
	end

CemetaryLabNoop2Scene:
	end

CemetaryLabKyleCallback:
	checkscene
	ifequal SCENE_CEMETARY_LAB_METROID, .MoveKyleMetroid
	endcallback
.MoveKyleMetroid:
	moveobject CEMETARY_LAB_KYLE, 13, 9
	turnobject CEMETARY_LAB_KYLE, RIGHT
	endcallback

CemetaryLabTheMachineCallback:
	checkscene
	ifequal SCENE_CEMETARY_LAB_METROID, .MetroidTiles
	endcallback
.MetroidTiles:
	changeblock 8, 2, $18 ; red wires
	endcallback

CemetaryLabBrownComputer:
	jumptext CemetaryLabComputerText
CemetaryLabBlueComputer:
	jumptext CemetaryLabComputerText
CemetaryLabGreenComputer:
	jumptext CemetaryLabComputerText
CemetaryLabRedComputer:
	jumptext CemetaryLabComputerText

CemetaryLabMetroidWarpScript:
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	waitsfx
	warpfacing DOWN, METROID_INTRO, 34, 9
	end

CemetaryLabKyleScript:
	jumptextfaceplayer CemetaryLabKyleMetroidCyberspaceText

CemetaryLabHealerScript:
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext CemetaryLabHealerText
	promptbutton
	closetext
	end

CemetaryLabFirstVisitScriptRight:
	applymovement CEMETARY_LAB_KYLE, CemetaryLabWalkToPlayerMovementStepLeft
CemetaryLabFirstVisitScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement CEMETARY_LAB_KYLE, CemetaryLabWalkToPlayerMovement
	opentext
	writetext CemetaryLabKyleIntroText
	waitbutton
	closetext
	playmusic MUSIC_BICYCLE
	turnobject CEMETARY_LAB_KYLE, LEFT
	follow CEMETARY_LAB_KYLE, PLAYER
	applymovement CEMETARY_LAB_KYLE, CemetaryLabKyleWalktoTableMovement
	stopfollow
	pause 5
	special RestartMapMusic
	opentext
.MustSayYes
	writetext CemetaryLabKyleTestText
	yesorno
	iftrue .DoTest
	writetext CemetaryLabKyleRefusedText
	waitbutton
	sjump .MustSayYes
.DoTest
	showemote EMOTE_SHOCK, PLAYER, 5
	writetext CemetaryLabBloodDrawn
	waitbutton
	closetext
	applymovement CEMETARY_LAB_KYLE, CemetaryLabKyleWalktoComputerMovement
	turnobject PLAYER, UP
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	playsound SFX_POWDER
	waitsfx
	turnobject CEMETARY_LAB_KYLE, DOWN
	opentext
	writetext CemetaryLabTestComplete
	waitbutton
	closetext
	applymovement CEMETARY_LAB_KYLE, CemetaryLabTestDoneMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext CemetaryLabExpositionText
	waitbutton
	closetext
	playmusic MUSIC_BICYCLE
	turnobject CEMETARY_LAB_KYLE, RIGHT
	follow CEMETARY_LAB_KYLE, PLAYER
	applymovement CEMETARY_LAB_KYLE, CemetaryLabKyleWalktoTheMachine
	stopfollow
	pause 5
	applymovement PLAYER, CemetaryLabPlayerWalkToTheMachine
	pause 5
	special RestartMapMusic
	turnobject CEMETARY_LAB_KYLE, UP
	opentext
	writetext CemetaryLabTheMachineExpositionText
	waitbutton
	closetext
	playmusic MUSIC_BICYCLE
	follow CEMETARY_LAB_KYLE, PLAYER
	applymovement CEMETARY_LAB_KYLE, CemetaryLabKyleWalkToTheRedComputer
	stopfollow
	pause 10
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_CHOOSE_PC_OPTION
	waitsfx
	playsound SFX_WARP_TO
	waitsfx
	playsound SFX_WARP_FROM
	waitsfx
	turnobject CEMETARY_LAB_KYLE, LEFT
	opentext
	changeblock 8, 2, $18 ; red wires
	reloadmappart
	writetext CemetaryLabTurnOnRedComputerText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext CemetaryLabKyleGivePDAText
	promptbutton
	verbosegiveitem PDA
	waitbutton
	writetext CemetaryLabKyleMetroidCyberspaceText
	waitbutton
	closetext
	turnobject CEMETARY_LAB_KYLE, RIGHT
	setscene SCENE_CEMETARY_LAB_METROID
	setflag ENGINE_UNLOCKED_UNOWNS_A_TO_K
	setflag ENGINE_UNLOCKED_UNOWNS_L_TO_R
	setflag ENGINE_UNLOCKED_UNOWNS_S_TO_W
	setflag ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	reloadmappart
	end


CemetaryLabKyleWalkToTheRedComputer:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

CemetaryLabPlayerWalkToTheMachine:
	step RIGHT
	step UP
	step_end

CemetaryLabKyleWalktoTheMachine:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head DOWN
	step_end

CemetaryLabTestDoneMovement:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head LEFT
	step_end

CemetaryLabKyleWalktoComputerMovement:
	step LEFT
	step UP
	step UP
	step UP
	step RIGHT
	step UP
	step_end

CemetaryLabKyleWalktoTableMovement:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end

CemetaryLabWalkToPlayerMovementStepLeft:
	step LEFT
	step_end

CemetaryLabWalkToPlayerMovement:
	step DOWN
	step DOWN
	step DOWN
	step_end

CemetaryLabKyleIntroText:
	text "KYLE: Oh good,"
	line "you made it."

	para "Welcome to the"
	line "lab!"

	para "I'm sure you have"
	line "questions, but we"

	para "gotta run a few"
	line "tests first."

	para "Follow me."
	done

CemetaryLabKyleTestText:
	text "Now, I do need to"
	line "draw some blood"
	cont "to do some tests."

	para "Is that okay?"
	done

CemetaryLabKyleRefusedText:
	text "You're trapped in"
	line "an event script,"
	cont "you have to do it."

	para "This isn't"
	line "UNDERTALE."
	done

CemetaryLabBloodDrawn:
	text "Thank you, one"
	line "sec."
	done 

CemetaryLabTestComplete:
	text "Great, looks like"
	line "you have enough"
	cont "B-CELLs to travel"
	cont "CYBERSPACE."
	done

CemetaryLabExpositionText:
	text "So BRO ISLAND is"
	line "literally falling"
	cont "apart."

	para "It's very hard to"
	line "get around, and"

	para "the whole thing"
	line "could crash any"
	cont "day now."

	para "I've been patch-"
	line "-ing as many as I"
	cont "can, but there're"
	cont "too many."

	para "There are certain"
	line "objects and areas"
	cont "of high glitches."

	para "I need you to go"
	line "to these places"
	cont "and bring these"
	cont "objects back so I"
	cont "can patch them."

	para "Once enough are"
	line "stable I can open"

	para "a path to the"
	line "original BRO"
	cont "ISLAND."

	para "For now, I have"
	line "managed to open a"

	para "CYBERSPACE link"
	line "to ATOLL"

	para "Find my brother,"
	line "RYAN there."

	para "He's in the"
	line "MONHUNGLE and can"

	para "direct you to a"
	line "TERU-SAMA glitch"

	para "that was reported"
	line "in that region."

	para "Let me show you"
	line "THE MACHINE."
	done


CemetaryLabTheMachineExpositionText:
	text "This is.."
	line "THE MACHINE."

	para "Your B-CELL count"
	line "means you can use"
	
	para "it to travel in"
	line "CYBERSPACE and"
	
	para "not be corrupted"
	line "by the junk data."

	para "CYBERSPACE is the"
	line "space between the"
	
	para "ROM Banks, where"
	line "some of the other"
	
	para "files on BRIAN's"
	line "hard drive ended"

	para "up after the"
	line "WASHING INCIDENT."

	para "Right now, this"
	line "isn't keyed to"
	cont "any location."

	para "I'm going to turn"
	line "it on and set it"
	cont "to ATOLL"
	done

CemetaryLabGiveTourText:
	text "Let me show you"
	line "THE MACHINE."
	done

CemetaryLabTurnOnRedComputerText:
	text "Alright, it's on."

	para "Step into those"
	line "wires I showed"

	para "you and you're"
	line "in CYBERSPACE."

	para "Let me heal your"
	line "#MON. I also"
	
	para "have a #center"
	line "at the front if"
	cont "you need healing"
	cont "later."
	done

CemetaryLabKyleGivePDAText:
	text "I know this is a"
	line "lot, but if you"

	para "fail, you'll die"
	line "like everyone"
	cont "anyway."

	para "Also, let me give"
	line "you an extra PDA."

	para "This'll let you"
	line "access your PC"
	cont "on the go."
	done

CemetaryLabKyleMetroidCyberspaceText:
	text "Good luck, not"
	line "sure what you'll"

	para "see in CYBERSPACE"
	line "outside of GLITCH"
	cont "#MON."

	para "Once you get"
	line "to ATOLL"

	para "try to find RYAN"
	line "in the MONHUNGLE."

	para "You need to find"
	line "the TERU-SAMA and"
	cont "bring it back."

	para "Good luck, I'll"
	line "be here keeping"
	
	para "CHUM ARCHIPELAGO"
	line "as stable as I"
	cont "can."
	done

CemetaryLabHealerText:
	text "Your #MON"
	line "are healed."

	para "Good day."
	done

CemetaryLabComputerText:
	text "This computer has"
	line "an interface you"
	cont "don't recognize."
	done

CemetaryLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  8, 23, CEMETARY, 1
	warp_event  9, 23, CEMETARY, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event  9, 22, SCENE_CEMETARY_LAB_INTRO, CemetaryLabFirstVisitScriptRight
	coord_event  8, 22, SCENE_CEMETARY_LAB_INTRO, CemetaryLabFirstVisitScript
	coord_event  9,  2, SCENE_CEMETARY_LAB_METROID, CemetaryLabMetroidWarpScript
	coord_event  9,  3, SCENE_CEMETARY_LAB_METROID, CemetaryLabMetroidWarpScript
	coord_event  8,  2, SCENE_CEMETARY_LAB_METROID, CemetaryLabMetroidWarpScript
	coord_event  8,  3, SCENE_CEMETARY_LAB_METROID, CemetaryLabMetroidWarpScript

	def_bg_events
;	bg_event x, y, type, script
	bg_event  3,  9, BGEVENT_RIGHT, CemetaryLabBrownComputer
	bg_event  3, 13, BGEVENT_RIGHT, CemetaryLabBlueComputer
	bg_event 14,  9, BGEVENT_LEFT, CemetaryLabRedComputer
	bg_event 14, 13, BGEVENT_LEFT, CemetaryLabGreenComputer

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  8, 18, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CemetaryLabKyleScript, -1
	object_event 14, 18, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, CemetaryLabHealerScript, -1
