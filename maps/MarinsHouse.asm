	object_const_def
;	const MAPNAME_OBJECTNAME
	const MARINS_HOUSE_MARIN
	const MARINS_HOUSE_TARIN


MarinsHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script MarinsHouseIntro, SCENE_MARINS_HOUSE_WAKE_UP
	scene_script MarinsHouseNeutral, SCENE_MARINS_HOUSE_NEUTRAL

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_NEWMAP, MarinsHouseFlypointCallback

MarinsHouseFlypointCallback:
	setflag ENGINE_FLYPOINT_MAYBE_VILLAGE
	blackoutmod MAYBE_VILLAGE
	endcallback

MarinsHouseNeutral:
	end

MarinsHouseIntro:
	showemote EMOTE_SLEEP, PLAYER, 30
	turnobject PLAYER, LEFT
	pause 10
	turnobject PLAYER, RIGHT
	pause 10
	turnobject PLAYER, LEFT
	pause 10
	turnobject PLAYER, RIGHT
	turnobject MARINS_HOUSE_MARIN, LEFT
	turnobject MARINS_HOUSE_TARIN, LEFT
	showemote EMOTE_SHOCK, MARINS_HOUSE_MARIN, 20
	showemote EMOTE_SHOCK, MARINS_HOUSE_TARIN, 20
	pause 10
	turnobject PLAYER, LEFT
	pause 10
	turnobject PLAYER, RIGHT
	pause 10
	turnobject PLAYER, DOWN
	pause 10
	showemote EMOTE_BOLT, PLAYER, 10
	applymovement MARINS_HOUSE_MARIN, MarinWalksToBed
	turnobject MARINS_HOUSE_MARIN, LEFT
	turnobject PLAYER, RIGHT
	showemote EMOTE_QUESTION, PLAYER, 20
	opentext
	writetext MarinIntroText
	waitbutton
	closetext
	takeitem CHAINSAW
	takeitem HM_FLY
	applymovement MARINS_HOUSE_MARIN, MarinWalksBack
	pause 10
	applymovement PLAYER, MarinWalksBack
	turnobject MARINS_HOUSE_MARIN, LEFT
	opentext
	writetext MarinYourStuffText
	waitbutton
	closetext
	turnobject MARINS_HOUSE_MARIN, DOWN
	setscene SCENE_MARINS_HOUSE_NEUTRAL
	end

MarinIntroText:
	text "What a relief! I"
	line "thought you'd"
	cont "never wake up!"

	para "you were tossing"
	line "and turning..."

	para "What? #MON?"
	line "No, my name's"
	cont "MARIN!"

	para "You must still be"
	line "feeling a little"
	cont "woozy."

	para "You are on BRO"
	line "ISLAND!"
	
	para "You must be sore,"
	line "I found you on"
	cont "AWAKENING BEACH."

	para "You washed ashore"
	line "from somewhere."

	done

MarinYourStuffText:
	text "Follow the road"
	line "SOUTH to reach"
	cont "the beach where I"
	cont "found you."

	para "There was some"
	line "stuff that washed"
	cont "up on the same"
	cont "beach, so if you"
	cont "are missing"
	cont "anything, you"
	cont "should take a"
	cont "look."

	para "Be careful, since"
	line "you washed ashore"
	cont "a lot of pocket"
	cont "monsters have"
	cont "been in the area."
	done

MarinWalksToBed:
	step LEFT
	step UP
	step_end

MarinWalksBack:
	step RIGHT
	step DOWN
	step_end

MarinsHouseMarin:
	opentext
	checkitem CHAINSAW
	iffalse .YourStuff
	writetext MarinNeutralText

.YourStuff
	writetext MarinYourStuffText
	waitbutton
	closetext
	end

MarinNeutralText:
	text "I love u"
	done

MarinsHouseTarin:
	text "Well, <PLAYER>,"
	line "ya finally"
	cont "snapped out of it"

	para "Name's Tarin..."

	para "Hope yer feelin'"
	line "better... What?"

	para "How did I know"
	line "your name?"

	para "You think it's"
	line "weird eh?"

	para "Well, lotsa"
	line "weird stuff can"
	cont "happen."
	end

MarinsHouseShelf:
	jumptext MarinsHouseShelfText

MarinsHouseShelfText:
	text "You found Marin's"
	line "???"

	para "Better put it"
	line "back..."
	done

MarinsHousePot:
	jumptext MarinsHousePotText

MarinsHousePotText:
	text "You feel a sudden"
	line "urge to smash the"
	cont "pot..."
	done

MarinsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MAYBE_VILLAGE, 5
	warp_event 6, 8, MAYBE_VILLAGE, 5

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 8, 1, BGEVENT_READ, MarinsHouseShelf
	bg_event  3,  7, BGEVENT_READ, MarinsHousePot
	bg_event  2,  7, BGEVENT_READ, MarinsHousePot

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 6, 4, SPRITE_MARIN, SPRITEMOVEDATA_STANDING_DOWN,0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MarinsHouseMarin, 0
	object_event  8,  5, SPRITE_TARIN, SPRITEMOVEDATA_STANDING_DOWN,0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MarinsHouseTarin, 0
