	object_const_def
;	const MAPNAME_OBJECTNAME
	const METROID_HALLWAY_ZOOMER_1
	const METROID_HALLWAY_ZOOMER_2
	const METROID_HALLWAY_ZOOMER_3
	const METROID_HALLWAY_ZOOMER_4

MetroidHallway_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MetroidHallwayZoomer0:
	end

MetroidHallwayZoomer1:
	scall MetroidIntroZoomerTrap
	reloadmapafterbattle
	setevent EVENT_METROID_HALLWAY_ZOOMER_1
	disappear METROID_HALLWAY_ZOOMER_1
	end

MetroidHallwayZoomerTrap:
	special FadeOutPalettes
	cry DREEPY
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BRUXISH, 15
	startbattle
	end

MetroidHallway_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  0,  7, METROID_INTRO, 3
	warp_event 15,  7, METROID_VERTICAL_HALLWAY, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  7, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidHallwayZoomer1, EVENT_METROID_HALLWAY_ZOOMER_1
	object_event  8,  9, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidHallwayZoomer0, 0
	object_event  2,  4, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidHallwayZoomer0, 0
	object_event  8,  5, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidHallwayZoomer0, 0
