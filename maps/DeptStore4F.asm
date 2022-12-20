	object_const_def
;	const MAPNAME_OBJECTNAME

UnivercityMart4F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityHeld1MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_HELD1
	closetext
	end

UnivercityHeld2MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_HELD2
	closetext
	end

UnivercityEvolutionMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_EVOLUTION
	closetext
	end

UnivercityMart4FElevatorScript:
	jumptext UnivercityMart4FElevatorText

UnivercityMart4FSignScript:
	jumptext UnivercityMart4FSignText

UnivercityMart4FSignText:
	text "  DIRECTORY - 4F "
	line "  Held Items &   " 
	cont "Evolution Stones "
	done

UnivercityMart4FElevatorText:
	text "OUT OF ORDER"

	para "Elevators have"
	line "their own unique"
	cont "code and handling"

	para "And with needing"
	line "to release on NYE"
	cont "gotta make a call"
	done


UnivercityMart4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 13,  0, UNIVERCITY_MART_3F, 2
	warp_event  2,  0, UNIVERCITY_MART_5F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 0, 0, BGEVENT_READ, UnivercityMart4FElevatorScript
	bg_event 12,  0, BGEVENT_READ, UnivercityMart4FSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityHeld1MartScript, 0
	object_event 13,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityHeld2MartScript, 0
	object_event  4,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityEvolutionMartScript, 0
