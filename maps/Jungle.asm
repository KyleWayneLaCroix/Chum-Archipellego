	object_const_def
;	const MAPNAME_OBJECTNAME
	const JUNGLE_PHOTOGRAPHER
	const JUNGLE_CAMPER
	const JUNGLE_BIRD_KEEPER
	const JUNGLE_BUG_CATCHER
	const JUNGLE_BLACKBELT_YOSHI
	const JUNGLE_BLACKBELT_KENJI
	const JUNGLE_PICNICKER
	const JUNGLE_ROCK_BRIAN
	const JUNGLE_POKE_BALL_1
	const JUNGLE_POKE_BALL_2
	const JUNGLE_POKE_BALL_3
	const JUNGLE_POKE_BALL_4
	const JUNGLE_POKE_BALL_5
	const JUNGLE_FRUIT_TREE_1
	const JUNGLE_FRUIT_TREE_2

MuscleJungle_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_NEWMAP, JungleFlypointCallback


JungleFlypointCallback:
	checkitem HM_STRENGTH
	iffalse .End
	setflag ENGINE_FLYPOINT_JUNGLE
.End:
	endcallback

JungleFruitTree1:
	fruittree FRUITTREE_JUNGLE_1

JungleFruitTree2:
	fruittree FRUITTREE_JUNGLE_2

JungleHyperPotion:
	itemball HYPER_POTION

JungleTMDig:
	itemball TM_DIG

JungleEther:
	itemball ETHER

JungleRareCandy:
	itemball RARE_CANDY

JungleSuperRepel:
	itemball SUPER_REPEL

TrainerPhotographerTroy:
	trainer PHOTOGRAPHER, TROY, EVENT_BEAT_PHOTOGRAPHER_TROY, PhotographerTroySeenText, PhotographerTroyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PhotographerTroyAfterBattleText
	waitbutton
	closetext
	end


TrainerCamperIvan:
	trainer CAMPER, IVAN, EVENT_BEAT_CAMPER_IVAN, CamperIvanSeenText, CamperIvanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperIvanAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperAbe:
	trainer BIRD_KEEPER, ABE, EVENT_BEAT_BIRD_KEEPER_ABE, BirdKeeperAbeSeenText, BirdKeeperAbeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperAbeAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherJosh:
	trainer BUG_CATCHER, JOSH, EVENT_BEAT_BUG_CATCHER_JOSH, BugCatcherJoshSeenText, BugCatcherJoshBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherJoshAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackBeltYoshi:
	trainer BLACKBELT_T, YOSHI, EVENT_BEAT_BLACKBELT_YOSHI, BlackBeltYoshiSeenText, BlackBeltYoshiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackBeltYoshiAfterBattleText
	waitbutton
	closetext
	end


TrainerBlackbeltKenji:
	trainer BLACKBELT_T, KENJI, EVENT_BEAT_BLACKBELT_KENJI, BlackBeltKenjiSeenText, BlackBeltKenjiBeatenText, 0, .Script

.Script:
	opentext
	writetext BlackBeltKenjiAfterBattleText
	waitbutton
	closetext
	playsound SFX_PERISH_SONG
	waitsfx
	disappear JUNGLE_BLACKBELT_KENJI
	refreshscreen
	opentext
	writetext BlackBeltKenjiBlackBelt
	waitbutton
	verbosegiveitem BLACKBELT_I
	waitbutton
	closetext
	end


TrainerPicnickerKim:
	trainer PICNICKER, KIM, EVENT_BEAT_PICNICKER_KIM, PicnickerKimSeenText, PicnickerKimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerKimAfterBattleText
	waitbutton
	closetext
	end

MuscleJungleRockBrian:
	trainer ROCK_BRIAN, ROCKBRIAN_1, EVENT_BEAT_ROCK_BRIAN_1, JungleRockBrianSeenText, JungleRockBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext JungleRockBrianAfterBattleText
	waitbutton
	closetext
	cry UNOWN
	waitsfx
	earthquake 200
	playsound SFX_STRENGTH
	pause 10
	playsound SFX_STRENGTH
	pause 10
	playsound SFX_STRENGTH
	pause 10
	playsound SFX_STRENGTH
	pause 10
	disappear JUNGLE_ROCK_BRIAN
	refreshscreen
	opentext
	verbosegiveitem BLACK_ROCK
	waitbutton
	closetext
	end

JungleRyanHouseSignScript:
	jumptext JungleRyanHouseSignText

JungleHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_JUNGLE_HIDDEN_MAX_REVIVE

JungleHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_JUNGLE_HIDDEN_MAX_POTION

JungleHiddenCarbos:
	hiddenitem CARBOS, EVENT_JUNGLE_HIDDEN_CARBOS


JungleRyanHouseSignText:
	text "RYAN'S CABIN"
	done

JungleRockBrianSeenText:
	text "ARE YOU READY TO"

	para "ROOOOOOOOOOOCK!?!"
	done

JungleRockBrianBeatenText:
	text "You ROCKed my"
	line "SOCKs off."
	done

JungleRockBrianAfterBattleText:
	text "BRIAN: Thanks for"
	line "knocking some"
	cont "sense into me man."

	para "I don't know what"
	line "has been going on"
	cont "with me lately."

	para "Why am I a giant"
	line "ONIX?"

	para "I feel like we've"
	line "met a few times"
	cont "now..."

	para "My head just is"
	line "killing me."

	para "I keep getting"
	line "flashes of other"
	cont "places, maybe"
	cont "other times?"

	para "I came back from"
	line "#FORNIA, then"

	para "then"

	para "Who are you?"
	done

