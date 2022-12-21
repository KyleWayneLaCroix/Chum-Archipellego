	object_const_def
;	const MAPNAME_OBJECTNAME
	const UNIVERCITY_MART_1F_RECEPTIONIST
	const UNIVERCITY_MART_1F_CLERK
	const UNIVERCITY_MART_1F_CHRIS_WHITTLIN
	const UNIVERCITY_MART_1F_COP
	const UNIVERCITY_MART_1F_WHITTLEN_POKEBALL1
	const UNIVERCITY_MART_1F_WHITTLEN_POKEBALL2
	const UNIVERCITY_MART_1F_WHITTLEN_POKEBALL3
	const UNIVERCITY_MART_1F_WHITTLEN_POKEBALL4
	const UNIVERCITY_MART_1F_MORTY
	const UNIVERCITY_MART_1F_POKEFANF

UnivercityMart1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script UnivercityMart1FTheft, SCENE_UNIVERCITY_MART_1F_THEFT
	scene_script UnivercityMart1FNoop1Scene, SCENE_UNIVERCITY_MART_1F_NORMAL
	
	def_callbacks
;	callback type, script

DummyItemScript:
UnivercityMart1FNoop1Scene:
UnivercityMartThiefScript:
UnivercityMartCopScript:
	end

UnivercityMart1FTheft:
	disappear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL1
	disappear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL2
	disappear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL3
	disappear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL4
	refreshscreen
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext WhittlenIntroText
	waitbutton
	closetext
	follow UNIVERCITY_MART_1F_COP, UNIVERCITY_MART_1F_CHRIS_WHITTLIN
	applymovement UNIVERCITY_MART_1F_COP, CopTowardsDoorMovement
	turnobject UNIVERCITY_MART_1F_COP, UP
	applymovement PLAYER, TheftOutOfWayPlayerMovement
	turnobject PLAYER, LEFT
	opentext
	writetext WhittlenWhineText
	closetext
	appear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL1, 6, 5
	appear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL2, 8, 5
	appear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL3, 7, 4
	appear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL4, 6, 4
	refreshscreen
	pause 20
	turnobject UNIVERCITY_MART_1F_CHRIS_WHITTLIN, LEFT
	pause 25
	turnobject UNIVERCITY_MART_1F_CHRIS_WHITTLIN, RIGHT
	pause 25
	turnobject UNIVERCITY_MART_1F_CHRIS_WHITTLIN, UP
	pause 25
	turnobject UNIVERCITY_MART_1F_CHRIS_WHITTLIN, DOWN
	pause 25
	showemote EMOTE_QUESTION, UNIVERCITY_MART_1F_CHRIS_WHITTLIN, 30
	opentext
	writetext WhittlenLieText
	waitbutton
	closetext
	stopfollow
	applymovement UNIVERCITY_MART_1F_COP, UnivercityMartStepLeft
	turnobject UNIVERCITY_MART_1F_COP, UP
	disappear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL1
	applymovement UNIVERCITY_MART_1F_COP, UnivercityMartCopItem2Movement
	turnobject UNIVERCITY_MART_1F_COP, RIGHT
	disappear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL2
	applymovement UNIVERCITY_MART_1F_COP, UnivercityMartStepRight
	disappear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL4
	applymovement UNIVERCITY_MART_1F_COP, UnivercityMartStepRight
	turnobject UNIVERCITY_MART_1F_COP, DOWN
	disappear UNIVERCITY_MART_1F_WHITTLEN_POKEBALL3
	applymovement UNIVERCITY_MART_1F_COP, UnivercityMartCopDoneMovement
	turnobject UNIVERCITY_MART_1F_COP, UP
	opentext 
	writetext WhittlenCopDragText
	waitbutton
	closetext
	follow UNIVERCITY_MART_1F_COP, UNIVERCITY_MART_1F_CHRIS_WHITTLIN
	applymovement UNIVERCITY_MART_1F_COP, UnivercityMartStepDown
	stopfollow
	disappear UNIVERCITY_MART_1F_COP
	applymovement UNIVERCITY_MART_1F_CHRIS_WHITTLIN, UnivercityMartStepDown
	disappear UNIVERCITY_MART_1F_CHRIS_WHITTLIN
	setscene SCENE_UNIVERCITY_MART_1F_NORMAL
	setevent EVENT_SEEN_WHITTLIN_THEFT
	end

UnivercityBallMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_BALLS
	closetext
	end

UnivercityOverworldMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_OVERWORLD
	closetext
	end

UnivercityMart1FElevatorScript:
	jumptext UnivercityMart1FElevatorText

UnivercityMart1FSignScript:
	jumptext UnivercityMart1FSignText

UnivercityMart1FMortyScript:
	jumptextfaceplayer UnivercityMart1FMortyText

UnivercityMart1FPokefanFScript:
	jumptextfaceplayer UnivercityMart1FPokefanFText

UnivercityMart1FPokefanFText:
	text "You know,"

	para "we really are"

	para "living in a"
	line "material world."

	para "And I'm"

	para "a material girl"
	done

UnivercityMart1FMortyText:
	text "Man, did you see"
	line "that guy try to"

	para "steal some #-"
	line "BALLS?"

	para "He tripped while"
	line "running around"
	cont "the basement."

	para "Dumbass."
	done

WhittlenIntroText:
	text "CHRIS WHITTLEN:"
	line "Hands off! I'm"
	cont "innocent!"

	para "COP: Sir, you"
	line "were caught on"
	
	para "video and seen"
	line "running into the"
	cont "basement with an"
	cont "armful of balls."
	done

WhittlenWhineText:
	text "WHITTLEN: It's"
	line "not fair!"

	para "I didn't take a"
	line "thing. I paid for"
	cont "those #BALLS!"

	para "Not that this is"
	line "an admission that"
	cont "I had anything on"
	cont "my person."

	para "COP: Sir, just"
	line "come along, stop"
	cont "going limp, don't"
	cont "trip and-"
	done

WhittlenLieText:
	text "WHITTLEN: Wow."

	para "Where did those"
	line "come from?"

	para "How bizarre."
	done

WhittlenCopDragText:
	text "COP: Just come"
	line "with me."
	done

UnivercityMart1FElevatorText:
	text "OUT OF ORDER"
	done

UnivercityMart1FSignText:
	text "  DIRECTORY - 1F "
	line "Balls & Overworld"
	done

TheftOutOfWayPlayerMovement:
	step RIGHT
	step_end

CopTowardsDoorMovement:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end

UnivercityMartStepDown:
	step DOWN
	step_end

UnivercityMartStepLeft:
	step LEFT
	step_end

UnivercityMartCopItem2Movement:
	step UP
	step UP
	step_end

UnivercityMartStepRight:
	step RIGHT
	step_end

UnivercityMartCopDoneMovement:
	step DOWN
	step DOWN
	step LEFT
	step_end

UnivercityMart1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 13,  0, UNIVERCITY_MART_2F, 1
	warp_event  2,  0, UNIVERCITY_MART_B1F, 1
	warp_event  7,  7, UNIVERCITY, 3
	warp_event  8,  7, UNIVERCITY, 3

	def_coord_events
;	coord_event x, y, scene_id, script


	def_bg_events
;	bg_event x, y, type, script
	bg_event 0, 0, BGEVENT_READ, UnivercityMart1FElevatorScript
	bg_event 12,  0, BGEVENT_READ, UnivercityMart1FSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityBallMartScript, 0
	object_event  9,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityOverworldMartScript, 0
	object_event  4,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMartThiefScript, EVENT_SEEN_WHITTLIN_THEFT
	object_event  5,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMartCopScript, EVENT_SEEN_WHITTLIN_THEFT
	object_event  6,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyItemScript, EVENT_SEEN_WHITTLIN_THEFT
	object_event  7,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyItemScript, EVENT_SEEN_WHITTLIN_THEFT
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyItemScript, EVENT_SEEN_WHITTLIN_THEFT
	object_event  8,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DummyItemScript, EVENT_SEEN_WHITTLIN_THEFT
	object_event  2,  2, SPRITE_MORTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, UnivercityMart1FMortyScript, 0
	object_event 15,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnivercityMart1FPokefanFScript, 0