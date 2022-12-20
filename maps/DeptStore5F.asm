	object_const_def
;	const MAPNAME_OBJECTNAME


UnivercityMart5F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityTM1MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_TM1
	closetext
	end

UnivercityTM2MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_TM2
	closetext
	end

UnivercityTM3MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_TM3
	closetext
	end

UnivercityMart5FElevatorScript:
	jumptext UnivercityMart5FElevatorText

UnivercityMart5FSignScript:
	jumptext UnivercityMart5FSignText

UnivercityMart5FSignText:
	text "  DIRECTORY - 5F "
	line "       TMs       "
	done

UnivercityMart5FElevatorText:
	text "OUT OF ORDER"

	para "Kyle didn't even"
	line "look at how the"
	cont "elevators work."

	para "Just preemptively"
	line "decided it's not"
	cont "worth it."
	done


UnivercityMart5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 3, 0, UNIVERCITY_MART_4F, 2
	warp_event 12, 0, UNIVERCITY_MART_ROOF, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 0, 0, BGEVENT_READ, UnivercityMart5FElevatorScript
	bg_event 2, 0, BGEVENT_READ, UnivercityMart5FSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityTM1MartScript, 0
	object_event 13,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityTM2MartScript, 0
	object_event  2,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityTM3MartScript, 0