PhotographerTroySeenText:
	text "There's so much"
	line "to take pictures"
	cont "of in the JUNGLE!"
	done

PhotographerTroyBeatenText:
	text "I can only take"
	line "selfies of my own"
	cont "failure..."
	done

PhotographerTroyAfterBattleText:
	text "I'm here to get a"
	line "pic of an ONIX"
	cont "someone said was"
	cont "here."

	para "There aren't any"
	line "ONIXes in the"
	cont "ARCHIPELAGO, so"
	cont "I could sell that"
	cont "pic for millions!"
	done

CamperIvanSeenText:
	text "Camping in the"
	line "jungle is rough."

	para "I haven't eaten"
	line "in days!"

	para "You look pretty"
	line "tasty..."
	done

CamperIvanBeatenText:
	text "Okay. You win."

	para "You can eat my"
	line "left leg since"
	cont "you were the"
	cont "victor."
	done

CamperIvanAfterBattleText:
	text "I got a certain"
	line "thrill when I"
	cont "knew I would have"
	cont "to resort to"
	cont "cannibalism."
	done

BirdKeeperAbeSeenText:
	text "Duck fighting is"
	line "the ultimate"
	cont "expression of"
	cont "fighting spirit!"
	done

BirdKeeperAbeBeatenText:
	text "Four score and"
	line "seven seconds"
	cont "ago, I lost this"
	cont "battle."

BirdKeeperAbeAfterBattleText:
	text "If you want a"
	line "LUXWAN or a"
	cont "SIRFETCH'D, you"
	cont "will need a"
	cont "GENDER CLINIC."

	para "If you head south"
	line "of UNIVERCITY,"
	cont "you can get to"
	cont "the one I used."
	done

BugCatcherJoshSeenText:
	text "The BUG #MON"
	line "in the JUNGLE"
	cont "are scary-big!"

	para "You're fucked!"
	done

BugCatcherJoshBeatenText:
	text "How could I lose?"

	para "My BUGs were so"
	line "big!"
	done

BugCatcherJoshAfterBattleText:
	text "Turns out that"
	line "everyone was"
	cont "right."

	para "It's not the size"
	line "of the BUG that"
	cont "matters."

	para "It's what you do"
	line "with it."
	done

BlackBeltYoshiSeenText:
	text "The MUSCLE JUNGLE"
	line "is home to many"
	cont "powerful #MON."
	
	para "Are you ready to"
	line "face your maker?"
	done

BlackBeltYoshiBeatenText:
	text "I was the one"
	line "unready to meet"
	cont "my maker."
	done

BlackBeltYoshiAfterBattleText:
	text "I need to catch"
	line "even stronger"
	cont "#MON."

	para "I will win next"
	line "time we do battle"
	done

BlackBeltKenjiSeenText:
	text "I'm on an intense"
	line "training regimin."

	para "I'm like a shark"
	line "now, if I'm ever"
	cont "not training,"
	
	para "I'll drop dead."
	done

BlackBeltKenjiBeatenText:
	text "You just killed"
	line "me."
	done

BlackBeltKenjiAfterBattleText:
	text "You fucking"
	line "murderer."
	done

BlackBeltKenjiBlackBelt:
	text "Now that you have"
	line "killed a"
	cont "BLACKBELT, you"
	cont "become one, like"
	cont "in HIGHLANDER."
	done

PicnickerKimSeenText:
	text "I love to go on"
	line "picnicks in the"
	cont "JUNGLE!"
	done

PicnickerKimBeatenText:
	text "What a refreshing"
	line "battle!"
	done

PicnickerKimAfterBattleText:
	text "JUNGLE picnicking"
	line "is second only to"
	cont "JUNGLE #MON"
	cont "battling."
	done

MuscleJungle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 21, 51, JUNGLE_GATE, 3
	warp_event 22, 51, JUNGLE_GATE, 4
	warp_event 22,  7, RYAN_TRAINING_HUT, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 19, 7, BGEVENT_READ, JungleRyanHouseSignScript
	bg_event 22, 17, BGEVENT_ITEM, JungleHiddenMaxRevive
	bg_event  0, 19, BGEVENT_ITEM, JungleHiddenMaxPotion
	bg_event 44, 45, BGEVENT_ITEM, JungleHiddenCarbos

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 31, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerPhotographerTroy, 0
	object_event 33, 53, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 5, TrainerCamperIvan, 0
	object_event 33, 32, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperAbe, 0
	object_event 13, 45, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherJosh, 0
	object_event 33, 43, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 1, TrainerBlackBeltYoshi, 0
	object_event 22, 27, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltKenji, EVENT_BEAT_BLACKBELT_KENJI
	object_event  4, 35, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 4, TrainerPicnickerKim, 0
	object_event 46, 36, SPRITE_BIG_ONIX, SPRITEMOVEDATA_BIGDOLLASYM, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, MuscleJungleRockBrian, EVENT_BEAT_ROCK_BRIAN_1
	object_event 19, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, JungleHyperPotion, EVENT_JUNGLE_HYPER_POTION
	object_event  0, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, JungleTMDig, EVENT_JUNGLE_TM_DIG
	object_event 45, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, JungleEther, EVENT_JUNGLE_ETHER
	object_event  9, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, JungleRareCandy, EVENT_JUNGLE_RARE_CANDY
	object_event  1, 52, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, JungleSuperRepel, EVENT_JUNGLE_SUPER_REPEL
	object_event 37, 33, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JungleFruitTree1, 0
	object_event  6, 33, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JungleFruitTree2, 0
