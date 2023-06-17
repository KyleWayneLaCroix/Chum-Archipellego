	object_const_def
;	const MAPNAME_OBJECTNAME


RouteH_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script


TrainerSwimmermBerke:
	trainer SWIMMER_M, BERKE, EVENT_BEAT_SWIMMER_M_BERKE, SwimmermBerkeSeenText, SwimmermBerkeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermBerkeAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermKirk:
	trainer SWIMMER_M, KIRK, EVENT_BEAT_SWIMMER_M_KIRK, SwimmermKirkSeenText, SwimmermKirkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermKirkAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermMathew:
	trainer SWIMMER_M, MATHEW, EVENT_BEAT_SWIMMER_M_MATHEW, SwimmermMathewSeenText, SwimmermMathewBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermMathewAfterBattleText
	waitbutton
	closetext
	end

SwimmermBerkeSeenText:
	text "See the whirlpool"
	cont "blocking the way"
	cont "ahead?"

	para "There just has to"
	line "be a secret!"
	done

SwimmermBerkeBeatenText:
	text "What's the secret"
	line "to your strength?"
	done

SwimmermBerkeAfterBattleText:
	text "It was a dark and"
	line "stormy night…"

	para "I saw this giant"
	line "#MON flying"
	cont "from the islands."

	para "It was was just a"
	line "HOOTHOOT though."
	done

SwimmermKirkSeenText:
	text "The waves are wild"
	line "here."

	para "They tire you out"
	line "while you swim."
	done

SwimmermKirkBeatenText:
	text "I'm beat!"
	done

SwimmermKirkAfterBattleText:
	text "The currents keep"
	line "me from reaching"
	cont "that island."
	done

SwimmermMathewSeenText:
	text "Are you seeking"
	line "the secrets of"
	cont "the ocean?"
	done

SwimmermMathewBeatenText:
	text "Ooh, you've got"
	line "great endurance!"
	done

SwimmermMathewAfterBattleText:
	text "It's really hard"
	line "to swim like"
	cont "this."
	done

TrainerSwimmerfDenise:
	trainer SWIMMER_F, DENISE, EVENT_BEAT_SWIMMER_F_DENISE, SwimmerfDeniseSeenText, SwimmerfDeniseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDeniseAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfKara:
	trainer SWIMMER_F, KARA, EVENT_BEAT_SWIMMER_F_KARA, SwimmerfKaraSeenText, SwimmerfKaraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfKaraAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfWendy:
	trainer SWIMMER_F, WENDY, EVENT_BEAT_SWIMMER_F_WENDY, SwimmerfWendySeenText, SwimmerfWendyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfWendyAfterBattleText
	waitbutton
	closetext
	end
SwimmerfDeniseSeenText:
	text "The weather is so"
	line "beautiful, I'm in"
	cont "a daze!"
	done

SwimmerfDeniseBeatenText:
	text "Ohhh!"
	done

SwimmerfDeniseAfterBattleText:
	text "A sunburn is the"
	line "worst for skin."

	para "But I don't use a"
	line "sunblock."

	para "I won't pollute"
	line "the water."
	done

SwimmerfKaraSeenText:
	text "If you need to"
	line "rest, just tread"
	cont "water."

	para "You'll get your"
	line "wind back, so you"

	para "can keep on going"
	line "strong."
	done

SwimmerfKaraBeatenText:
	text "Oh! You have more"
	line "energy than I do."
	done

SwimmerfKaraAfterBattleText:
	text "I'm so tired"
	done

SwimmerfWendySeenText:
	text "At night, this"
	line "place gets"
	cont "creepy..."
	done

SwimmerfWendyBeatenText:
	text "Oh, dear…"
	done

SwimmerfWendyAfterBattleText:
	text "The ocean."

	para "It's so beautiful,"
	line "it's scary."
	done

RouteHTMPoisonJab:
	itemball TM_POISON_JAB

RouteHElixer:
	itemball ELIXER

RouteHMaxPotion:
	itemball MAX_POTION

RouteHXSpeed:
	itemball X_SPEED


RouteH_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4, 23, OCEAN_DETOUR, 1
	warp_event 10, 11, OCEAN_DETOUR, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  2, 36, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermBerke, -1
	object_event 17, 46, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermKirk, -1
	object_event  9, 42, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermMathew, -1
	object_event 13, 32, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfDenise, -1
	object_event 15, 16, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfKara, -1
	object_event  2, 47, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerfWendy, -1
	object_event 11, 45, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RouteHTMPoisonJab, EVENT_GOT_TM29_POISON_JAB
	object_event  3, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteHElixer, EVENT_ROUTE_H_ELIXER
	object_event 17, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteHMaxPotion, EVENT_ROUTE_H_MAX_POTION
	object_event  6, 50, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteHXSpeed, EVENT_ROUTE_H_X_SPEED
