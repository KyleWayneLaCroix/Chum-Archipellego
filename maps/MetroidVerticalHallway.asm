	object_const_def
;	const MAPNAME_OBJECTNAME
	const METROID_VERTICAL_HALLWAY_RIPPER_1
	const METROID_VERTICAL_HALLWAY_RIPPER_2
	const METROID_VERTICAL_HALLWAY_RIPPER_3
	const METROID_VERTICAL_HALLWAY_RIPPER_4
	const METROID_VERTICAL_HALLWAY_ZOOMER_1
	const METROID_VERTICAL_HALLWAY_ZOOMER_2
	const METROID_VERTICAL_HALLWAY_RIPPER_5


MetroidVerticalHallway_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MetroidVerticalHallwayRipper1:
	trainer SKIER, ROXANNE, EVENT_BEAT_SKIER_ROXANNE, VertHallRipper1SeenText, VertHallRipper1BeatenText, 0, .Script

.Script:
	opentext
	writetext VertHallRipper1AfterText
	waitbutton
	setflag ENGINE_ZEPHYRBADGE
	readvar VAR_BADGES
	playsound SFX_SAVE
	closetext
	earthquake 80
	waitsfx
	disappear METROID_VERTICAL_HALLWAY_RIPPER_1
	end

MetroidVerticalHallwayRipper2:
	trainer GUITARIST, CLYDE, EVENT_BEAT_GUITARIST_CLYDE, VertHallRipper2SeenText, VertHallRipper2BeatenText, 0, .Script

.Script:
	opentext
	writetext VertHallRipper2AfterText
	waitbutton
	verbosegiveitem PEARL
	playsound SFX_TOXIC
	closetext
	earthquake 10
	waitsfx
	disappear METROID_VERTICAL_HALLWAY_RIPPER_2
	end

MetroidVerticalHallwayRipper3:
	trainer GRUNTM, GRUNTM_1, EVENT_BEAT_ROCKET_GRUNTM_1, VertHallRipper3SeenText, VertHallRipper3BeatenText, 0, .Script

.Script:
	opentext
	writetext VertHallRipper3AfterText
	waitbutton
	playsound SFX_GET_EGG
	closetext
	waitsfx
	disappear METROID_VERTICAL_HALLWAY_RIPPER_3
	end

MetroidVerticalHallwayRipper4:
	trainer KEYBLADER, OAK, EVENT_BEAT_KEYBLADER_OAK, VertHallRipper4SeenText, VertHallRipper4BeatenText, 0, .Script

.Script:
	opentext
	writetext VertHallRipper4AfterText
	waitbutton
	closetext
	disappear METROID_VERTICAL_HALLWAY_RIPPER_4
	end

MetroidVerticalHallwayDummy:
	end

VertHallRipper1SeenText:
	text "THE LAST METROID"
	line "DISLIKES SMOKE."
	done

VertHallRipper1BeatenText:
	text "You've earned the" 
	line "BOULDER BADGE."
	done

VertHallRipper1AfterText:
	text "MOM: Would you"
	line "like me to save"
	cont "your money?"
	done

VertHallRipper2SeenText:
	text "JUSTIN BAILEY"
	done

VertHallRipper2BeatenText:
	text "SOMEBODY'S POISON"
	line "SUPER EFFECTIVE"
	done

VertHallRipper2AfterText:
	text "jjkalsdkjkfdjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj"
	line "################"
	done

VertHallRipper3SeenText:
	text "Through the dark-"
	line "-ness of future"

	para "past, the magici-"
	line "-an longs to see,"

	para "one chant out"
	line "between 2 worlds,"

	para "fire walk with me"
	done

VertHallRipper3BeatenText:
	text "Think of me as"
	line "a friend."
	done

VertHallRipper3AfterText:
	text "I am the evolut-"
	line "-ion of the arm."
	done

VertHallRipper4SeenText:
	text "I love shirts,"
	line "they're so comfy"

	para "and easy to wear."
	done

VertHallRipper4BeatenText:
	text "I AM ERROL"
	done

VertHallRipper4AfterText:
	text "       bye d   k."
	done

MetroidVerticalHallway_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 0,  27, METROID_HALLWAY, 2
	warp_event 13, 11, METROID_END, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  8, 27, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 1, -1, -1, 0, OBJECTTYPE_TRAINER, 5, MetroidVerticalHallwayRipper1, 0
	object_event  3, 22, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, MetroidVerticalHallwayRipper2, 0
	object_event  4, 13, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 5, MetroidVerticalHallwayRipper3, 0
	object_event  9, 19, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 5, MetroidVerticalHallwayRipper4, 0
	object_event  2, 13, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidVerticalHallwayDummy, 0
	object_event  6, 32, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidVerticalHallwayDummy, 0
	object_event  5,  9, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidVerticalHallwayDummy, 0
