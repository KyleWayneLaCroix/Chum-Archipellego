	object_const_def
;	const MAPNAME_OBJECTNAME
	const CEMETARY_PSYCHIC1
	const CEMETARY_MEDIUM1
	const CEMETARY_PSYCHIC2
	const CEMETARY_MEDIUM2
	const CEMETARY_BALL_BRIAN
	const CEMETARY_POKE_BALL1
	const CEMETARY_POKE_BALL2
	const CEMETARY_POKE_BALL3

Cemetary_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
CemetaryNugget:
	itemball NUGGET

CemetaryMaxRevive:
	itemball MAX_REVIVE

CemetaryTM05:
	itemball TM_DARK_PULSE

CemetaryGraveScript:
	jumptext CemetaryGraveText

CemetaryLabSignScript:
	jumptext CemetaryLabSignText

CemetaryWarningSignScript:
	jumptext CemetaryWarningSignText

TrainerPsychicNathan:
	trainer PSYCHIC_T, NATHAN, EVENT_BEAT_PSYCHIC_NATHAN, PsychicNathanSeenText, PsychicNathanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicNathanAfterText
	waitbutton
	closetext
	end

TrainerPsychicFranklin:
	trainer PSYCHIC_T, FRANKLIN, EVENT_BEAT_PSYCHIC_FRANKLIN, PsychicFranklinSeenText, PsychicFranklinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFranklinAfterText
	waitbutton
	closetext
	end

TrainerMediumMartha:
	trainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumMarthaAfterText
	waitbutton
	closetext
	end

TrainerMediumGrace:
	trainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, MediumGraceSeenText, MediumGraceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumGraceAfterText
	waitbutton
	closetext
	end

TrainerCemetaryBallBrian:
	trainer BALL_BRIAN, BALLBRIAN_2, EVENT_BEAT_BALL_BRIAN_2, CemetaryBallBrianSeenText, CemetaryBallBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext CemetaryBallBrianAfterText
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	disappear CEMETARY_BALL_BRIAN
	end

CemetaryBallBrianSeenText:
	text "Oh, hey it's you"
	line "again!"

	para "You know KNUCKLES"
	line "CHAOTIX for the"
	cont "SEGA 32X?"

	para "I always found"
	line "the unfinished"

	para "Beta version"
	line "called SONIC"
	cont "CRACKERS online."

	para "It was always the"
	line "top download on"
	cont "every ROM site."

	para "Never understood"
	line "the deal with"
	cont "that situation."

	para "It's just an un-"
	line "-playable beta"

	para "where you play as"
	line "SONIC and TAILs."

	para "The levels are"
	line "just black voids."

	para "The hit detection"
	line "is just wonky."

	para "Those sprites for"
	line "SONIC and TAILs"
	cont "are in CHAOTIX."

	para "They were going"
	line "to be the main"
	cont "duo in the game."

	para "They cut them at"
	line "the last minute"
	cont "for some reason."

	para "Guess it was so"
	line "they didn't take"
	cont "away from my man"
	cont "KNUCKLES."
	done

CemetaryBallBrianBeatenText:
	text "I'm glad KNUCKLES"
	line "got his own game."
	done

CemetaryBallBrianAfterText:
	text "SEGA was just"
	line "eating shit back"
	cont "then."

	para "Dreamcast failing"
	line "was so fucking"
	cont "obvious."

	para "Thing was always"
	line "going to bomb."
	done

MediumGraceSeenText:
	text "Are you a ghost?"
	done

MediumGraceBeatenText:
	text "You didn't answer"
	line "my question."
	done

MediumGraceAfterText:
	text "There isn't a way"
	line "to tell if some-"
	cont "-one is a ghost"
	cont "or not."

	para "Unless you kill"
	line "them I guess."

	para "I don't think you"
	line "can kill ghosts."
	done

MediumMarthaSeenText:
	text "I am sensing a"
	line "spirit."

	para "A spirit..."

	para "of battle."
	done

MediumMarthaBeatenText:
	text "This battle was"
	line "an exorcism."
	done

MediumMarthaAfterText:
	text "Ghosts are real."
	done

PsychicFranklinSeenText:
	text "I have already"
	line "beaten you in my"
	cont "mind."
	done

PsychicFranklinBeatenText:
	text "I let you win."
	done

PsychicFranklinAfterText:
	text "Since I had alre-"
	line "-ady experienced"
	cont "mental victory,"

	para "I thought defeat"
	line "would be a more"
	cont "novel experience."
	done

