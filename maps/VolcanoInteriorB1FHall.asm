	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInteriorB1FHall_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInteriorB1FHallMoonblastTM:
	itemball TM_MOONBLAST


VolcanoInteriorB1FHallHiddenEther:
	hiddenitem ETHER, EVENT_VOLCANO_INTERIOR_B1F_HIDDEN_ETHER

VolcanoInteriorB1FHallHiddenNugget:
	hiddenitem NUGGET, EVENT_VOLCANO_INTERIOR_B1F_HIDDEN_NUGGET


VolcanoInteriorB1FHall_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 15, 11, VOLCANO_INTERIOR_B1F, 3
	warp_event 3, 11, VOLCANO_INTERIOR_B1F, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  3,  8, BGEVENT_ITEM, VolcanoInteriorB1FHallHiddenEther
	bg_event 15,  7, BGEVENT_ITEM, VolcanoInteriorB1FHallHiddenNugget

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 9, 7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VolcanoInteriorB1FHallMoonblastTM, EVENT_GOT_TM25_MOONBLAST
