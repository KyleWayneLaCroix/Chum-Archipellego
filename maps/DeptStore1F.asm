	object_const_def
;	const MAPNAME_OBJECTNAME

UnivercityMart1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityBallMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_BALLS
	closetext
	end

UnivercityOverworldMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_OVERWORLD
	closetext
	end

UnivercityMart1FElevatorScript:
	jumptext UnivercityMart1FElevatorText

UnivercityMart1FSignScript:
	jumptext UnivercityMart1FSignText

UnivercityMart1FElevatorText:
	text "OUT OF ORDER"
	done

UnivercityMart1FSignText:
	text "  DIRECTORY - 1F "
	line "Balls & Overworld"
	done

UnivercityMart1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 13,  0, UNIVERCITY_MART_2F, 1
	warp_event  2,  0, UNIVERCITY_MART_B1F, 1
	warp_event  7,  7, UNIVERCITY, 3
	warp_event  8,  7, UNIVERCITY, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 0, 0, BGEVENT_READ, UnivercityMart1FElevatorScript
	bg_event 12,  0, BGEVENT_READ, UnivercityMart1FSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityBallMartScript, 0
	object_event  9,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityOverworldMartScript, 0
