DEF EEVEE_RANCH_PRICE EQU 750

	object_const_def
;	const MAPNAME_OBJECTNAME
	const EEVEE_RANCH_INTERIOR_RECEPTIONIST
	const EEVEE_RANCH_INTERIOR_JORDAN
	const EEVEE_RANCH_INTERIOR_MARKET
	const EEVEE_RANCH_INTERIOR_COOL_TRAINER_F
	const EEVEE_RANCH_INTERIOR_YOUNGSTER
	const EEVEE_RANCH_INTERIOR_ERIKA
	const EEVEE_RANCH_INTERIOR_TWIN
	const EEVEE_RANCH_INTERIOR_GRANNY
	const EEVEE_RANCH_INTERIOR_SAM

EeveeRanchInterior_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script EeveeRanchInteriorNoop1Scene, SCENE_EEVEE_RANCH_INTERIOR_NOT_PAID
	scene_script EeveeRanchInteriorNoop2Scene, SCENE_EEVEE_RANCH_INTERIOR_PAID
	
	def_callbacks
;	callback type, script

EeveeRanchInteriorNoop1Scene:
EeveeRanchInteriorNoop2Scene:
	end

EeveeRanchInteriorMarketScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_RANCHER_JORDAN
	iftrue .Mart2
	pokemart MARTTYPE_LOCAL, MART_RANCH_1
	closetext
	end

.Mart2:
	pokemart MARTTYPE_LOCAL, MART_RANCH_2
	closetext
	end

EeveeRanchColorfulShelfScript:
	jumptext EeveeRanchColorfulShelfText

EeveeRanchInteriorYoungsterScript:
	jumptextfaceplayer EeveeRanchInteriorYoungsterText

EeveeRanchInteriorErikaScript:
	jumptextfaceplayer EeveeRanchInteriorErikaText

EeveeRanchInteriorGrannyScript:
	jumptextfaceplayer EeveeRanchInteriorGrannyText

EeveeRanchInteriorTwinScript:
	jumptextfaceplayer EeveeRanchInteriorTwinText

EeveeRanchInteriorCoolTrainerFScript:
	jumptextfaceplayer EeveeRanchInteriorCoolTrainerFText

EeveeRanchInteriorSamScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SAM_1
	iftrue .WantWeed
	writetext EeveeRanchInteriorSamIntro
	yesorno
	iffalse .RefusedBattle
	writetext EeveeRanchInteriorSamSeenText
	waitbutton
	closetext
	winlosstext EeveeRanchInteriorSamBeatenText, 0
	loadtrainer LOAFER, SAM1
	startbattle
	reloadmapafterbattle
	opentext
	writetext EeveeRanchInteriorSamAfterBattleText
	waitbutton
	setevent EVENT_BEAT_SAM_1
	checkevent EVENT_GOT_WEED_FROM_SAM
	iftrue .AfterWeed
	iffalse .WantWeed

.RefusedBattle:
	writetext EeveeRanchInteriorRefusedSam
	waitbutton
.WantWeed:
	checkevent EVENT_GOT_WEED_FROM_SAM
	iftrue .AfterWeed
	writetext EeveeRanchInteriorSamOffersWeed
	yesorno
	iffalse .RefusedWeed
	verbosegiveitem ENERGYPOWDER
	iffalse .FullBag
	setevent EVENT_GOT_WEED_FROM_SAM
.AfterWeed:
	writetext EeveeRanchInteriorSamAfterWeed
	waitbutton
	closetext
	end

.FullBag:
	writetext BagTooFullForWeedText
	waitbutton
	done

.RefusedWeed:
	writetext EeveeRanchInteriorRefusedSam
	waitbutton
	closetext
	end

EeveeRanchInteriorJordanScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_RANCHER_JORDAN
	iftrue .AfterBattle
	writetext EeveeRanchInteriorJordanIntroText
	yesorno
	iffalse .RefusedBattle
	writetext EeveeRanchInteriorJordanSeenText
	waitbutton
	closetext
	winlosstext EeveeRanchInteriorJordanBeatenText, 0
	loadtrainer JORDAN, JORDAN1
	startbattle
	reloadmapafterbattle
	opentext
	writetext EeveeRanchInteriorGiveLoveStoneText
	waitbutton
	setevent EVENT_BEAT_RANCHER_JORDAN
	verbosegiveitem LOVE_STONE
	waitbutton
.AfterBattle:
	checkevent EVENT_BEAT_JORDAN_2
	iftrue .AfterBothBattles
	writetext EeveeRanchInteriorJordanAfterBattleText
	waitbutton
	closetext
	end
.AfterBothBattles:
	writetext EeveeRanchInteriorAfterBattleAndHoneonText
	waitbutton
	closetext
	end
.RefusedBattle
	writetext EeveeRanchInteriorRefusedJordan
	waitbutton
	closetext
	end

