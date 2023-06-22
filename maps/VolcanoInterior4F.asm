	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_4F_LEVER
	const VOLCANO_INTERIOR_4F_REGIMAGMA
	const VOLCANO_INTERIOR_4F_MEDIUM
	const VOLCANO_INTERIOR_4F_RUIN_MANIAC
	const VOLCANO_INTERIOR_4F_DRAMPA
	const VOLCANO_INTERIOR_4F_JO
	const VOLCANO_INTERIOR_4F_JOE
	const VOLCANO_INTERIOR_4F_N64_BRIAN
	const VOLCANO_INTERIOR_4F_PYRO

VolcanoInterior4F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script VolcanoInterior4FDownstairs, VOLCANO_INTERIOR_4F_DOWNSTAIRS
	scene_script VolcanoInterior4FUpstairs, VOLCANO_INTERIOR_4F_UPSTAIRS

	def_callbacks
;	callback type, script

VolcanoInterior4FDownstairsSet:
	setscene VOLCANO_INTERIOR_4F_DOWNSTAIRS
	;fallthrough
VolcanoInterior4FDownstairs:
	; top bridge
	changeblock 46, 4, $58
	changeblock 48, 4, $40
	changeblock 50, 4, $40
	changeblock 52, 4, $40
	changeblock 54, 4, $40
	changeblock 56, 4, $59
	; vertical bridge
	changeblock 58,  6, $5F
	changeblock 58,  8, $44
	changeblock 58, 10, $44
	changeblock 58, 12, $44
	changeblock 58, 14, $61
	end

VolcanoInterior4FUpstairsSet:
	setscene VOLCANO_INTERIOR_4F_UPSTAIRS
	;fallthrough
VolcanoInterior4FUpstairs:
	; top bridge
	changeblock 46, 4, $5A
	changeblock 48, 4, $51
	changeblock 50, 4, $51
	changeblock 52, 4, $51
	changeblock 54, 4, $51
	changeblock 56, 4, $5B
	; vertical bridge
	changeblock 58,  6, $60
	changeblock 58,  8, $52
	changeblock 58, 10, $52
	changeblock 58, 12, $52
	changeblock 58, 14, $62
	end

VolcanoInterior4FLeverScript:
	opentext
	checkevent EVENT_VOLCANO_INTERIOR_4F_LEVER
	iftrue .After
	writetext VolcanoInterior4FLeverText
	yesorno
	iffalse .No
	writetext VolcanoInterior4FPullLeverText
	waitbutton
	variablesprite SPRITE_VOLCANO_4F_LEVER, SPRITE_LEVER_RIGHT
	special LoadUsedSpritesGFX
	changeblock 42, 20, $74
	changeblock 44, 20, $70
	changeblock 46, 20, $70
	changeblock 48, 20, $70
	changeblock 50, 20, $73
	refreshscreen
	playsound SFX_STRENGTH
	earthquake 30
	waitsfx
	closetext
	setevent EVENT_VOLCANO_INTERIOR_4F_LEVER
	end
.After:
	writetext VolcanoInterior4FLeverAfterText
	waitbutton
	closetext
	end
.No:
	writetext VolcanoInterior4FNoPullLeverText
	waitbutton
	closetext
	end

RegimagmaOverworld:
	opentext
	writetext RegimagmaText
	cry REGIMAGMA
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon REGIMAGMA, 45
	startbattle
	disappear VOLCANO_INTERIOR_4F_REGIMAGMA
	reloadmapafterbattle
	setevent EVENT_FOUGHT_REGIMAGMA
	end

RegimagmaText:
	text "Grrrrraaaaagh!"
	done

TrainerRuinManiacElvin:
	trainer RUIN_MANIAC, ELVIN, EVENT_BEAT_RUIN_MANIAC_ELVIN, RuinManiacElvinSeenText, RuinManiacElvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RuinManiacElvinAfterText
	waitbutton
	closetext
	end

RuinManiacElvinSeenText:
	text "These rocks..."
	
	para "There's something"
	line "familiar about"
	cont "their pattern."

	para "This volcano can"
	line "prove my theory!"
	done

RuinManiacElvinBeatenText:
	text "This has no"
	line "relation to my"
	cont "theories."
	done

RuinManiacElvinAfterText:
	text "Somewhere on this"
	line "floor..."

	para "There's a un-"
	line "-known Regi form"

	para "Maybe you need to"
	line "enter from some"
	cont "other way."

	para "I'll be so famous"
	line "if I find it."
	done

VolcanoInterior4FOldMan:
	opentext
	checkevent EVENT_GOT_VOLCANO_JUMP
	iftrue .After
	writetext VolcanoInterior4OldManBeforeText
	waitbutton
	verbosegiveitem JUMP_1
	setevent EVENT_GOT_VOLCANO_JUMP
	waitbutton
	closetext
	end
.After:
	writetext VolcanoInterior4OldManAfterText
	waitbutton
	closetext
	end

VolcanoInterior4OldManBeforeText:
	text "IT'S DANGEROUS TO"
	line "GO ALONE."
	cont "TAKE THIS."
	done

VolcanoInterior4OldManAfterText:
	text "NO CHOMPS ALLOWED"
	done

DrampaOverworldScript:
	opentext
	writetext DrampaOverworldText
	cry DRAMPA
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	loadwildmon DRAMPA, 60
	startbattle
	disappear VOLCANO_INTERIOR_4F_DRAMPA
	reloadmapafterbattle
	setevent EVENT_OVERWORLD_DRAMPA
	end

DrampaOverworldText:
	text "Oh, hello there."

	para "Would you do this"
	line "old man a favor?"

	para "I'd like you to"
	line "catch me."

	para "I've sown my wild"
	line "oats and am ready"
	cont "to settle down."

	done

TrainerCoupleJo:
	trainer COUPLE, JO_AND_JOE, EVENT_BEAT_COUPLE_JO_AND_JOE, CoupleJoSeenText, CoupleJoAndJoeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CoupleJoAfterText
	waitbutton
	closetext
	end

TrainerCoupleJoe:
	trainer COUPLE, JO_AND_JOE, EVENT_BEAT_COUPLE_JO_AND_JOE, CoupleJoeSeenText, CoupleJoAndJoeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CoupleJoeAfterText
	waitbutton
	closetext
	end

CoupleJoSeenText:
	text "An active volcano"
	line "is a great place"
	cont "to go on a honey-"
	cont "-moon!"
	
	para "I love extreme"
	line "vacationing!"

	done

CoupleJoeSeenText:
	text "An active volcano"
	line "is a greeaaaat"
	cont "honeymoon desti-"
	cont "-nation."
	
	para "Way better than"
	line "a shitty beach or"
	cont "lame trip to go"
	cont "explore the beta"
	cont "Gold and Silver"
	cont "towns like I"
	cont "wanted to."

	done

CoupleJoAndJoeBeatenText:
	text "JO: We may not be"
	line "able to win a"
	cont "battle, but our"
	cont "love means we can"
	cont "finish the other's"

	para "JOE: Sandwiches!"
	done

CoupleJoAfterText:
	text "Me and Joe both"
	line "love two things:"

	para "Extreme sports,"
	line "and each other!"
	done

CoupleJoeAfterText:
	text "I don't think Jo"
	line "hears what I'm"
	cont "saying sometimes."
	done

TrainerBrian642:
	trainer BRIAN_64, BRIAN_64_2, EVENT_BEAT_BRIAN_64_2, Brian642SeenText, Brian642BeatenText, 0, .Script

.Script:
	opentext
	writetext Brian642AfterText
	waitbutton
	closetext
	playsound SFX_ZAP_CANNON
	earthquake 80
	waitsfx
	disappear VOLCANO_INTERIOR_4F_N64_BRIAN
	opentext
	verbosegiveitem BERSERK_GENE
	waitbutton
	closetext
	end

Brian642SeenText:
	text "The 3DS was just"
	line "a cheap knock-off"
	cont "of the vastly"
	cont "superior VIRTUAL"
	cont "BOY."
	done

Brian642BeatenText:
	text "People love using"
	line "handheld game"
	cont "systems that need"
	cont "to sit on top of"
	cont "a table."
	done

Brian642AfterText:
	text "You are coming"
	line "closer to the"
	cont "truth of this"
	cont "game."

	para "Beware the one"
	line "who crawls."

	para "The BAD EGG"
	line "contains the lost"
	cont "island, and the"
	cont "darkness."

	para "Beware the BRIAN"
	line "who crawls."

	para "It isn't a BRIAN"
	line "anymore."
	done

TrainerPyroManny:
    trainer PYRO, MANNY, EVENT_BEAT_PYRO_MANNY, PyroMannySeenText, PyroMannyBeatenText, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext PyroMannyAfterText
    waitbutton
    closetext
    end

PyroMannySeenText:
    text "Fire ignites my"
    line "passion. It's my"
    cont "gift, but also my"
    cont "curse."

    para "You know, like"
    line "DEXTER from that"
    cont "one show, DEXTER."

    para "But instead of"
    line "murder, it's just"
    cont "arson."
    done

PyroMannyBeatenText:
    text "Your flames burn"
    line "brighter."

    para "I hope you'll use"
    cont "your power for"
    cont "good, like I do."
    done

PyroMannyAfterText:
    text "I may have lost,"
    line "but I'm going to"
    cont "claim the moral"
    cont "victory."
    done

TrainerMediumWell:
    trainer MEDIUM, WELL, EVENT_BEAT_MEDIUM_WELL, MediumWellSeenText, MediumWellBeatenText, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext MediumWellAfterText
    waitbutton
    closetext
    end

MediumWellSeenText:
    text "I've discovered a"
    line "a new, ghost-like"
    cont "entity within the"
    cont "fiery depths."

    para "The afterlife is"
    line "truly a wonderous"
    cont "thing, isn't it?"
    done

MediumWellBeatenText:
    text "What a battle!"

    para "Let's meet again"
    line "in the realm"
    cont "beyond."
    done

MediumWellAfterText:
    text "What are these"
    line "MISSINGNO?"

    para "What is going"
    line "on?"
    done

VolcanoInterior4FLeverText:
	text "A lever sits in"
	line "the middle of the"
	cont "ground."

	para "Pull it?"
	done

VolcanoInterior4FNoPullLeverText:
	text "Good idea, who"
	line "knows what it'd"
	cont "do?"
	done

VolcanoInterior4FPullLeverText:
	text "You pull the"
	line "lever, and some-"
	cont "-thing rises up"
	cont "from the lava!"
	done

VolcanoInterior4FLeverAfterText:
	text "Oh hey, it's that"
	line "lever you pulled"
	cont "earlier."

	para "Good times."
	done

VolcanoInterior4FBurnHeal:
	itemball BURN_HEAL, 5

VolcanoInterior4FUltraBall:
	itemball ULTRA_BALL, 3

VolcanoInterior4FMaxEther:
	itemball MAX_ETHER

VolcanoInterior4FRevive:
	itemball REVIVE, 6

VolcanoInterior4FHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VOLCANO_INTERIOR_4F_HIDDEN_FULL_HEAL

VolcanoInterior4FHiddenRevive:
	hiddenitem REVIVE, EVENT_VOLCANO_INTERIOR_4F_HIDDEN_REVIVE

VolcanoInterior4FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VOLCANO_INTERIOR_4F_HIDDEN_MAX_POTION

VolcanoInterior4FMiniorSpot:
	random 200
	ifequal 0, VolcanoInterior4FMiniorCoreTrap
	ifequal 1, VolcanoInterior4FMiniorCoreTrap
	end

