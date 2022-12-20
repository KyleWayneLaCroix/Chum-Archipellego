	object_const_def
;	const MAPNAME_OBJECTNAME

UnivercityMart3F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityStatsMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_STATS
	closetext
	end

UnivercityBattleMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_BATTLE
	closetext
	end

UnivercityMart3FElevatorScript:
	jumptext UnivercityMart3FElevatorText

UnivercityMart3FSignScript:
	jumptext UnivercityMart3FSignText

UnivercityMart3FSignText:
	text "  DIRECTORY - 3F "
	line "  Stats & Battle "
	done

UnivercityMart3FElevatorText:
	text "OUT OF ORDER"

	para "Pretty sure there"
	line "was something on"
	cont "the PRET wiki"

	para "that said the"
	line "elevator was set"
	cont "up weirdly."
	done

UnivercityMart3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3,  0, UNIVERCITY_MART_2F, 2
	warp_event 12,  0, UNIVERCITY_MART_4F, 1


	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 0, 0, BGEVENT_READ, UnivercityMart3FElevatorScript
	bg_event  2,  0, BGEVENT_READ, UnivercityMart3FSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  9,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityStatsMartScript, 0
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityBattleMartScript, 0