NeedToPayLeft:
	opentext
	writetext EeeveeRanchInteriorReceptionistExcuseMe
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, RIGHT
	applymovement PLAYER, EeveeRanchInteriorMoveRight
	applymovement PLAYER, EeveeRanchInteriorMoveDown
	turnobject PLAYER, RIGHT
	sjump EeveeRanchInteriorReceptionistScript
	end

NeedToPayRight:
	opentext
	writetext EeeveeRanchInteriorReceptionistExcuseMe
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, RIGHT
	applymovement PLAYER, EeveeRanchInteriorMoveDown
	turnobject PLAYER, RIGHT
	sjump EeveeRanchInteriorReceptionistScript
	end


EeveeRanchInteriorReceptionistScript:
	opentext
	writetext EeveeRanchInteriorReceptionistIntro
	waitbutton
	checkscene
	iftrue .AlreadyPaid
	special PlaceMoneyTopRight
	writetext EeveeRanchInteriorReceptionistPrice
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, EEVEE_RANCH_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, EEVEE_RANCH_PRICE
	setscene SCENE_EEVEE_RANCH_INTERIOR_PAID
.AlreadyPaid:
	writetext EeveeRanchInteriorReceptionistHaveFun
	waitbutton
	closetext
	end
.NotEnoughMoney:
	writetext EeveeRanchInteriorReceptionistBroke
	waitbutton
	closetext
	end
.Refused:
	writetext EeveeRanchInteriorRefusedReceptionist
	waitbutton
	closetext
	end

EeveeRanchInteriorMoveRight:
	step RIGHT
	step_end

EeveeRanchInteriorMoveDown:
	step DOWN
	step_end

EeveeRanchInteriorRefusedReceptionist:
	text "Alright then, we"
	line "hope you change"

	para "your mind and"
	line "return!"
	done

EeveeRanchInteriorReceptionistBroke:
	text "I'm sorry, it"
	line "looks like you're"
	cont "a bit short..."

	para "Try going to the"
	line "SALON, we have a"
	
	para "lot of trainers"
	line "performing there"

	para "that are always"
	line "happy to battle!"
	done

EeveeRanchInteriorReceptionistHaveFun:
	text "Thank you for the"
	line "donation!"

	para "Good luck and"
	line "enjoy yourself!"
	done

EeveeRanchInteriorReceptionistIntro:
	text "Hello! Welcome!"

	para "If you'd like to"
	line "enter the RANCH"
	
	para "to catch some"
	line "EEVEE, we require"

	para "a donation to"
	line "help care for and"
	cont "feed the EEVEE."
	done

EeveeRanchInteriorReceptionistPrice:
	text "It's just ¥750 to"
	line "enter."

	para "Do you want to"
	line "enter?"
	done


EeeveeRanchInteriorReceptionistExcuseMe:
	text "Excuse me!"
	done

EeveeRanchInteriorRefusedJordan:
	text "JORDAN: Okay!"

	para "I'll be right"
	line "here if you"
	cont "change your mind!"
	done

EeveeRanchInteriorJordanAfterBattleText:
	text "JORDAN: Oh, the"
	line "HONEON?"

	para "Sorry, I can't"
	line "just give you a"
	cont "stone for that"
	cont "evolution."

	para "If you want to"
	line "know more about"
	
	para "HONEONs, meet me"
	line "by the COMBEE"
	cont "HIVEs."
	done

EeveeRanchInteriorAfterBattleAndHoneonText:
	text "JORDAN: Good"
	line "luck with what-"
	cont "-ever bullshit"
	
	para "KYLE has you"
	line "doing."
	done

EeveeRanchInteriorGiveLoveStoneText:
	text "JORDAN: Well, I"
	line "lost!"

	para "You've proven you"
	line "can handle this"
	cont "responsibility."

	para "There's no"
	line "#MON AMIE"
	
	para "in GEN II, so I"
	line "had KYLE make"
	
	para "these LOVE STONEs"
	line "for evolving into"
	cont "SYLVEON."

	para "You can buy more"
	line "from the shop now"
	cont "too!"
	done

EeveeRanchInteriorJordanSeenText:
	text "JORDAN: Alright!"
	line "You're no match"
	cont "for my EEVEEs!"
	done

EeveeRanchInteriorJordanBeatenText:
	text "Good job!"
	done

EeveeRanchInteriorJordanIntroText:
	text "JORDAN: Hey!"
	line "Welcome to the"
	cont "Ranch!"

	para "Kyle told me a"
	line "new guy was going"
	cont "be in the area."

	para "Sorry he's making"
	line "you do all this"
	cont "stuff."

	para "We all told him"
	line "to just relax,"
	cont "but that wasn't"
	cont "going to happen."

	para "Anyway, we have"
	line "EEVEE for you to"
	cont "catch, and a shop"
	cont "that sells stones"
	cont "to evolve them."

	para "It also sells our"
	line "produce!"

	para "If you want to"
	line "evolve a SYLVEON"
	cont "though, you'll"
	cont "need to beat me"
	cont "in a #MON"
	cont "battle for a LOVE"
	cont "STONE."

	para "Do you want to"
	line "battle?"
	done

