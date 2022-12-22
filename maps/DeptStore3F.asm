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

UnivercityMart3FTwin1Script:
	jumptextfaceplayer UnivercityMart3FTwin1Text

UnivercityMart3FTwin2Script:
	jumptextfaceplayer UnivercityMart3FTwin2Text

UnivercityMart3FYoungsterScript:
	jumptextfaceplayer UnivercityMart3FYoungsterText

UnivercityMart3FYoungsterText:
	text "Did you know that"
	line "in GEN 2, EVs"
	cont "didn't exist?"

	para "Instead, STAT XP"
	line "determines your"
	cont "stats."

	para "CARBOS and all"
	line "that still work"
	cont "about the same."
	done

UnivercityMart3FTwin1Text:
	text "Mom says RARE"
	line "CANDIES don't"
	cont "work on people."

	para "But I don't mind."

	para "I just like to"
	line "eat them!"
	done

UnivercityMart3FTwin2Text:
	text "We're twins, but"
	line "we're sick of"
	
	para "people getting us"
	line "mixed up."

	para "So, my sister is"
	line "eating a bunch of"
	cont "RARE CANDIES so"
	cont "she gets older."
	
	para "It's not working"
	line "so far."

	para "I think she just"
	line "wanted to eat all"
	cont "our candies."
	done

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
	object_event  7,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMart3FTwin1Script, 0
	object_event  8,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMart3FTwin2Script, 0
	object_event 12,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMart3FYoungsterScript, 0
