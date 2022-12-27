	object_const_def
;	const MAPNAME_OBJECTNAME
	const ROUTE_C_BUG_CATCHER_ED
	const ROUTE_C_BUG_CATCHER_WADE
	const ROUTE_C_PICNICKER_BROOKE
	const ROUTE_C_CAMPER_TODD
	const ROUTE_C_FISHER_ARNOLD
	const ROUTE_C_WHITE_GIRL_JULIE
	const ROUTE_C_TREE_BRIAN
	const ROUTE_C_HIKER_PHILLIP
	const ROUTE_C_PHOTOGRAPHER_NICO
	const ROUTE_C_COOLTRAINER_M
	const ROUTE_C_COOLTRAINER_f
	const ROUTE_C_POKE_BALL1
	const ROUTE_C_POKE_BALL2
	const ROUTE_C_POKE_BALL3
	const ROUTE_C_POKE_BALL4

RouteC_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

RouteCXAttack:
	itemball X_ATTACK

RouteCGreatBall:
	itemball GREAT_BALL

RouteCParalyzHeal:
	itemball PARLYZ_HEAL

RouteCUltraBall:
	itemball ULTRA_BALL

RouteCSignScript:
	jumptext RouteCSignText

TrainerBugCatcherEd:
	trainer BUG_CATCHER, ED, EVENT_BEAT_BUG_CATCHER_ED, BugCatcherEdSeenText, BugCatcherEdBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEdAfterText
	waitbutton
	closetext
	end

TrainerBugCatcherWade1:
	trainer BUG_CATCHER, WADE1, EVENT_BEAT_BUG_CATCHER_WADE, BugCatcherWade1SeenText, BugCatcherWade1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherWade1AfterText
	waitbutton
	closetext
	end

TrainerPicnickerBrooke:
	trainer PICNICKER, BROOKE, EVENT_BEAT_PICNICKER_BROOKE, PicnickerBrookeSeenText, PicnickerBrookeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerBrookeAfterText
	waitbutton
	closetext
	end

TrainerCamperTodd:
	trainer CAMPER, TODD1, EVENT_BEAT_CAMPER_TODD, CamperToddSeenText, CamperToddBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperToddAfterText
	waitbutton
	closetext
	end

TrainerFisherArnold:
	trainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, FisherArnoldSeenText, FisherArnoldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherArnoldAfterText
	waitbutton
	closetext
	end

TrainerWhiteGirlJulie:
	trainer WHITE_GIRL, JULIE, EVENT_BEAT_WHITE_GIRL_JULIE, WhiteGirlJulieSeenText, WhiteGirlJulieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WhiteGirlJulieAfterText
	waitbutton
	closetext
	end

RouteCTreeBrian:
	trainer TREE_BRIAN, TREEBRIAN_2, EVENT_BEAT_TREE_BRIAN_2, RouteCTreeBrianSeenText, RouteCTreeBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext RouteCTreeBrianAfterText
	waitbutton
	verbosegiveitem MYSTERYBERRY, 5
	waitbutton
	writetext RouteCTreeBrianAfterText2
	waitbutton
	closetext
	playsound SFX_TOXIC
	earthquake 40
	waitsfx
	disappear ROUTE_C_TREE_BRIAN
	end

TrainerHikerPhillip:
	trainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerPhillipAfterText
	waitbutton
	closetext
	end

RouteCCoolTrainerM:
	jumptextfaceplayer RouteCCoolTrainerMText

RouteCCoolTrainerF:
	jumptextfaceplayer RouteCCoolTrainerFText


TrainerPhotographerNico:
	trainer PHOTOGRAPHER, NICO, EVENT_BEAT_PHOTOGRAPHER_NICO, PhotographerNicoSeenText, PhotographerNicoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PhotographerNicoAfterText
	waitbutton
	closetext
	end

PhotographerNicoSeenText:
	text "I'm really bored."

	para "Let's have a #"
	line "battle!"
	done

PhotographerNicoBeatenText:
	text "I wish my #MON"
	line "could SURF..."
	done

PhotographerNicoAfterText:
	text "I'm taking PHOTO-"
	line "-JOURNALISM class"

	para "I'm doing an"
	line "expose on that"
	cont "guy on the island"
	cont "over there."

	para "He has to be up to"
	line "something..."
	done

RouteCCoolTrainerFText:
	text "My ENGLISH prof"
	line "is trying to be"
	cont "engaging."

	para "We have to write"
	line "about raising our"
	cont "favorite #MON."

	para "I've never had a"
	line "#MON before"
	cont "so I have to find"
	cont "one and catch it."

	para "I hate this class."
	done

RouteCCoolTrainerMText:
	text "I'm a freshman!"

	para "Everyone seems to"
	line "have #MON here"

	para "I thought people"
	line "were more mature"
	cont "in college."

	para "#MON is for"
	line "babies."
	done