EeveeRanchInteriorSamSeenText:
	text "SAM: Alright,"
	line "KYLE was a dick"
	cont "and didn't put"
	cont "all of my team in"
	cont "the game."

	para "So let's see how"
	line "this goes."
	done

EeveeRanchInteriorSamBeatenText:
	text "Damn."
	done

EeveeRanchInteriorSamAfterBattleText:
	text "You're pretty"
	line "good."

	para "Let's do FIGHTERZ"
	line "next time."

	para "I could take you"
	line "in that I bet."
	done

BagTooFullForWeedText:
	text "SAM: Hey, you got"
	line "too much shit in"

	para "your bag, make"
	line "room in it first."
	done

EeveeRanchInteriorSamAfterWeed:
	text "SAM: Sorry, all I"
	line "got is trash weed"

	para "I heard there's a"
	line "dispensary near"
	cont "AWAKENING BEACH,"

	para "but you need a"
	line "MEDICAL CARD to"
	cont "get anything."

	para "CASEY probably"
	line "knows more."
	done

EeveeRanchInteriorSamOffersWeed:
	text "SAM: Oh hey, want"
	line "some weed?"
	done

EeveeRanchInteriorRefusedSam:
	text "SAM: Alright."
	done

EeveeRanchInteriorSamIntro:
	text "SAM: Hey."

	para "I'm just visiting"
	line "here."

	para "You look kind of"
	line "familiar."

	para "You must be the"
	line "new guy KYLE has"
	cont "running around"
	cont "doing his dirty"
	cont "work."

	para "Shit sucks."

	para "Hey, wanna do a"
	line "#MON battle?"
	done

EeveeRanchInteriorCoolTrainerFText:
	text "Welcome to the"
	line "RANCH!"

	para "I hope you enjoy"
	line "your visit."
	done

EeveeRanchInteriorTwinText:
	text "Grandma is always"
	line "talking about how"

	para "things were back"
	line "in the GEN I days"

	para "I keep telling"
	line "her that SPEED"

	para "has nothing to do"
	line "with critical hit"
	cont "rates, but she is"
	cont "insisting that"
	cont "PERSIAN is OP."

	para "Just put me in a"
	line "home when I get"
	cont "that bad."
	done

EeveeRanchInteriorGrannyText:
	text "Back in my day,"
	line "you only had 3"
	cont "EEVEELUTIONS."

	para "And you had to"
	line "climb to the roof"

	para "of a mansion and"
	line "talk to a weird"
	cont "man to get the"
	cont "EEVEE!"
	done

EeveeRanchInteriorErikaText:
	text "I want my EEVEE"
	line "to become a"
	cont "SYLVEON, but"

	para "you can't buy a"
	line "LOVE STONE from"
	
	para "the MART unless"
	line "you beat JORDAN"
	cont "in a battle..."
	done

EeveeRanchInteriorYoungsterText:
	text "Man, no one wants"
	line "to play the new"
	
	para "COLONIZERS FROM"
	line "BRITTAN x-pansion"
	cont "with me..."

	para "I thought adding"
	line "an entire extra"
	cont "gameboard was a"
	cont "cool addition."
	done

EeveeRanchColorfulShelfText:
	text "Colorful shelves"
	line "full of random"
	cont "craft supplies,"

	para "#MON food, &"
	line "odds and ends."
	done

EeveeRanchInterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9, 13, EEVEE_RANCH_EXTERIOR, 4
	warp_event  8, 13, EEVEE_RANCH_EXTERIOR, 4
	warp_event  8,  0, EEVEE_RANCH_EXTERIOR, 5
	warp_event  9,  0, EEVEE_RANCH_EXTERIOR, 6

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event  8,  1, SCENE_EEVEE_RANCH_INTERIOR_NOT_PAID, NeedToPayLeft
	coord_event  9,  1, SCENE_EEVEE_RANCH_INTERIOR_NOT_PAID, NeedToPayRight

	def_bg_events
;	bg_event x, y, type, script
	bg_event  0,  1, BGEVENT_UP, EeveeRanchColorfulShelfScript
	bg_event  1,  1, BGEVENT_UP, EeveeRanchColorfulShelfScript
	bg_event 16,  9, BGEVENT_UP, EeveeRanchColorfulShelfScript
	bg_event 17,  9, BGEVENT_UP, EeveeRanchColorfulShelfScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 11,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorReceptionistScript, 0
	object_event  2,  2, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorJordanScript, 0
	object_event 12,  3, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorMarketScript, 0
	object_event  2,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorCoolTrainerFScript, 0
	object_event 14, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorYoungsterScript, 0
	object_event 14,  7, SPRITE_ERIKA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorErikaScript, 0
	object_event  4, 12, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorTwinScript, 0
	object_event  6, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorGrannyScript, 0
	object_event  5,  2, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchInteriorSamScript, 0
