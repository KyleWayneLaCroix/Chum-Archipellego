	object_const_def
;	const MAPNAME_OBJECTNAME
	const GEARCITYNORTHGATE_OFFICER
	const GEARCITYNORTHGATE_SHADYGUY
	const GEARCITYNORTHGATE_TMLADY
	const GEARCITYNORTHGATE_FROSMOTH
	const GEARCITYNORTHGATE_BUGCATCHER

GearCityNorthForestGate_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

GearCityNorthForestGateOfficerScript:
	jumptextfaceplayer GearCityNorthForestGateOfficerText

GearCityGateCreepyManScript:
	faceplayer
	opentext
	trade NPC_TRADE_MIKE
	waitbutton
	closetext
	end

GearCityGateTMLady:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM06_DAZZLE_BEAM
	iftrue .GotDazzleBeam
	writetext GearCityGateTMLadyText
	promptbutton
	verbosegiveitem TM_DAZZLE_BEAM
	setevent EVENT_GOT_TM06_DAZZLE_BEAM
	writetext GearCityGateTMLadyGotTMText
	closetext
	end
.GotDazzleBeam:
	writetext GearCityGateTMLadyGotTMText
	promptbutton
	closetext
	end

GearCityGateFrosmothScript:
	opentext
	writetext GearCityGateFrosmothText
	cry FROSMOTH
	waitbutton
	closetext
	end

GearCityGateBugCatcherScript:
	jumptextfaceplayer GearCityGateBugCatcherText

GearCityGateTMLadyText:
	text "OH"

	para "MY"

	para "GOD"

	para "YOU'RE..."

	para "DAZZLING!"

	para "Here, take this!"
	done

GearCityGateTMLadyGotTMText:
	text "DAZZLE BEAM is a"
	line "FAIRY type move"
	cont "that's as SPECIAL"
	cont "as my FROSMOTH."

	para "It's normally"
	line "called DAZZLING"
	cont "GLEAM, but there"
	cont "is a character"
	cont "limit."
	done

GearCityGateFrosmothText:
	text "FROSMOTH: Frross!"
	done


GearCityNorthForestGateOfficerText:
	text "NORTH FOREST is"
	line "pretty big."

	para "Well compared to"
	line "Viridian Forest"
	cont "in Gold/Silver,"
	cont "it is."

	para "Anyway, don't"
	line "litter, the"
	cont "WARDEN will not"
	cont "that."

	para "You don't want to"
	line "make him angry."
	done

GearCityGateBugCatcherText:
	text "The path through"
	line "the forest is"
	cont "pretty overgrown."

	para "If you can't get"
	line "through, ask the"
	cont "WARDEN for help."
	done


GearCityNorthForestGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 12,  9, GEAR_CITY, 9
	warp_event 13,  9, GEAR_CITY, 9
	warp_event  0,  4, NORTHERN_FOREST, 1
	warp_event  0,  5, NORTHERN_FOREST, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  8,  7, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GearCityNorthForestGateOfficerScript, -1
	object_event  1,  1, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GearCityGateCreepyManScript, -1
	object_event 13,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, GearCityGateTMLady, -1
	object_event 14,  2, SPRITE_BUTTERFREE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GearCityGateFrosmothScript, -1
	object_event  6,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 4, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GearCityGateBugCatcherScript, -1
