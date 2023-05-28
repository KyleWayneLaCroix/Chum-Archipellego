	object_const_def
;	const MAPNAME_OBJECTNAME


QuadrupletsHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

QuadrupletsDadScript:
	jumptextfaceplayer QuadrupletsDadText

QuadrupletsDadText:
	text "I've already got"
	line "four boys!"

	para "Now my wife is"
	line "pregnant again?"

	para "What's next?"

	para "Four girls?!?!"
	done

QuadrupletsMomScript:
	jumptextfaceplayer QuadrupletsMomText

QuadrupletsMomText:
	text "Because they all"
	line "look alike, even"
	cont "I get them mixed"
	cont "up..."

	para "By the way, do"
	line "you know YOSHI?"

	para "One of my boys"
	line "keeps asking for"
	cont "one and I don't"
	cont "know what to do"
	cont "about it!"
	done

QuadrupletsYoungster1Script:
	jumptextfaceplayer QuadrupletsYoungster1Text

QuadrupletsYoungster2Script:
	jumptextfaceplayer QuadrupletsYoungster2Text

QuadrupletsYoungster3Script:
	jumptextfaceplayer QuadrupletsYoungster3Text

QuadrupletsYoungster4Script:
	jumptextfaceplayer QuadrupletsYoungster4Text

QuadrupletsYoungster1Text:
	text "HI!"

	para "Are you from the"
	line "animal village?"

	para "I've never seen"
	line "you before."
	done

QuadrupletsYoungster2Text:
	text "My mom said I"
	line "was being a"
	cont "pain in the ass."

	para "But I wasn't even"
	line "near her butt!"
	done


QuadrupletsYoungster3Text:
	text "Dad tried to make"
	line "us all go to bed"
	cont "the other day, so"
	cont "we all ran off in"
	cont "different"
	cont "directions."

	para "He just sat down"
	line "and started to"
	cont "cry."
	done

QuadrupletsYoungster4Text:
	text "Hi."

	para ".."

	para "      .."

	para "   .."

	para "My name is TARL."

	para "         .."

	para "  .."

	para "Bye."
	done


QuadrupletsHouseHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_QUADRUPLETS_HOUSE_HIDDEN_FULL_RESTORE

QuadrupletsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MAYBE_VILLAGE, 9
	warp_event 13,  8, MAYBE_VILLAGE, 10

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 6, 3, BGEVENT_ITEM, QuadrupletsHouseHiddenFullRestore

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  6,  6, SPRITE_LA_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, QuadrupletsDadScript, 0
	object_event 16,  6, SPRITE_LA_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, QuadrupletsMomScript, 0
	object_event  8,  4, SPRITE_LA_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, QuadrupletsYoungster1Script, 0
	object_event 10,  3, SPRITE_LA_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, QuadrupletsYoungster2Script, 0
	object_event 13,  4, SPRITE_LA_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, QuadrupletsYoungster3Script, 0
	object_event  9,  7, SPRITE_LA_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, QuadrupletsYoungster4Script, 0
