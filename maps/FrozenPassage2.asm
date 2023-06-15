	object_const_def
;	const MAPNAME_OBJECTNAME


FrozenPassage2_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script


TrainerBoarderRonald:
	trainer BOARDER, RONALD, EVENT_BEAT_BOARDER_RONALD, BoarderRonaldSeenText, BoarderRonaldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderRonaldAfterBattleText
	waitbutton
	closetext
	end

BoarderRonaldSeenText:
	text "I'll freeze your"
	line "#MON, so you"
	cont "can't do a thing!"
	done

BoarderRonaldBeatenText:
	text "Darn. I couldn't"
	line "do a thing."
	done

BoarderRonaldAfterBattleText:
	text "I think there's a"
	line "move a #MON"

	para "can use while it's"
	line "frozen."
	done

FrozenPassageIceStone:
	itemball ICE_STONE

FrozenPassageMaxElixer:
	itemball MAX_ELIXER

FrozenPassageRareCandy:
	itemball RARE_CANDY

FrozenPassageHiddenPPUp:
	hiddenitem PP_UP, EVENT_FROZEN_PASSAGE_HIDDEN_PP_UP
FrozenPassageHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_FROZEN_PASSAGE_HIDDEN_FULL_HEAL
FrozenPassageHiddenRevive:
	hiddenitem REVIVE, EVENT_FROZEN_PASSAGE_HIDDEN_REVIVE

FrozenPassage2FakeLadder:
	special FadeOutMusic
	opentext
	writetext FrozenPassage2FakeLadderText
	waitbutton
	pause 60
	writetext ThisLadderIsFakeText
	waitbutton
	closetext
	special RestartMapMusic
	end

ThisLadderIsFakeText:
	text "It doesn't seem"
	line "like a working"
	cont "ladder."

	para "Maybe try the"
	line "other one."
	done

FrozenPassage2FakeLadderText:
	text "What a thrill..."

	para "With darkness, &"
	line "silence through"
	cont "the night..."

	para "What a thriiiilll"

	para "I'm searching and"
	line "I'll melt into"
	cont "you......."

	para "What a fear in my"
	line "heaaart."

	para "BUT YOU'RE SO"
	line "SUPREEEEEEEME!"

	para "I give my LIIIIIFE"
	line "not for honor, but"
	cont "for you!"

	para ""
	line "    (Snake Eater)"

	para "In my tiiiiiime,"
	line "there'll be nooo"
	cont "ooooooone elllse"

	para "CRIIIME, it's the"
	line "way, I'll fly to"
	cont "youuuuuuuuuuu"

	para ""
	line "    (Snake Eater)"


	para "I'm stiiiill in a"
	line "dreeeeeaaaammm"

	para "SNAAAAAAAAAAAKE"
	line "EEEAAAATERRRRRRR"

	para "Someday, you go"
	line "through the rain."

	para "Someday, you feed"
	line "on a treee frooog"

	para "This Ordeal, this"
	line "trial to survive"
	cont "for the day, we"
	cont "seee new liiight!"

	para "I give my life."

	para "Not for honor,"

	para "but for youuuuu"

	para ""
	line "    (Snake Eater)"

	para "In myyy tiiiime"
	line "there'lll bee no"
	cont "oooone eeelse."

	para "CRIIIIIME, IT'S"
	line "the waaayyyy I"
	cont "flyyyyy tooo youu"

	para ""
	line "    (Snake Eater)"

	para "IIIIIII'M STIILL"
	line "IN A DREEEAAAAAMM"

	para "SNAAAAAAAAKEEE"
	line "EEEAAAAATERRRRR"

	para "I'M STIIIIIILLLL"
	line "IN A DREEAAAMMM"

	para "SNAAAAAAAAAAAAAAAAAAAAAAA"
	line "AAAAAAAAARAAAAAAAAAAAAAAA"
	cont "AAAAAAAAAAAKE"
	cont "EAAAAATERRRRRRRRRRRRRRRRR"

	para "(Snake Eaterrrrrr)"
	done
FrozenPassage2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 17,  1, FROZEN_PASSAGE, 3
	warp_event 27, 17, FROZEN_PASSAGE_3, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 27,  3, -1, FrozenPassage2FakeLadder

	def_bg_events
;	bg_event x, y, type, script
	bg_event 50,  8, BGEVENT_ITEM, FrozenPassageHiddenPPUp
	bg_event 41, 17, BGEVENT_ITEM, FrozenPassageHiddenFullHeal
	bg_event 38,  3, BGEVENT_ITEM, FrozenPassageHiddenRevive

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 42,  6, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderRonald, -1
	object_event 39,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FrozenPassageIceStone, EVENT_FROZEN_PASSAGE_ICE_STONE
	object_event 53, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FrozenPassageMaxElixer, EVENT_FROZEN_PASSAGE_MAX_ELIXER
	object_event 47, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FrozenPassageRareCandy, EVENT_FROZEN_PASSAGE_RARE_CANDY
