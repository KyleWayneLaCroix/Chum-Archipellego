	object_const_def
;	const MAPNAME_OBJECTNAME
	const EEVEE_RANCH_EXTERIOR_EEVEE
	const EEVEE_RANCH_EXTERIOR_VAPOREON
	const EEVEE_RANCH_EXTERIOR_JOLTEON
	const EEVEE_RANCH_EXTERIOR_FLAREON
	const EEVEE_RANCH_EXTERIOR_ESPEON
	const EEVEE_RANCH_EXTERIOR_UMBREON
	const EEVEE_RANCH_EXTERIOR_GLACEON
	const EEVEE_RANCH_EXTERIOR_LEAFEON
	const EEVEE_RANCH_EXTERIOR_SYLVEON
	const EEVEE_RANCH_EXTERIOR_EEVEE_BRIAN


EeveeRanchExterior_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_NEWMAP, EeveeRanchFlypointCallback


EeveeRanchFlypointCallback:
	setflag ENGINE_FLYPOINT_EEVEE_RANCH
	endcallback

EeveeRanchExteriorEevee:
	end

EeveeRanchEeveeBrian:
	trainer MAD_DOG, BRIANEON, EVENT_BEAT_MAD_DOG_BRIANEON, EeveeRanchEeveeBrianSeenText, EeveeRanchEeveeBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext EeveeRanchEeveeBrianAfterText
	waitbutton
	closetext
	cry EEVEE
	earthquake 20
	waitsfx
	disappear EEVEE_RANCH_EXTERIOR_EEVEE_BRIAN
	end

EeveeRanchEeveeBrianSeenText:
	text "EEEEEVEEEEE"

	para "No wait, #MON"
	line "don't say their"
	cont "name in the games"

	para "What sounds do"
	line "EEVEE make?"
	done

EeveeRanchEeveeBrianBeatenText:
	text "So is EEVEE a fox"
	line "or cat or dog?"
	done

EeveeRanchEeveeBrianAfterText:
	text "I'm tired of this"
	line "furry stuff."

	para "Bye."
	done
EeveeRanchExterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 25, 37, ROUTE_D, 1
	warp_event 26, 37, ROUTE_D, 1
	warp_event 19, 33, EEVEE_RANCH_POKECENTER_1F, 1
	warp_event 10, 25, EEVEE_RANCH_INTERIOR, 1
	warp_event  9, 21, EEVEE_RANCH_INTERIOR, 2
	warp_event 10, 21, EEVEE_RANCH_INTERIOR, 3
	warp_event  1, 31, EEVEE_RANCH_GROOMERS, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  2,  0, SPRITE_EEVEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event  3, 14, SPRITE_VAPOREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event 12,  0, SPRITE_JOLTEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event 21, 10, SPRITE_FLAREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event 28,  0, SPRITE_ESPEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event 20,  3, SPRITE_UMBREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event 12,  8, SPRITE_GLACEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event 22, 21, SPRITE_LEAFEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event 29, 15, SPRITE_SYLVEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event 13, 13, SPRITE_EEVEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, EeveeRanchEeveeBrian, EVENT_BEAT_MAD_DOG_BRIANEON
