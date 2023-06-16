	object_const_def
;	const MAPNAME_OBJECTNAME

	;const NORTHERN_FOREST_ROUTE_B_GATE_NURSE
	;const NORTHERN_FOREST_ROUTE_B_GATE_POKE
	;const NORTHERN_FOREST_ROUTE_B_GATE_OFFICER
	;const NORTHERN_FOREST_ROUTE_B_GATE_GRANNY
NorthernForestRouteBGate_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script


NorthForestGateNurseScript:
	faceplayer
	opentext
	writetext NorthernForestGateNurseTalk1
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext NorthernForestGateNurseTalk2
	waitbutton
	closetext
	end

NorthForestGateChanseyScript:
	faceplayer
	opentext
	writetext NorthForestGateChanseyText
	waitbutton
	closetext
	end

NorthForestGateOfficerScript:
	jumptextfaceplayer NorthForestGateofficerText

RouteBGateRouteBScript:
	jumptext RoubteBGateRouteBText

NorthForestGateBitterMartScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ROUTE_B_GATE
	closetext
	end

RoubteBGateRouteBText:
	text "ROUTE B ahead"
	done

NorthernForestGateNurseTalk1:
	text "Your #MON look"
	line "a little tired."

	para "You should rest"
	line "them a while."
	done

NorthernForestGateNurseTalk2:
	text "There!"

	para "Your #MON are"
	line "looking good!"

	para "Keep at it!"
	done

NorthForestGateChanseyText:
	text "CHANSEY: Chaaa!"
	done

NorthForestGateofficerText:
	text "OFFICER: I really"
	line "don't know what"
	cont "my job is."

	para "I guess I just"
	line "stand here?"
	done



NorthernForestRouteBGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4,  9, NORTHERN_FOREST, 3
	warp_event  5,  9, NORTHERN_FOREST, 3
	warp_event  4,  0, ROUTE_B, 1
	warp_event  5,  0, ROUTE_B, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  6,  0, BGEVENT_READ, RouteBGateRouteBScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  8,  5, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NorthForestGateNurseScript, -1
	object_event  8,  4, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NorthForestGateChanseyScript, -1
	object_event  3,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NorthForestGateOfficerScript, -1
	object_event  0,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NorthForestGateBitterMartScript, -1
