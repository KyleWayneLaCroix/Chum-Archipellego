	object_const_def
;	const MAPNAME_OBJECTNAME
	const ROUTEB_TREE
	const ROUTEB_POKE_BALL1
	const ROUTEB_POKE_BALL2
	const ROUTEB_BLACKBELT1
	const ROUTEB_PICNICKER1
	const ROUTEB_HIKER1
	const ROUTEB_HIKER2
	const ROUTEB_PICNICKER2
	const ROUTEB_GRAMPS

RouteB_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

RouteBFruitTree:
	fruittree FRUITTREE_ROUTE_B

RouteBEscapeRope:
	itemball ESCAPE_ROPE

RouteBRareCandy:
	itemball RARE_CANDY, 3

TrainerBlackbeltDaniel:
	trainer BLACKBELT_T, DANIEL, EVENT_BEAT_BLACKBELT_DANIEL, BlackbeltDanielSeenText, BlackbeltDanielBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltDanielAfterText
	waitbutton
	closetext
	end

TrainerPicnickerLizzy:
	trainer PICNICKER, LIZZY, EVENT_BEAT_PICNICKER_LIZZY, PicnickerLizzySeenText, PicnickerLizzyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerLizzyAfterText
	waitbutton
	closetext
	end

RouteBHikerCourtney:
	trainer HIKER, COURTNEY, EVENT_BEAT_HIKER_COURTNEY, HikerCourtneySeenText, HikerCourtneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerCourtneyAfterText
	waitbutton
	closetext
	end

RouteBHikerHorace:
	trainer HIKER, HORACE, EVENT_BEAT_HIKER_HORACE, HikerHoraceSeenText, HikerHoraceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerHoraceAfterText
	waitbutton
	closetext
	end

RouteBPicnickerGina:
	trainer PICNICKER, GINA1, EVENT_BEAT_PICNICKER_GINA, PicnickerGinaSeenText, PicnickerGinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerGinaAfterText
	waitbutton
	closetext
	end

RouteBOldManScript:
	jumptextfaceplayer RouteBOldManText

RouteBSignScript:
	jumptext RouteBSignText

RouteBOldManText:
	text "You can't get to"
	line "IVY TOWN without"
	cont "SURFing on your"
	cont "#MON."

	para "It's not very"
	line "convenient."

	para "To be honest, I"
	line "consider it very"
	cont "inconvenient."
	done

PicnickerGinaSeenText:
	text "I wanted to keep"
	line "going North, but"
	cont "there's a lot of"
	cont "water, and none"
	cont "of my #MON"
	cont "can SURF."
	done

PicnickerGinaBeatenText:
	text "I am unable"
	line "to swim."
	done

PicnickerGinaAfterText:
	text "Once you get your"
	line "first #MON,"

	para "you lose the"
	line "ability to swim"
	cont "on your own!"
	done

HikerHoraceSeenText:
	text "There's a weird"
	line "graveyard near"
	cont "here."

	para "I kind of want"
	line "to check it out."
	done

HikerHoraceBeatenText:
	text "Now I need the"
	line "graveyard."
	done

HikerHoraceAfterText:
	text "Actually #MON"
	line "do not die when"
	cont "they lose in a"
	cont "battle."

	para "They just faint."
	done

HikerCourtneySeenText:
	text "Am I supposed to"
	line "still call it the"
	cont "NORTHERN FOREST"
	cont "when it's south"
	cont "of me?"
	done

HikerCourtneyBeatenText:
	text "Dang."
	done

HikerCourtneyAfterText:
	text "I love walking to"
	line "places."
	done

PicnickerLizzySeenText:
	text "My life is about"
	line "two things:"

	para "#MON battles."

	para "and Picnicking."
	done

PicnickerLizzyBeatenText:
	text "I'm better at"
	line "picnicking."
	done

PicnickerLizzyAfterText:
	text "I don't have a"
	line "home, so really"
	cont "every meal is a"
	cont "picnic."

	para "When I get a meal"
	cont "that is."
	done

BlackbeltDanielSeenText:
	text "I know Karate, so"
	line "that means I'll"
	cont "be good at #-"
	cont "-MON battles."
	done

BlackbeltDanielBeatenText:
	text "I can still beat"
	line "you up."
	done

BlackbeltDanielAfterText:
	text "Maybe different"
	line "skills require"
	cont "different types"
	cont "of practice."
	done

RouteBSignText:
	text "NORTH: ROUTE B"
	line "(continued)"

	para "EAST: THE CODE"
	line "GRAVEYARD"

	para "NORTH is UP."
	line "EAST is RIGHT."
	done


RouteB_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  5, 53, NORTHERN_FOREST_ROUTE_B_GATE, 3
	warp_event  6, 53, NORTHERN_FOREST_ROUTE_B_GATE, 4
	warp_event 10, 15, DANGEROUS_CAVE, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  8,  4, BGEVENT_READ, RouteBSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 11, 21, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteBFruitTree, -1
	object_event 10, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteBEscapeRope, EVENT_ROUTE_B_ESCAPE_ROPE
	object_event  4, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteBRareCandy, EVENT_ROUTE_B_RARE_CANDY
	object_event  4, 43, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltDaniel, -1
	object_event  6, 14, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerLizzy, -1
	object_event 13, 39, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, RouteBHikerCourtney, -1
	object_event  5, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER,3, RouteBHikerHorace, -1
	object_event  9, 30, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, RouteBPicnickerGina, -1
	object_event  6,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteBOldManScript, -1
