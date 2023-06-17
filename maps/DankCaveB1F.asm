	object_const_def

DankCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

DankCaveTM31Psybeam:
	itemball TM_PSYBEAM

DankCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  7, DANK_CAVE_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, DankCaveTM31Psybeam, EVENT_GOT_TM31_PSYBEAM
