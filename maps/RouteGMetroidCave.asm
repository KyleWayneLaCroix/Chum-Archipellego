	object_const_def
;	const MAPNAME_OBJECTNAME
	const ROUTE_G_METROID_CAVE_SKREE
	const ROUTE_G_METROID_CAVE_RIPPER
	const ROUTE_G_METROID_CAVE_ZOOMER_1
	const ROUTE_G_METROID_CAVE_ZOOMER_2
	const ROUTE_G_METROID_CAVE_ENERGY_TANK
	const ROUTE_G_METROID_CAVE_MORPH_BALL

RouteGMetroidCave_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

RouteGMetroidCaveFullRestore:
	itemball FULL_RESTORE, 3

RouteGMetroidCaveTMEnergyBall:
	itemball TM_ENERGY_BALL

RouteGMetroidCaveZoomer1:
	special FadeOutPalettes
	cry PORYGON2
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon PORYGON2, 23
	startbattle
	reloadmapafterbattle
	setevent EVENT_ROUTE_G_METROID_CAVE_ZOOMER_1
	disappear ROUTE_G_METROID_CAVE_ZOOMER_1
	end

RouteGMetroidCaveZoomer2:
	special FadeOutPalettes
	cry HAUNTER
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon HAUNTER, 26
	startbattle
	reloadmapafterbattle
	setevent EVENT_ROUTE_G_METROID_CAVE_ZOOMER_2
	disappear ROUTE_G_METROID_CAVE_ZOOMER_2
	end

TrainerGruntM2:
	trainer GLITCH_T, GLITCH_2, EVENT_BEAT_GLITCH_2, RocketGruntM2SeenText, RocketGruntM2BeatenText, 0, .Script

.Script:
	opentext
	writetext RocketGruntM2AfterText
	waitbutton
	verbosegiveitem SUN_STONE
	waitbutton
	closetext
	playsound SFX_CAUGHT_MON
	earthquake 80
	waitsfx
	disappear ROUTE_G_METROID_CAVE_SKREE
	end

TrainerGruntM3:
	trainer GLITCH_T, GLITCH_3, EVENT_BEAT_GLITCH_3, RocketGruntM3SeenText, RocketGruntM3BeatenText, 0, .Script

.Script:
	opentext
	writetext RocketGruntM3AfterText
	waitbutton
	closetext
	playsound SFX_TRANSACTION
	earthquake 80
	waitsfx
	disappear ROUTE_G_METROID_CAVE_RIPPER
	end

RocketGruntM2SeenText:
	text "JJSFSDJks"
	done

RocketGruntM2BeatenText:
	text "A WINNER IS YOU"
	done

RocketGruntM2AfterText:
	text "SHINE GET"
	done

RocketGruntM3SeenText:
	text "Hello! Sorry to"
	line "keep you waiting!"

	para "Welcome to the"
	line "world of #MON!"

	para "My name is OAK."

	para "People call me the"
	line "#MON PROF."

	para "This world is in-"
	line "habited by crea-"
	cont "tures that we call"
	cont "#MON."
	
	done

RocketGruntM3BeatenText:
	text "People and #MON"
	line "live together by"

	para "supporting each"
	line "other."

	para "Some people play"
	line "with #MON, some"
	cont "battle with them."
	done

RocketGruntM3AfterText:
	text "But we don't know"
	line "everything about"
	cont "#MON yet."

	line "BRIAN: HELP, I'M"

	para "There are still"
	line "many mysteries to"
	cont "solve."

	line "I'M BETWEEN THE"

	para "That's why I study"
	line "#MON every day."
	done

RouteGMetroidCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 25,  5, ROUTE_G, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 10, 6, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGruntM2, EVENT_BEAT_GLITCH_2
	object_event 16, 4, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGruntM3, EVENT_BEAT_GLITCH_3
	object_event 22,  8, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RouteGMetroidCaveZoomer1, EVENT_ROUTE_G_METROID_CAVE_ZOOMER_1
	object_event  4,  4, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RouteGMetroidCaveZoomer2, EVENT_ROUTE_G_METROID_CAVE_ZOOMER_2
	object_event 1, 1, SPRITE_ENERGY_TANK, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, RouteGMetroidCaveFullRestore, EVENT_ROUTE_G_METROID_CAVE_FULL_RESTORE
	object_event 4, 7, SPRITE_MORPH_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_ITEMBALL, 0, RouteGMetroidCaveTMEnergyBall, EVENT_ROUTE_G_METROID_CAVE_TM_ENERGY_BALL
