	object_const_def
;	const MAPNAME_OBJECTNAME
	const BRIANS_HOUSE_CHAIR_BRIAN
	const BRIANS_HOUSE_CHAIR_BRIAN_2
	const BRIANS_HOUSE_RIGHT_GUARD_BRIAN
	const BRIANS_HOUSE_WALL_BRIAN
	const BRIANS_HOUSE_KITCHEN_BRIAN
	const BRIANS_HOUSE_DOWN_GUARD_BRIAN
	const BRIANS_HOUSE_TABLE_BRIAN
	const BRIANS_HOUSE_TV_BRIAN


BriansHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script BriansHouseNoopScene1, SCENE_BRIANS_HOUSE_NORMAL
	scene_script BriansHouseNoopScene2, SCENE_BRIANS_HOUSE_CHAIR_BRIAN_GONE

	def_callbacks
;	callback type, script

BriansHouseNoopScene1:
BriansHouseNoopScene2:
	end

BriansHouseBookshelf:
BriansHouseDownGuardBrian:
BriansHouseRightGuardBrian:
	opentext
	writetext BriansHouseGuardNothingToSee
	waitbutton
	closetext
	end

BriansHouseGuardNothingToSee:
	text "BRIAN: Oh hey"
	line "dude."

	para "There's nothing"
	line "to see behind me."
	done

BriansHouseKitchenBrian:
	jumptextfaceplayer BriansHouseBrianKitchenText

BriansHouseBrianKitchenText:
	text "BRIAN: Hey dude!"
	line "Just playing some"
	cont "MARIO KART."
	done

BriansHouseWallBrian:
	opentext
	writetext BriansHouseWallBrianText
	end

BriansHouseWallBrianText:
	text "BRIAN: BRIAN: BRIAN: BRIAN: BRIAN: BRIANB: BRIAN: BRIAN: BRIAN:"
	line "DRRRRRRRRRRRRR"
	line "DRRRRRRRRRRRRRRRRRRRRR"
	line "DRRRR"
	done

BriansHouseChairBrian:
	faceplayer
	opentext
	writetext BriansHouseChairBrianText
	disappear BRIANS_HOUSE_CHAIR_BRIAN
	setevent EVENT_CHAIR_BRIAN_DISAPPEARED
	clearevent EVENT_CHAIR_BRIAN_2_DISAPPEARED
	appear BRIANS_HOUSE_CHAIR_BRIAN_2
	playsound SFX_BUBBLEBEAM
	setscene SCENE_BRIANS_HOUSE_CHAIR_BRIAN_GONE
	closetext
	end

BriansHouseChairBrianText:
	text "BRIAN: Hey man."

	para "You're the one"
	line "that kept doing"
	cont "#MON battles"
	cont "with me."

	para "You're pretty"
	line "good."

	para "Like the thing"
	line "OCELOT says."

	para "Get it?"

	para "It's a reference."

	para "Sorry, my heart's"
	line "just not in this"
	cont "right now."

	para "Something weird's"
	line "going on in this"
	cont "house."

	para "You should get"
	line "out while you"
	cont "still can."

	para "I don't know if"
	line "he's going to let you. He's been so controlling."
	done

BriansHouseChairBrian2:
	jumptextfaceplayer BriansHouseChairBrian2Text

BriansHouseChairBrian2Text:
	text "BRIAN: Hey man."

	para "You're the one"
	line "that kept doing"
	cont "#MON battles"
	cont "with me."

	para "You're pretty"
	line "good."

	para "Get it? I'm like"
	line "BRIAN OCELOT or"
	cont "something."
	done


BriansHouseTableBrian:
	jumptextfaceplayer BriansHouseTableBrianText

BriansHouseTableBrianText:
	text "BRIAN: Sup dude."

	para "I'm just chillin."
	done

BriansHouseTVBrian:
	jumptextfaceplayer BriansHouseTVBrianText

BriansHouseTVBrianText:
	text "BRIAN: Oh hey"
	line "dude, you made it!"

	para "I'm playing that"
	line "new YOSHI game."

	para "It feels just"
	line "like the last"
	cont "one though."

	para "I think there's"
	line "a coop mode, you"
	cont "should forget"
	cont "about whatever it"
	cont "is you're here to"
	cont "do and just sit"
	cont "down and play"
	cont "the game with me."
	done

YouCannotLeaveBriansHouse:
	opentext
	writetext WhatAreYouDoingBrian
	waitbutton
	changeblock 12,  0, $32
	changeblock  6, 12, $0f
	changeblock  6,  0, $32
	changeblock  8,  0, $32
	changeblock 10,  0, $32
	changeblock 10,  6, $32
	changeblock 12,  6, $32
	changeblock  4,  6, $32
	changeblock  8,  2, $0f
	changeblock 10,  2, $0f
	changeblock  0,  8, $0f
	changeblock  0, 10, $0f
	changeblock  2,  8, $0f
	changeblock  2, 10, $0f
	changeblock  4,  8, $0f
	changeblock  4, 10, $0f
	changeblock 10,  8, $0f
	changeblock 10, 10, $0f
	changeblock 12,  8, $0f
	changeblock 12, 10, $0f
	changeblock  4, 12, $0f
	changeblock  8, 12, $0f
	disappear BRIANS_HOUSE_RIGHT_GUARD_BRIAN
	disappear BRIANS_HOUSE_DOWN_GUARD_BRIAN
	disappear BRIANS_HOUSE_CHAIR_BRIAN_2
	disappear BRIANS_HOUSE_WALL_BRIAN
	disappear BRIANS_HOUSE_TABLE_BRIAN
	reloadmappart
	special FadeOutMusic
	special FadeOutPalettes
	closetext
	end

