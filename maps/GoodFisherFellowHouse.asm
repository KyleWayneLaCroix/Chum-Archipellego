	object_const_def
	const GOOD_FISHER_FELLOW
	const GOOD_FISHER_FELLOW_FOLLOWER

GoodFisherFellowHouse_MapScripts:
	def_scene_scripts

	def_callbacks

GoodFisherFellowScript::
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD
	iftrue .GotGoodRod
	writetext GoodFisherFellowText_Question
	yesorno
	iffalse .Refused
	writetext GoodFisherFellowText_Yes
	promptbutton
	verbosegiveitem GOOD_ROD
	writetext GoodFisherFellowText_GiveOldRod
	waitbutton
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end

.Refused:
	writetext GoodFisherFellowText_No
	waitbutton
	closetext
	end

.GotGoodRod:
	writetext GoodFisherFellowText_After
	waitbutton
	closetext
	end

GoodFisherFellowFollowerScript:
	jumptextfaceplayer GoodFisherFellowFollowerText

GoodFisherFellowFollowerText:
	text "I came here on my"
	line "knees to beg him"
	cont "to show me how he"
	cont "works his magic"
	cont "with his GOOD ROD"

	para "I am here to"
	line "suck up anything"
	cont "he can give me,"
	cont "and I will do"
	cont "what it takes to"
	cont "satisfy him."
	done

GoodFisherFellowText_Question:
	text "Why hello there,"
	line "people call me"
	cont "the GOOD FISHER"
	cont "FELLOW."

	para "Talk of my ROD's"
	line "been on every-"
	cont "-body's lips!"

	para "Everyone tells me"
	line "how good it is to"
	cont "use my ROD."

	para "Not too short,"
	line "not too long,"
	cont "solid, yet still"
	cont "pliable."

	para "Yesiree, my ROD"
	line "has made me quite"
	cont "popular."

	para "Would you like to"
	line "get your hands on"
	cont "my ROD?"
	done

GoodFisherFellowText_Yes:
	text "Heh, that's good"
	line "to hear."

	para "Once you feel my"
	line "GOOD ROD in your"
	cont "hands and give it"
	cont "a good tug, you"
	cont "are going to be"
	cont "satisfied!"
	done

GoodFisherFellowText_GiveOldRod:
	text "Fishing is great!"

	para "Nothing feels"
	line "better than a big"
	cont "tug on my ROD"
	cont "while I'm out in"
	cont "nature."
	done

GoodFisherFellowText_No:
	text "Oh. That's rather"
	line "disappointing…"

	para "If you ever want"
	line "a taste of my"
	cont "ROD, you know"
	cont "where to find me."
	done

GoodFisherFellowText_After:
	text "Nice to see you"
	line "again."

	para "How's it been"
	line "handling my ROD?"

	para "It can be a bit"
	line "big and hard to"
	cont "hold onto, but"
	cont "once you get"
	cont "yourself around"
	cont "it, it's the best"
	cont "feeling."
	done

GoodFisherFellowHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, ROUTE_E, 1
	warp_event 3, 7, ROUTE_E, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoodFisherFellowScript, -1
	object_event  4,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoodFisherFellowFollowerScript, -1
