	object_const_def
;	const MAPNAME_OBJECTNAME


DogLadyHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

DogLadyHouseDogLady:
	jumptextfaceplayer DogLadyHouseDogLadyText

DogLadyHouseDogLadyText:
	text "Ho ho ho!"

	para "My BowWow is so"
	line "proud of his fine"
	cont "fur coat!"
	done

; Add passage to grate guy's casino later
DogLadyHouseChomp:
	end

DogLadyHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  5, 8, MAYBE_VILLAGE, 2
	warp_event  6,  8, MAYBE_VILLAGE, 2
	warp_event 15,  8, MAYBE_VILLAGE, 3
	warp_event 16,  3, GRATE_GUY_CASINO, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  5, SPRITE_LA_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DogLadyHouseDogLady, 0
	object_event 15, 5, SPRITE_CHOMP, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, DogLadyHouseChomp, 0