PsychicNathanSeenText:
	text "I can see your"
	line "future."

	para "You will have a"
	line "#MON battle!"
	done

PsychicNathanBeatenText:
	text "I told you."
	done

PsychicNathanAfterText:
	text "It's actually"
	line "quite easy to"
	cont "tell the future"
	
	para "when you stick to"
	line "things you direc-"
	cont "-tly control."
	done

CemetaryLabSignText:
	text "KYLE's LAB"

	para "<PLAY_G>s"
	line "welcome."
	done

CemetaryGraveText:
	text "push hl"
	line "push bc"

	para "sub BANK Pics 1"
	line "ld c, a"

	para "ld b, 0"
	line "ld hl, .PicsBanks"

	para "add hl PicsBanks"
	line "add hl, bc"

	para "ld a, hl"
	line "pop bc"
	cont "pop hl"

	para "ret"
	done

CemetaryWarningSignText:
	text "CODE GRAVEYARD"

	para "There are also"
	line "ghosts here too"
	done

Cemetary_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 20,  7, CEMETARY_LAB, 1

	def_coord_events
;	coord_event x, y, scene_id, script


	def_bg_events
;	bg_event x, y, type, script
	bg_event 21,  8, BGEVENT_READ, CemetaryLabSignScript
	bg_event  9, 10, BGEVENT_READ, CemetaryWarningSignScript
	bg_event 25, 11, BGEVENT_UP, CemetaryGraveScript
	bg_event 24, 11, BGEVENT_UP, CemetaryGraveScript
	bg_event 23, 15, BGEVENT_UP, CemetaryGraveScript
	bg_event  8,  6, BGEVENT_UP, CemetaryGraveScript
	bg_event 24,  9, BGEVENT_UP, CemetaryGraveScript
	bg_event 26, 13, BGEVENT_UP, CemetaryGraveScript
	bg_event 25, 16, BGEVENT_UP, CemetaryGraveScript
	bg_event 26, 16, BGEVENT_UP, CemetaryGraveScript
	bg_event 27, 16, BGEVENT_UP, CemetaryGraveScript
	bg_event 23, 11, BGEVENT_UP, CemetaryGraveScript
	bg_event 24, 16, BGEVENT_UP, CemetaryGraveScript
	bg_event 25, 24, BGEVENT_UP, CemetaryGraveScript
	bg_event 24, 24, BGEVENT_UP, CemetaryGraveScript
	bg_event 27, 26, BGEVENT_UP, CemetaryGraveScript
	bg_event 26, 26, BGEVENT_UP, CemetaryGraveScript
	bg_event 22, 13, BGEVENT_UP, CemetaryGraveScript
	bg_event 15, 21, BGEVENT_UP, CemetaryGraveScript
	bg_event 16, 15, BGEVENT_UP, CemetaryGraveScript
	bg_event 14, 21, BGEVENT_UP, CemetaryGraveScript
	bg_event 17, 19, BGEVENT_UP, CemetaryGraveScript
	bg_event 14, 19, BGEVENT_UP, CemetaryGraveScript
	bg_event 12, 16, BGEVENT_UP, CemetaryGraveScript
	bg_event 11, 18, BGEVENT_UP, CemetaryGraveScript
	bg_event 13, 16, BGEVENT_UP, CemetaryGraveScript
	bg_event 10, 18, BGEVENT_UP, CemetaryGraveScript
	bg_event 19, 11, BGEVENT_UP, CemetaryGraveScript
	bg_event 12,  7, BGEVENT_UP, CemetaryGraveScript
	bg_event 10,  9, BGEVENT_UP, CemetaryGraveScript
	bg_event  9,  6, BGEVENT_UP, CemetaryGraveScript
	bg_event  7,  6, BGEVENT_UP, CemetaryGraveScript
	bg_event  6,  6, BGEVENT_UP, CemetaryGraveScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 27, 17, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 4, TrainerPsychicNathan, -1
	object_event 10, 23, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerMediumMartha, -1
	object_event 14, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPsychicFranklin, -1
	object_event 13,  4, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerMediumGrace, -1
	object_event 19,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerCemetaryBallBrian, EVENT_BEAT_BALL_BRIAN_2
	object_event 27, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, CemetaryTM05, EVENT_GOT_TM05_DARK_PULSE
	object_event 16, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CemetaryMaxRevive, EVENT_CEMETARY_MAX_REVIVE
	object_event  9,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CemetaryNugget, EVENT_CEMETARY_NUGGET
