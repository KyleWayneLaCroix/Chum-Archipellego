	object_const_def
;	const MAPNAME_OBJECTNAME


MisplacedCavern1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MisplacedCavern1FKeese1:
	end

MisplacedCavern1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 15, 18, MISPLACED_WOODS, 2
	warp_event 17,  2, MISPLACED_CAVERN_2F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 14, 14, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, MisplacedCavern1FKeese1, -1