HikerPhillipSeenText:
	text "Hello there, I"
	line "work for the"
	cont "DAILY HATSMAN."

	para "I've been doing a"
	line "walk 'n talk for"
	cont "the last 20 years"
	
	para "and would like to"
	line "ask you what you"
	cont "think about the"
	cont "recent attacks on"
	
	para "the WORLD TRADE"
	line "CENTER?"
	done

HikerPhillipAfterText:
	text "I do an important"
	line "job: fill up the"
	cont "extra space where"
	cont "we couldn't get"
	cont "enough ads."
	done

HikerPhillipBeatenText:
	text "What day is it? I"
	line "missed a final."

	para "Also the birth of"
	line "my child."
	done

RouteCTreeBrianSeenText:
	text "You know what"
	line "those berries"
	cont "are?"
	done

RouteCTreeBrianBeatenText:
	text "They're my balls."
	done

RouteCTreeBrianAfterText:
	text "It is my duty as"
	line "a tree man to"
	cont "provide you with"
	cont "these berries,"

	para "watch the twig!"
	done

RouteCTreeBrianAfterText2:
	text "Those were load-"
	line "-bearing berries."
	done

WhiteGirlJulieSeenText:
	text "I didn't really"
	line "feel like going"
	cont "to class today."

	para "Let's battle"
	line "instead."
	done

WhiteGirlJulieBeatenText:
	text "This was worse"
	line "than TRIGONOMETRY"
	done

WhiteGirlJulieAfterText:
	text "I should've gone"
	line "on ROUTE E today"
	cont "instead."
	done

FisherArnoldSeenText:
	text "Whoah there, got"
	line "a big one on the"
	cont "line!"
	done

FisherArnoldBeatenText:
	text "Looks like I only"
	line "hooked defeat..."
	done

FisherArnoldAfterText:
	text "I haven't had a"
	line "good catch in"
	cont "years."

	para "Maybe I should"
	line "give up fishing"

	para "maybe living too."
	done

RouteCSignText:
	text "Route C"

	para "Leads to ROUTE D"
	line "and RANCHALUTIONS"
	cont "EEVEE RANCH."
	done

CamperToddSeenText:
	text "Hey, sorry my"
	line "girlfriend and I"
	cont "are kind of on a"
	cont "date."

	para "If I don't battle"
	line "you, I'll look"
	cont "like a wuss."
	done

CamperToddBeatenText:
	text "I can't believe"
	line "you won."
	done

CamperToddAfterText:
	text "You could have"
	line "thrown that one"
	cont "so I could look"
	cont "good in front of"
	cont "her."
	done

PicnickerBrookeSeenText:
	text "Excuse me, my"
	line "boyfriend and I"
	cont "are having a"
	cont "picnick."
	done

PicnickerBrookeBeatenText:
	text "You're ruining my"
	line "date, asshole."
	done

PicnickerBrookeAfterText:
	text "I don't know why"
	line "I even bother"
	cont "trying to plan"
	cont "dates."
	done


BugCatcherWade1SeenText:
	text "Aha! You're the"
	line "perfect person to"
	cont "help me determine"
	cont "which SCYTHER is"
	cont "the best!"
	done

BugCatcherWade1BeatenText:
	text "I guess they're"
	line "all too weak..."
	done

BugCatcherWade1AfterText:
	text "It's weird that"
	line "SCYTHER and his"
	cont "evolutions have"
	cont "the same base"
	cont "stat total."
	
	para "It's like they"
	line "aren't evolutions"
	cont "at all."
	done

BugCatcherEdSeenText:
	text "Some say that BUG"
	line "#MON suck, but I"
	cont "think-- No, I"
	cont "know they're the"
	cont "best!"
	done

BugCatcherEdBeatenText:
	text "This does not"
	line "reflect poorly on"
	cont "BUG #MON."
	done

BugCatcherEdAfterText:
	text "There aren't bad"
	line "BUG #MON, only"
	cont "bad trainers."

	para "Except CATERPIE."
	done

RouteC_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id


	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 35, 9, BGEVENT_READ, RouteCSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  6, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherEd, 0
	object_event 27, 11, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherWade1, 0
	object_event 16,  2, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerPicnickerBrooke, 0
	object_event 17,  2, SPRITE_RED, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerCamperTodd, 0
	object_event 20,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherArnold, 0
	object_event 11, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerWhiteGirlJulie, 0
	object_event  7, 11, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, RouteCTreeBrian, EVENT_BEAT_TREE_BRIAN_2
	object_event 30,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerPhillip, 0
	object_event 20, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerPhotographerNico, 0
	object_event 14,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT,0, RouteCCoolTrainerM, 0
	object_event 31, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT,0, RouteCCoolTrainerF, 0
	object_event 34,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteCUltraBall, EVENT_ROUTE_C_ULTRA_BALL
	object_event 24,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteCParalyzHeal, EVENT_ROUTE_C_PARLYZ_HEAL
	object_event  4, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteCGreatBall, EVENT_ROUTE_C_GREAT_BALL
	object_event  9,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteCXAttack, EVENT_ROUTE_C_X_ATTACK
