	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior6FHall_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInterior6FHallMiniorSpot:
	random 75
	ifequal 0, VolcanoInterior6FHallMiniorCoreTrap
	ifequal 1, VolcanoInterior6FHallMiniorCoreTrap
	end

VolcanoInterior6FHallMiniorCoreTrap:
	special FadeOutPalettes
	cry MINIOR_CORE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_CORE, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior6FHallMiniorMeteorTrap:
	special FadeOutPalettes
	cry MINIOR_METEOR
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_METEOR, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior6FHall_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3, 31, VOLCANO_EXTERIOR, 11
	warp_event 13,  1, VOLCANO_EXTERIOR, 12

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 17, 39, BGEVENT_READ, VolcanoInterior6FHallMiniorSpot
	bg_event 17, 38, BGEVENT_READ, VolcanoInterior6FHallMiniorSpot
	bg_event 16, 38, BGEVENT_READ, VolcanoInterior6FHallMiniorSpot
	bg_event 16, 39, BGEVENT_READ, VolcanoInterior6FHallMiniorSpot

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
