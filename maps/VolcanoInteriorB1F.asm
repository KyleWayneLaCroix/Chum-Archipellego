	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInteriorB1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInteriorB1FMiniorSpot:
	random 250
	ifequal 0, VolcanoInteriorB1FMiniorCoreTrap
	ifequal 1, VolcanoInteriorB1FMiniorCoreTrap
	end

VolcanoInteriorB1FMiniorCoreTrap:
	special FadeOutPalettes
	cry MINIOR_CORE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_CORE, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInteriorB1FMiniorMeteorTrap:
	special FadeOutPalettes
	cry MINIOR_METEOR
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_METEOR, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInteriorB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 23, 29, VOLCANO_INTERIOR_1F, 4
	warp_event 25, 15, VOLCANO_INTERIOR_1F, 5
	warp_event  9, 21, VOLCANO_INTERIOR_B1F_HALL, 2
	warp_event 27, 21, VOLCANO_INTERIOR_B1F_HALL, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 27, 25, BGEVENT_READ, VolcanoInteriorB1FMiniorSpot
	bg_event 27, 24, BGEVENT_READ, VolcanoInteriorB1FMiniorSpot
	bg_event 26, 24, BGEVENT_READ, VolcanoInteriorB1FMiniorSpot
	bg_event 26, 25, BGEVENT_READ, VolcanoInteriorB1FMiniorSpot

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
