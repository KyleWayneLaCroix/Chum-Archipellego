	object_const_def
;	const MAPNAME_OBJECTNAME
	const METROID_INTRO_MORPH_BALL
	const METROID_INTRO_MISSILES
	const METROID_INTRO_ZOOMER_1
	const METROID_INTRO_ZOOMER_2
	const METROID_INTRO_ZOOMER_3

MetroidIntro_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MetroidIntroMorphball:
	opentext
	writetext MorphballAcquired
	promptbutton
	waitsfx
	givepoke DITTO, 12
	closetext
	setevent EVENT_GOT_MORPHBALL
	disappear METROID_INTRO_MORPH_BALL
	refreshscreen
	end

MetroidIntroMaxElixer:
	itemball MAX_ELIXER

MetroidIntroZoomer1:
	scall MetroidIntroZoomerTrap
	reloadmapafterbattle
	setevent EVENT_METROID_INTRO_ZOOMER_1
	disappear METROID_INTRO_ZOOMER_1
	end

MetroidIntroZoomer2:
	scall MetroidIntroZoomerTrap
	reloadmapafterbattle
	setevent EVENT_METROID_INTRO_ZOOMER_2
	disappear METROID_INTRO_ZOOMER_2
	end

MetroidIntroZoomer3:
	end

MetroidIntroZoomerTrap:
	special FadeOutPalettes
	cry UNOWN
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon UNOWN, 15
	startbattle
	end

MorphballAcquired:
	text "MORPHBALL"
	line "ACQUIRED"
	done

MetroidIntro_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 34, 8, CEMETARY_LAB, 1
	warp_event 35,  8, CEMETARY_LAB, 1
	warp_event 53,  7, METROID_HALLWAY, 1
	
	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  8,  9, SPRITE_MORPH_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidIntroMorphball, EVENT_GOT_MORPHBALL
	object_event 51, 12, SPRITE_MISSILES, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MetroidIntroMaxElixer, EVENT_METROID_INTRO_MAX_ELIXER
	object_event 46, 12, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidIntroZoomer1, EVENT_METROID_INTRO_ZOOMER_1
	object_event 17, 12, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidIntroZoomer2, EVENT_METROID_INTRO_ZOOMER_2
	object_event 24,  8, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidIntroZoomer3, -1
