	object_const_def
	const ROUTEA_BUG_CATCHER
	const ROUTEA_FISHER
	const ROUTEA_YOUNGSTER
	const ROUTEA_SWIMMER_F
	const ROUTEA_COOLTRAINER_F
	const ROUTEA_GENTLEMAN
	const ROUTEA_COOLTRAINER_M
	const ROUTEA_BALL_BRIAN
	const ROUTEA_FRUIT_TREE1
	const ROUTEA_FRUIT_TREE2
	const ROUTEA_POKE_BALL1
	const ROUTEA_POKE_BALL2
	const ROUTEA_POKE_BALL3

RouteA_MapScripts:
	def_scene_scripts

	def_callbacks

RouteAFruitTree1:
	fruittree FRUITTREE_ROUTE_A_1

RouteAFruitTree2:
	fruittree FRUITTREE_ROUTE_A_2

TrainerRouteABallBrian:
	trainer BALL_BRIAN, BALLBRIAN_1, EVENT_BEAT_BALL_BRIAN_1, RouteABallBrianSeenText, RouteABallBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext RouteABallBrianAfterText
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	disappear ROUTEA_BALL_BRIAN
	opentext
	verbosegiveitem FAST_BALL
	closetext
	end

TrainerBugCatcherDon:
	trainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, BugCatcherDonSeenText, BugCatcherDonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDonAfterText
	waitbutton
	closetext
	end

TrainerFisherJustin:
	trainer FISHER, JUSTIN, EVENT_BEAT_FISHER_JUSTIN, FisherJustinSeenText, FisherJustinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherJustinAfterText
	waitbutton
	closetext
	end


TrainerYoungsterMikey:
	trainer YOUNGSTER, MIKEY, EVENT_BEAT_YOUNGSTER_MIKEY, YoungsterMikeySeenText, YoungsterMikeyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterMikeyAfterText
	waitbutton
	closetext
	end

RouteAGentlemanScript:
	jumptextfaceplayer RouteAGentlemanText

RouteACoolTrainerFScript:
	jumptextfaceplayer RouteACoolTrainerFText

RouteASwimmerFScript:
	jumptextfaceplayer RouteASwimmerFText

RouteACaptainScript:
	jumptextfaceplayer RouteACaptainText

RouteAGreatBall:
	itemball GREAT_BALL, 2

RouteASuperPotion:
	itemball SUPER_POTION

RouteATM01:
	itemball SUPER_POTION

RouteASign:
	jumptext RouteASignText

RouteASignText:
	text "ROUTE A"
	line "AWAKENING BEACH"
	cont "to GEAR CITY"
	done

BugCatcherDonSeenText:
	text "Instead of a bug"
	line "#MON, I found"
	cont "a trainer!"
	done

BugCatcherDonBeatenText:
	text "I guess maybe I"
	line "need more bugs."
	done

BugCatcherDonAfterText:
	text "I ran out of #"
	line "BALLS while I was"
	cont "catching #MON."

	para "I should've bought"
	line "some more…"
	done

FisherJustinSeenText:
	text "Shit!"

	para "You made me lose"
	line "that fish!"
	done

FisherJustinBeatenText:
	text "You still owe me"
	line "a fish."
	done

FisherJustinAfterText:
	text "You know it's not"
	line "easy fishing for"
	cont "#MON."

	para "Unlike regular"
	line "fish, #MON"
	cont "sometimes can"
	cont "shock you or use"
	cont "psychic powers."

	para "It's a hard life."
	done


YoungsterMikeySeenText:
	text "You're a #MON"
	line "trainer, right?"

	para "Then you have to"
	line "battle!"

	para "It's the law!"
	done

YoungsterMikeyBeatenText:
	text "That's strange."
	line "I usually win."
	done

YoungsterMikeyAfterText:
	text "My mom said I was"
	line "the best trainer."

	para "You must have"
	line "cheated."

	para "I'm reporting you"
	cont "to the mods."
	done

RouteACoolTrainerFText:
	text "I'm not a trainer."

	para "Some of us were"
	line "here before the"
	cont "#MON showed"
	cont "up and have real"
	cont "hobbies."

	para "I'm on a hike."
	done

RouteASwimmerFText:
 	text "I just love to"
 	line "go for a swim."

 	para "Too bad you got"
 	line "a #MON."

 	para "Now you can't"
 	line "swim on your own"
 	cont "AND you need to"
 	cont "teach them how"
 	cont "to carry you."

 	para "Sucker."
 	done

RouteABallBrianSeenText:
 	text "Whoah, watch the"
 	line "hands there buddy"
 	done

RouteABallBrianBeatenText:
 	text "×farts×"
 	done

RouteABallBrianAfterText:
 	text "When I lose in a"
 	line "#MON battle, I"
 	cont "explode!"
 	done

 RouteAGentlemanText:
 	text "Did you know that"
 	line "BERRY TREES now"
 	cont "can give you more"
 	cont "than 1 BERRY at a"
 	cont "time?"

 	para "The miracles of"
 	line "modern science!"
 	done

 RouteACaptainText:
 	text "I can't believe"
 	line "you came back to"
 	cont "ROUTE A after so"
 	cont "long."

 	para "You know this"
 	line "isn't a METROID-"
 	cont "-VANIA, right?"
 	done

RouteA_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 49, 13, ROUTE_A_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 54, 12, BGEVENT_READ, RouteASign

	def_object_events
	object_event 45,  1, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDon, -1
	object_event 16, 5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherJustin, -1
	object_event 28, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerYoungsterMikey, -1
	object_event  6,  2, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RouteASwimmerFScript, -1
	object_event 38, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 4, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RouteACoolTrainerFScript, -1
	object_event 25,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RouteAGentlemanScript, -1
	object_event  8,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RouteACaptainScript, -1
	object_event 20, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerRouteABallBrian, EVENT_BEAT_BALL_BRIAN_1
	object_event 25,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteAFruitTree1, -1
	object_event 23,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteAFruitTree2, -1
	object_event 56,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteAGreatBall, EVENT_ROUTE_A_GREAT_BALL
	object_event 30, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteATM01, EVENT_ROUTE_A_TM01
	object_event 32, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteASuperPotion, EVENT_ROUTE_A_SUPER_POTION