YouCannotLeaveBriansHouseTop:
	scall YouCannotLeaveBriansHouse
	disappear BRIANS_HOUSE_TV_BRIAN
	applymovement BRIANS_HOUSE_KITCHEN_BRIAN, BackdoorBrianGrabsYou
	follow BRIANS_HOUSE_KITCHEN_BRIAN, PLAYER
	special FadeInPalettes
	applymovement BRIANS_HOUSE_KITCHEN_BRIAN, BackDoorBrianBringsYouBack
	stopfollow
	turnobject BRIANS_HOUSE_KITCHEN_BRIAN, RIGHT
	playmusic MUSIC_RUINS_OF_ALPH_RADIO
	pause 80
	cry FURIOUSB
	waitsfx
	applymovement PLAYER, BriansTossYouIntoPit
	end

YouCannotLeaveBriansHouseBottomLeft:
	scall YouCannotLeaveBriansHouse
	disappear BRIANS_HOUSE_KITCHEN_BRIAN
	applymovement BRIANS_HOUSE_TV_BRIAN, FrontDoorBrianGrabsYou
	follow BRIANS_HOUSE_TV_BRIAN, PLAYER
	special FadeInPalettes
	applymovement BRIANS_HOUSE_TV_BRIAN, FrontDoorBrianBringsYouBack
	stopfollow
	turnobject BRIANS_HOUSE_TV_BRIAN, RIGHT
	playmusic MUSIC_RUINS_OF_ALPH_RADIO
	pause 80
	cry FURIOUSB
	waitsfx
	applymovement PLAYER, BriansTossYouIntoPit
	end

YouCannotLeaveBriansHouseBottomRight:
	scall YouCannotLeaveBriansHouse
	disappear BRIANS_HOUSE_KITCHEN_BRIAN
	applymovement BRIANS_HOUSE_TV_BRIAN, FrontDoorBrianGrabsYouRight
	applymovement BRIANS_HOUSE_TV_BRIAN, FrontDoorBrianGrabsYou
	follow BRIANS_HOUSE_TV_BRIAN, PLAYER
	special FadeInPalettes
	applymovement BRIANS_HOUSE_TV_BRIAN, FrontDoorBrianSecondMovesLeft
	applymovement BRIANS_HOUSE_TV_BRIAN, FrontDoorBrianBringsYouBack
	stopfollow
	turnobject BRIANS_HOUSE_TV_BRIAN, RIGHT
	playmusic MUSIC_RUINS_OF_ALPH_RADIO
	pause 80
	cry FURIOUSB
	waitsfx
	applymovement PLAYER, BriansTossYouIntoPit
	end

WhatAreYouDoingBrian:
	text "I don't think so."
	done

BriansTossYouIntoPit:
	jump_step UP
	step_end

BackdoorBrianGrabsYou:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

BackDoorBrianBringsYouBack:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

BackDoorBrianSecondMovesUp:
	step UP
	step_end


FrontDoorBrianGrabsYou:
	step RIGHT
	step RIGHT
	step DOWN
	step_end

FrontDoorBrianGrabsYouRight:
	step RIGHT
	step_end

FrontDoorBrianBringsYouBackLeft:
	step LEFT
	step_end

FrontDoorBrianBringsYouBack:
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step LEFT
	step_end

FrontDoorBrianSecondMovesLeft:
	step LEFT
	step LEFT
	step_end

BriansHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  6, 13, IVY_ROAD, 3
	warp_event  7, 13, IVY_ROAD, 3
	warp_event 12,  0, IVY_ROAD, 5
	;warp_event  3,  1, DARK_BASEMENT, 1
	;warp_event  3,  2, DARK_BASEMENT, 1
	;warp_event  3,  3, DARK_BASEMENT, 1
	;warp_event  2,  3, DARK_BASEMENT, 1
	;warp_event  1,  3, DARK_BASEMENT, 1
	;warp_event  0,  3, DARK_BASEMENT, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 12,  1, SCENE_BRIANS_HOUSE_CHAIR_BRIAN_GONE, YouCannotLeaveBriansHouseTop
	coord_event  7, 12, SCENE_BRIANS_HOUSE_CHAIR_BRIAN_GONE, YouCannotLeaveBriansHouseBottomRight
	coord_event  6, 12, SCENE_BRIANS_HOUSE_CHAIR_BRIAN_GONE, YouCannotLeaveBriansHouseBottomLeft

	def_bg_events
;	bg_event x, y, type, script
	bg_event 11,  7, BGEVENT_READ, BriansHouseBookshelf
	bg_event 12,  7, BGEVENT_READ, BriansHouseBookshelf
	bg_event 13,  7, BGEVENT_READ, BriansHouseBookshelf

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  1,  8, SPRITE_RED, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseChairBrian, EVENT_CHAIR_BRIAN_DISAPPEARED
	object_event  1, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseChairBrian2, EVENT_CHAIR_BRIAN_2_DISAPPEARED
	object_event  5,  4, SPRITE_RED, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseRightGuardBrian, 0
	object_event  6,  5, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseWallBrian, 0
	object_event  7,  1, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseKitchenBrian, 0
	object_event  2,  5, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseDownGuardBrian, 0
	object_event 13,  9, SPRITE_RED, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseTableBrian, 0
	object_event  4, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BriansHouseTVBrian, 0
