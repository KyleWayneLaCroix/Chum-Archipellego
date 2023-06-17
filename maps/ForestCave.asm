	object_const_def
;	const MAPNAME_OBJECTNAME
	const FOREST_CAVE_ZACIAN

ForestCave_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

ForestCaveZacian:
	special FadeOutPalettes
	cry ZACIAN
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon ZACIAN, 60
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FOREST_CAVE_ZACIAN
	disappear FOREST_CAVE_ZACIAN
	end

ForestCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  0,  6, NORTHERN_FOREST, 5
	warp_event  0,  7, NORTHERN_FOREST, 6

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  9,  7, SPRITE_DOG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ForestCaveZacian, EVENT_BEAT_FOREST_CAVE_ZACIAN
