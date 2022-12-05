	object_const_def
	const OLD_FISHER_FELLOW

OldFisherFellowHouse_MapScripts:
	def_scene_scripts

	def_callbacks

OldFisherFellowScript::
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .GotOldRod
	writetext OldFisherFellowText_Question
	yesorno
	iffalse .Refused
	writetext OldFisherFellowText_Yes
	promptbutton
	verbosegiveitem OLD_ROD
	writetext OldFisherFellowText_GiveOldRod
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.Refused:
	writetext OldFisherFellowText_No
	waitbutton
	closetext
	end

.GotOldRod:
	writetext OldFisherFellowText_After
	waitbutton
	closetext
	end

OldFisherFellowText_Question:
	text "Why hello there,"
	line "people call me"
	cont "the OLD FISHER"
	cont "FELLOW."

	para "You ever see"
	line "others fishing?"

	para "Did you wish that"
	line "could be you?"

	para "Standing there,"
	line "tasting the salt."

	para "Holding a firm"
	line "rod in your hands"
	cont "feeling it jerk"
	cont "about, getting"
	cont "salty sweat all"
	cont "over your body"
	cont "and face."

	para "Would you like me"
	line "to give you"
	cont "my ROD?"
	done

OldFisherFellowText_Yes:
	text "Heh, that's good"
	line "to hear."

	para "Now be careful,"
	line "this thing can"
	cont "get slippery!"
	done

OldFisherFellowText_GiveOldRod:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"

	para "stream, try out"
	line "my OLD ROD."
	done

OldFisherFellowText_No:
	text "Oh. That's rather"
	line "disappointing…"
	done

OldFisherFellowText_After:
	text "Yo, kid. How is"
	line "my OLD ROD"
	cont "treating you?"
	done

OldFisherFellowHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, GEAR_CITY, 7
	warp_event 3, 7, GEAR_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OldFisherFellowScript, -1