VolcanoInterior4FMiniorCoreTrap:
	special FadeOutPalettes
	cry MINIOR_CORE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_CORE, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior4FMiniorMeteorTrap:
	special FadeOutPalettes
	cry MINIOR_METEOR
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_METEOR, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9, 31, VOLCANO_EXTERIOR, 7
	warp_event 57, 39, VOLCANO_EXTERIOR, 8
	warp_event 61,  3, VOLCANO_INTERIOR_3F, 7
	warp_event 39, 17, VOLCANO_INTERIOR_3F, 8

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 57, 20, VOLCANO_INTERIOR_4F_UPSTAIRS, VolcanoInterior4FDownstairsSet
	coord_event 45, 13, VOLCANO_INTERIOR_4F_UPSTAIRS, VolcanoInterior4FDownstairsSet
	coord_event 44, 13, VOLCANO_INTERIOR_4F_UPSTAIRS, VolcanoInterior4FDownstairsSet
	coord_event 61,  2, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 61,  4, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 62,  3, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 60,  3, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 46,  5, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 46,  4, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 57, 16, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet

	def_bg_events
;	bg_event x, y, type, script
	bg_event  6,  4, BGEVENT_READ, VolcanoInterior4FOldMan
	bg_event  5,  4, BGEVENT_READ, VolcanoInterior4FOldMan
	bg_event 11, 19, BGEVENT_ITEM, VolcanoInterior4FHiddenFullHeal
	bg_event  5, 18, BGEVENT_ITEM, VolcanoInterior4FHiddenRevive
	bg_event 21, 26, BGEVENT_ITEM, VolcanoInterior4FHiddenMaxPotion
	bg_event 16, 34, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 17, 35, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 16, 35, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 17, 34, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 19, 31, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 18, 31, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 19, 30, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 18, 30, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 31, 37, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 30, 37, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 31, 36, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 30, 36, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 27, 39, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 26, 39, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 27, 38, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 26, 38, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 21, 37, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 20, 37, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 21, 36, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 20, 36, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  3, 27, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  2, 27, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  3, 26, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  2, 26, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  3, 25, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  2, 25, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  3, 24, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  2, 24, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  7, 27, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  6, 27, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  7, 26, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event  6, 26, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 11, 25, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 10, 25, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 11, 24, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 10, 24, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 17, 27, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 16, 27, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 17, 26, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 16, 26, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 41, 33, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 40, 33, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 41, 32, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 40, 32, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 35, 39, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 34, 39, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 35, 38, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 34, 38, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 49, 33, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 48, 33, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 49, 32, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 48, 32, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 39, 37, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 38, 37, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 39, 36, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 38, 36, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 61, 11, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 60, 11, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 61, 10, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 60, 10, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 53,  9, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 52,  9, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 53,  8, BGEVENT_READ, VolcanoInterior4FMiniorSpot
	bg_event 52,  8, BGEVENT_READ, VolcanoInterior4FMiniorSpot

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 56, 20, SPRITE_VOLCANO_4F_LEVER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoInterior4FLeverScript, 0
	object_event 56, 32, SPRITE_REGIMAGMA, SPRITEMOVEDATA_BIGDOLLASYM, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RegimagmaOverworld, EVENT_FOUGHT_REGIMAGMA
	object_event 18, 33, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 3, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerMediumWell, 0
	object_event  6, 24, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerRuinManiacElvin, 0
	object_event 28,  9, SPRITE_DRAGON, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, DrampaOverworldScript, EVENT_OVERWORLD_DRAMPA
	object_event 49, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerCoupleJo, 0
	object_event 48, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerCoupleJoe, 0
	object_event 40, 32, SPRITE_VIRTUAL_BOY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBrian642, EVENT_BEAT_BRIAN_64_2
	object_event 34, 37, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPyroManny, 0
	object_event 36, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior4FBurnHeal, EVENT_VOLCANO_INTERIOR_4F_BURN_HEAL
	object_event 63, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior4FUltraBall, EVENT_VOLCANO_INTERIOR_4F_ULTRA_BALL
	object_event 62, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior4FMaxEther, EVENT_VOLCANO_INTERIOR_4F_MAX_ETHER
	object_event 35, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior4FRevive, EVENT_VOLCANO_INTERIOR_4F_REVIVE
