	object_const_def
;	const MAPNAME_OBJECTNAME


TheBetweensEliteFourRoom_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TheBetweensEliteFourRoomGymGuideScript:
	jumptextfaceplayer TheBetweensEliteFourRoomGymGuideText

TheBetweensEliteFourRoomGymGuideText:
	text "Hey there champ"
	line "in the making!"

	para "RED is a tough"
	line "cookie!"

	para "His #MON are of"
	line "different types"
	cont "and a pretty"
	cont "high level."

	para "Did you know you"
	line "can use #MON"
	cont "of more than one"
	cont "type?"

	para "Who knew!"
	done

TrainerPokemonTrainerRed:
	trainer RED, RED1, EVENT_BEAT_POKEMON_TRAINER_RED, RedSeenText, RedBeatenText, 0, .RedScript

.RedScript:
	opentext
	writetext RedAfterText
	waitbutton
	closetext
	end

RedSeenText:
	text "..."
	done

RedBeatenText:
	text "..."

	para "    ..."

	para " : ("
	done

RedAfterText:
	text "..."
	done

TheBetweensEliteFourRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4,  9,  THE_BETWEENS_TOWN, 4
	warp_event  5,  9,  THE_BETWEENS_TOWN, 4
	warp_event  9,  9,  THE_BETWEENS_TRADITIONAL_HOUSE, 2
	warp_event  1,  9,  THE_BETWEENS_FOREST, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 6, 8, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheBetweensEliteFourRoomGymGuideScript, 0
	object_event  4,  1, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerPokemonTrainerRed, 0
