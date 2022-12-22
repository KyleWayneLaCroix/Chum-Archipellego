	object_const_def
;	const MAPNAME_OBJECTNAME
	const UNIVERCITY_MART_2F_RECEPTIONIST
	const UNIVERCITY_MART_2F_CLERK
	const UNIVERCITY_MART_2F_GRANNY
	const UNIVERCITY_MART_2F_COOLTRAINERM

UnivercityMart2F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityPPMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_PP
	closetext
	end

UnivercityHealingMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_HEALING
	closetext
	end

UnivercityMart2FElevatorScript:
	jumptext UnivercityMart2FElevatorText

UnivercityMart2FSignScript:
	jumptext UnivercityMart2FSignText

UnivercityMart2FGrannyScript:
	jumptextfaceplayer UnivercityMart2FGrannyText

UnivercityMart2FCoolTrainerMScript:
	jumptextfaceplayer UnivercityMart2FCoolTrainerMText

UnivercityMart2FCoolTrainerMText:
	text "You can buy items"
	line "to restore PP"
	cont "here!"

	para "Anything really"
	line "is possible in a"
	cont "ROM Hack."
	done

UnivercityMart2FGrannyText:
	text "They only seem to"
	line "sell medicine for"
	cont "#MON here."

	para "I need insulin..."
	done

UnivercityMart2FElevatorText:
	text "OUT OF ORDER"

	para "Kyle didn't want"
	line "to figure out"
	cont "the elevator"
	cont "script."
	done

UnivercityMart2FSignText:
	text "  DIRECTORY - 2F "
	line "  Medicine & PP  "
	done

UnivercityMart2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 13,  0, UNIVERCITY_MART_1F, 1
	warp_event  4,  0, UNIVERCITY_MART_3F, 1


	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 0, 0, BGEVENT_READ, UnivercityMart2FElevatorScript
	bg_event 12,  0, BGEVENT_READ, UnivercityMart2FSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  8,  3, SPRITE_RECEPTIONIST,  SPRITEMOVEDATA_STANDING_UP,  0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityPPMartScript, 0
	object_event 14,  7, SPRITE_CLERK,         SPRITEMOVEDATA_STANDING_UP,  0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityHealingMartScript, 0
	object_event  2,  5, SPRITE_GRANNY,        SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMart2FGrannyScript, 0
	object_event 13,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER,       2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMart2FCoolTrainerMScript, 0