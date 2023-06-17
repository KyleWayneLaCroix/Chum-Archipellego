	object_const_def
;	const MAPNAME_OBJECTNAME


RouteFCave_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script


TrainerSightseerJonny:
	trainer SIGHTSEER_M, JONNY, EVENT_BEAT_SIGHTSEER_JONNY, SightseerJonnySeenText, SightseerJonnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SightseerJonnyAfterBattleText
	waitbutton
	closetext
	end

SightseerJonnySeenText:
	text "We heard the"
	line "famous TONY"
	cont "HAWK lives past"
	cont "this cave."

	para "None of our"
	line "#MON are buff"
	cont "enough to push"
	cont "these big rocks"
	cont "though..."
	done
SightseerJonnyBeatenText:
	text "I hope TONY"
	line "didn't see this."
	done
SightseerJonnyAfterBattleText:
	text "×sigh×"

	para "I guess we can"
	line "just go meet BAM"
	cont "instead."
	done

TrainerSightseerJaney:
	trainer SIGHTSEER_F, JANEY, EVENT_BEAT_SIGHTSEER_JANEY, SightseerJaneySeenText, SightseerJaneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SightseerJaneyAfterBattleText
	waitbutton
	closetext
	end

SightseerJaneySeenText:
	text "Are you famous"
	line "skateboardist"
	cont "TONY HAWK?"
	done

SightseerJaneyBeatenText:
	text "I'm paranoid I"
	line "won't recognize"
	cont "him based on all"
	cont "of his tweets."
	done

SightseerJaneyAfterBattleText:
	text "If we find TONY"
	line "HAWK and he's"
	cont "interested, I"
	cont "will leave my"
	cont "boyfriend for him"

	para "He's TONY HAWK!"
	done

RouteFCaveTMGigaDrain:
	itemball TM_GIGA_DRAIN

RouteFCaveUltraBall:
	itemball ULTRA_BALL

RouteFCaveSuperPotion:
	itemball SUPER_POTION

RouteFCaveMaxEther:
	itemball MAX_ETHER

RouteFCaveStrengthBoulder:
	jumpstd StrengthBoulderScript

RouteFCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3,  3, ROUTE_F, 2
	warp_event 17, 17, ROUTE_F, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 11, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteFCaveStrengthBoulder, 0
	object_event 16, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteFCaveStrengthBoulder, 0
	object_event 16, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteFCaveStrengthBoulder, 0
	object_event 14,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSightseerJonny, 0
	object_event 14,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSightseerJaney, 0
	object_event 10,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteFCaveUltraBall, EVENT_ROUTE_F_CAVE_ULTRA_BALL
	object_event  2,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteFCaveSuperPotion, EVENT_ROUTE_F_CAVE_SUPER_POTION
	object_event  2, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteFCaveMaxEther, EVENT_ROUTE_F_CAVE_MAX_ETHER
	object_event  9, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RouteFCaveTMGigaDrain, EVENT_GOT_TM14_GIGA_DRAIN
