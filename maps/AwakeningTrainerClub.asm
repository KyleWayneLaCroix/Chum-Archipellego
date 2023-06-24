	object_const_def
;	const MAPNAME_OBJECTNAME


AwakeningTrainerClub_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

AwakeningTrainerClubReceptionist:
	jumptextfaceplayer AwakeningTrainerClubReceptionistSorry

AwakeningTrainerClubReceptionistSorry:
	text "Oh... welcome to"
	line "the MAYBE VILLAGE"
	cont "TRAINER CLUB."

	para "A club for"
	line "trainers."

	para "In MAYBE VILLAGE."

	para "We don't have too"
	line "many trainers yet"
	cont "cause the monster"
	cont "things just now"
	cont "showed up."

	para "Also the coding"
	line "for these wasn't"
	cont "ever finished."

	para "Maybe try again"
	line "during some sort"
	cont "of DLC."
	done

AwakeningTrainerClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  7, 16, MAYBE_VILLAGE, 7
	warp_event  8, 16, MAYBE_VILLAGE, 7

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  8, 13, SPRITE_LA_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, AwakeningTrainerClubReceptionist, 0
