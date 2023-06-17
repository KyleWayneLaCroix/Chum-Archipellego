	object_const_def
;	const MAPNAME_OBJECTNAME


RouteF_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

GenderClinicSign:
	jumptext GenderClinicSignText

GenderClinicSignText:
	text "  GENDER CLINIC  "

	para "Now located just"
	line "outside of city"
	cont "limits due to"
	cont "Republicans."
	done

TrainerLassKrise:
	trainer LASS, KRISE, EVENT_BEAT_LASS_KRISE, LassKriseSeenText, LassKriseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassKriseAfterBattleText
	waitbutton
	closetext
	end

LassKriseSeenText:
	text "Hello? Why are you"
	line "staring at me?"

	para "Oh, a battle?"
	done

LassKriseBeatenText:
	text "…Hmmm…"
	done

LassKriseAfterBattleText:
	text "I thought you were"
	line "staring at me"
	cont "because I'm cute!"
	done

TrainerGuitaristVincent:
	trainer GUITARIST, VINCENT, EVENT_BEAT_GUITARIST_VINCENT, GuitaristVincentSeenText, GuitaristVincentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristVincentAfterBattleText
	waitbutton
	closetext
	end

GuitaristVincentSeenText:
	text "I like to play my"
	line "guitar in public."

	para "Only in public."

	para "I only ever prac-"
	line "-tice when there"
	cont "are at least a"
	cont "dozen strangers"
	cont "nearby."
	done

GuitaristVincentBeatenText:
	text "I still only know"
	line "how to play"
	cont "WONDERWALL."
	done

GuitaristVincentAfterBattleText:
	text "I'm learning the"
	line "first riff from"
	cont "SMOKE ON THE"
	cont "WATER."
	done

RouteFPokeBall:
	itemball POKE_BALL

RouteFGreatBall:
	itemball GREAT_BALL

RouteFSuperRepel:
	itemball SUPER_REPEL

RouteFTMWaterPulse:
	itemball TM_WATER_PULSE

TrainerJugglerFritz:
	trainer JUGGLER, FRITZ, EVENT_BEAT_JUGGLER_FRITZ, JugglerFritzSeenText, JugglerFritzBeatenText, 0, .Script

.Script:
	opentext
	writetext JugglerFritzAfterBattleText
	waitbutton
	closetext
	end

JugglerFritzSeenText:
	text "Did you know the"
	line "GENDER CLINIC is"
	cont "around here?"

	para "I'm juggling the"
	line "evolution options"
	cont "of my team!"
	done

JugglerFritzBeatenText:
	text "Also juggling my"
	line "own options."
	done

JugglerFritzAfterBattleText:
	text "GEN II doesn't"
	line "have nonbinary"
	cont "options yet."

	para "We only just now"
	line "got a second"
	cont "gender."

	para "Gen I just had"
	line "one, so we have"
	cont "come a long way."
	done

TrainerPastorHovind:
	trainer PASTOR, HOVIND, EVENT_BEAT_PASTOR_HOVIND, PastorHovindSeenText, PastorHovindBeatenText, 0, .Script

.Script:
	opentext
	writetext PastorHovindAfterBattleText
	waitbutton
	closetext
	end

PastorHovindSeenText:
	text "Are you here to"
	line "protest this den"
	cont "of iniquity with"
	cont "me?"

	para "No?"

	para "Don't you realize"
	line "#MON only have"
	cont "one GENDER each!"

	para "All PIKACHU are"
	line "BOYS."

	para "All CLEFAIRY are"
	line "GIRLS."

	para "The woke left is"
	line "trying to confuse"
	cont "you!"
	done

PastorHovindBeatenText:
	text "Please tell me"
	line "both your birth"
	cont "sex and gender so"
	cont "that I can mis-"
	cont "-gender you"
	cont "properly."
	done

PastorHovindAfterBattleText:
	text "Only through"
	line "faith can you"
	cont "overcome your"
	cont "dangerous desires"
	done

RouteFDaisyScript:
	jumptextfaceplayer RouteFDaisyText

RouteFDaisyText:
	text "I'm so glad the"
	line "GENDER CLINIC"
	cont "is still so close"
	cont "to town."

	para "Even if it did"
	line "have to move..."

	para "Fuck the haters."
	done

TrainerSailorHuey:
	trainer SAILOR, HUEY, EVENT_BEAT_SAILOR_HUEY, SailorHueySeenText, SailorHueyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorHueyAfterText
	waitbutton
	closetext
	end

SailorHueySeenText:
	text "Men of the sea are"
	line "always spoiling"
	cont "for a good fight!"
	done

SailorHueyBeatenText:
	text "Urf!"
	line "I lose!"
	done

SailorHueyAfterText:
	text "What power!"
	line "How would you like"

	para "to sail the seas"
	line "with me?"
	done

TonyHawkSign:
	jumptext TonyHawkSignText

TonyHawkSignText:
	text "TONY HAWK'S"
	line "   HOUSE   "
	done

RouteF_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 13, 35, GENDER_CLINIC, 1
	warp_event  8,  7, ROUTE_F_CAVE, 1
	warp_event 18,  9, ROUTE_F_CAVE, 2
	warp_event 15, 23, TONY_HAWK_HOUSE, 2


	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 11, 35, BGEVENT_READ, GenderClinicSign
	bg_event 16, 24, BGEVENT_READ, TonyHawkSign

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerLassKrise, 0
	object_event  3, 23, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGuitaristVincent, 0
	object_event  8, 40, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 4, TrainerJugglerFritz, 0
	object_event  4, 35, SPRITE_DAISY, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteFDaisyScript, 0
	object_event 13, 38, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerPastorHovind, 0
	object_event 13, 47, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSailorHuey, 0
	object_event 13, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteFPokeBall, EVENT_ROUTE_F_POKE_BALL
	object_event  1, 52, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteFGreatBall, EVENT_ROUTE_F_GREAT_BALL
	object_event  2, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteFSuperRepel, EVENT_ROUTE_F_SUPER_REPEL
	object_event  5, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RouteFTMWaterPulse, EVENT_GOT_TM49_WATER_PULSE
