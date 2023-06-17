	object_const_def
	const DANK_CAVE_2F_LAPRAS
DankCave2F_MapScripts:
	def_scene_scripts

	def_callbacks

DankCaveLapras:
	special FadeOutPalettes
	cry LAPRAS
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon LAPRAS, 40
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DANK_CAVE_LAPRAS
	disappear DANK_CAVE_2F_LAPRAS
	end
DankCave2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, DANK_CAVE_1F, 2
	warp_event 29,  3, DR_NUGGZ_MD_EXTERIOR, 1


	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 22, SPRITE_BIG_LAPRAS, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DankCaveLapras, EVENT_BEAT_DANK_CAVE_LAPRAS
