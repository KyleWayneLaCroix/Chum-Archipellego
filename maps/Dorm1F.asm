	object_const_def
;	const MAPNAME_OBJECTNAME


Dorm1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

Dorm1FWhiteGirlScript:
	jumptextfaceplayer Dorm1FWhiteGirlText

Dorm1FCoolTrainerMScript:
	jumptextfaceplayer Dorm1FCoolTrainerMText

Dorm1FCoolTrainerFScript:
	jumptextfaceplayer Dorm1FCoolTrainerFText

Dorm1FYoungsterScript:
	jumptextfaceplayer Dorm1FYoungsterText

Dorm1FGuardScript:
	jumptextfaceplayer Dorm1FGuardText

Dorm1FRoomSignScript:
	jumptext Dorm1FSignText

Dorm1FSignText:
	text "DORM LOUNGE"
	done

Dorm1FGuardText:
	text "GUARD: Sorry, but"
	line "I can't let you"
	cont "upstairs without"
	cont "a student ID."

	para "We found someone"
	line "squatting on the"
	cont "roof, so we are"
	cont "upping security."
	done

Dorm1FCoolTrainerFText:
	text "I'm the new RA"
	line "here and it's a"
	cont "huge pain in the"
	cont "ass now that they"
	cont "just have #MON"
	cont "in their rooms."

	para "Apparently they"
	line "don't count as"
	cont "pets because some"
	cont "of them are too"
	cont "smart."

	para "I'm worried one"
	line "of them is going"
	cont "to burn down the"
	cont "entire dorm."
	done

Dorm1FYoungsterText:
	text "There are some"
	line "weird stuff with"
	cont "some single-stage"
	cont "BUG #MON."

	para "Like Scyther has"
	line "two evolutions,"
	cont "but they have the"
	cont "same Base Stats"
	cont "as Scyther."

	para "Then Pinsir and"
	line "Heracross have"
	cont "the same stats"
	cont "as all three."

	para "PINSIR does have"
	line "a MEGA EVOLUTION"
	cont "though."

	para "It's a lot to"
	line "keep track of."

	para "Good thing I only"
	line "use DRAGONs."
	done

Dorm1FCoolTrainerMText:
	text "The school's site"
	line "doesn't work on"
	cont "phones, so I have"
	cont "to use this big"
	cont "computer, it's as"
	cont "big as my desk!"

	para "It's not even a"
	line "touchscreen, and"
	cont "the screen is on"
	cont "this big box."

	para "It's like it's"
	line "from Nov 21, 1999"
	cont "or something."
	done

Dorm1FWhiteGirlText:
	text "I kinda expected"
	line "college to be a"
	cont "bit different."

	para "So far it's more"
	line "like high school,"
	cont "but I can swear."

	para "Fuck."
	done

Dorm1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4, 13, UNIVERCITY, 8
	warp_event  5, 13, UNIVERCITY, 8
	warp_event 11,  0, DORM_2F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 9, 10, BGEVENT_UP, Dorm1FRoomSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  0,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Dorm1FWhiteGirlScript, 0
	object_event  7,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Dorm1FCoolTrainerMScript, 0
	object_event  5,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Dorm1FCoolTrainerFScript, 0
	object_event  3,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Dorm1FYoungsterScript, 0
	object_event 11,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Dorm1FGuardScript, 0