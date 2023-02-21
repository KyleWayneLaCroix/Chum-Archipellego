	object_const_def
;	const MAPNAME_OBJECTNAME
	const EEVEE_RANCH_HIVES_BUG_CATCHER
	const EEVEE_RANCH_HIVES_BIRD_KEEPER
	const EEVEE_RANCH_HIVES_JORDAN
	const EEVEE_RANCH_HIVES_HONEON
	const EEVEE_RANCH_HIVES_POKE_BALL1


EeveeRanchHives_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

EeveeRanchHivesJordanScript:
	opentext
	checkevent EVENT_BEAT_JORDAN_2
	iftrue .After
	writetext EeveeRanchHivesJordanIntroText
	yesorno
	iffalse .Refused
	closetext
	special HealParty
	opentext
	writetext HivesJordanSeenText
	waitbutton
	closetext
	winlosstext HivesJordanBeatenText, 0
	loadtrainer JORDAN, JORDAN2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JORDAN_2
	opentext
	writetext EeveeRanchHivesJordanGiveHoneonText
	waitbutton
	disappear EEVEE_RANCH_HIVES_HONEON
	givepoke BUZZEON, 20
	closetext
	end
.Refused:
	writetext DontBattleHivesJordan
	waitbutton
	closetext
	end
.After:
	writetext EeveeRanchHivesJordanAfterText
	waitbutton
	closetext
	end

EeveeRanchHivesHoneonScript:
	jumptext EeveeRanchHivesHoneonText

TrainerBirdKeeperRod:
	trainer BIRD_KEEPER, ROD, EVENT_BEAT_BIRD_KEEPER_ROD, BirdKeeperRodSeenText, BirdKeeperRodBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRodAfterText
	waitbutton
	closetext
	end

TrainerBugCatcherAl:
	trainer BUG_CATCHER, AL, EVENT_BEAT_BUG_CATCHER_AL, BugCatcherAlSeenText, BugCatcherAlBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAlAfterText
	waitbutton
	closetext
	end

EeveeRanchHivesXSpecial:
	itemball X_SPECIAL

EeveeRanchHivesHiddenHoney1:
	hiddenitem HONEY, EVENT_EEVEE_RANCH_HIVES_HIDDEN_HONEY1

EeveeRanchHivesHiddenHoney2:
	hiddenitem HONEY, EVENT_EEVEE_RANCH_HIVES_HIDDEN_HONEY2

EeveeRanchHivesHiddenHoney3:
	hiddenitem HONEY, EVENT_EEVEE_RANCH_HIVES_HIDDEN_HONEY3

EeveeRanchHivesHiddenHoney4:
	hiddenitem HONEY, EVENT_EEVEE_RANCH_HIVES_HIDDEN_HONEY4

EeveeRanchHivesHiddenBasil:
	hiddenitem BASIL, EVENT_EEVEE_RANCH_HIVES_HIDDEN_BASIL

EeveeRanchHivesBugBrian:
	checkevent EVENT_BEAT_BUG_BRIAN_1
	iffalse .Battle
	sjump EeveeRanchHivesDescriptionScript
.Battle:
	opentext
	writetext EeveeRanchHivesBugBrianSeenText
	waitbutton
	closetext
	winlosstext EeveeRanchHivesBugBrianBeatenText, 0
	loadtrainer BUG_BRIAN, BUGBRIAN_1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUG_BRIAN_1
	opentext
	writetext EeveeRanchHivesBugBrianAfterText
	waitbutton
	verbosegiveitem HONEY
	closetext
	playsound SFX_TOXIC
	earthquake 40
	waitsfx
	end

EeveeRanchHivesCombee1:
	checkevent EVENT_EEVEE_RANCH_HIVES_COMBEE1
	iffalse .Battle
	sjump EeveeRanchHivesDescriptionScript
.Battle:
	scall EeveeRanchHivesCombeeTrap
	setevent EVENT_EEVEE_RANCH_HIVES_COMBEE1
	end

EeveeRanchHivesCombee2:
	checkevent EVENT_EEVEE_RANCH_HIVES_COMBEE2
	iffalse .Battle
	sjump EeveeRanchHivesDescriptionScript
.Battle:
	scall EeveeRanchHivesCombeeTrap
	setevent EVENT_EEVEE_RANCH_HIVES_COMBEE2
	end

EeveeRanchHivesCombee3:
	checkevent EVENT_EEVEE_RANCH_HIVES_COMBEE3
	iffalse .Battle
	sjump EeveeRanchHivesDescriptionScript
.Battle:
	scall EeveeRanchHivesCombeeTrap
	setevent EVENT_EEVEE_RANCH_HIVES_COMBEE3
	end

EeveeRanchHivesCombee4:
	checkevent EVENT_EEVEE_RANCH_HIVES_COMBEE4
	iffalse .Battle
	sjump EeveeRanchHivesDescriptionScript
.Battle:
	scall EeveeRanchHivesCombeeTrap
	setevent EVENT_EEVEE_RANCH_HIVES_COMBEE4
	end

EeveeRanchHivesCombee5:
	checkevent EVENT_EEVEE_RANCH_HIVES_COMBEE5
	iffalse .Battle
	sjump EeveeRanchHivesDescriptionScript
.Battle:
	scall EeveeRanchHivesCombeeTrap
	setevent EVENT_EEVEE_RANCH_HIVES_COMBEE5
	end

EeveeRanchHivesCombee6:
	checkevent EVENT_EEVEE_RANCH_HIVES_COMBEE6
	iffalse .Battle
	sjump EeveeRanchHivesDescriptionScript
.Battle:
	scall EeveeRanchHivesCombeeTrap
	setevent EVENT_EEVEE_RANCH_HIVES_COMBEE6
	end

EeveeRanchHivesCombeeTrap:
	special FadeOutPalettes
	cry COMBEE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon COMBEE, 14
	startbattle
	reloadmapafterbattle
	opentext
	verbosegiveitem HONEY
	closetext
	end

EeveeRanchHivesDescriptionScript:
	jumptext EeveeRanchHivesDescriptionText

EeveeRanchHivesDescriptionText:
	text "A COMBEE hive."

	para "Doesn't look like"
	line "there is extra"
	cont "honey right now."
	done

EeveeRanchHivesBugBrianSeenText:
	text "Buzz buzz"
	line "motherfucker!"
	done

EeveeRanchHivesBugBrianBeatenText:
	text "I'm a caterpie!"
	done

EeveeRanchHivesBugBrianAfterText:
	text "Well, you won"
	line "fair and square."

	para "You can have my"
	line "HONEY, and I"
	cont "have to go."

	para "It's a Loser"
	line "leaves town type"
	cont "of thing."

	para "See ya"
	done

BugCatcherAlSeenText:
	text "COMBEE honey is"
	line "the tastiest out"
	cont "there."
	done

BugCatcherAlBeatenText:
	text "I may have hit"
	line "the HONEY too"
	cont "hard..."
	done

BugCatcherAlAfterText:
	text "I guess man"
	line "cannot live on"
	cont "HONEY alone..."
	done

BirdKeeperRodSeenText:
	text "I'm here to catch"
	line "some new BIRD"
	cont "#MON, like"
	cont "COMBEE."
	done

BirdKeeperRodBeatenText:
	text "Anything with"
	line "wings is a bird."
	done

BirdKeeperRodAfterText:
	text "All #MON with"
	line "wings are birds."

	para "That's what Bird"
	line "means."

	para "I'm an expert in"
	line "birdology."
	done

EeveeRanchHivesHoneonText:
	text "HONEON: nnneeeon!"
	done

EeveeRanchHivesJordanIntroText:
	text "JORDAN: Oh hey!"
	line "These are our"
	cont "COMBEE hives."

	para "We discovered a"
	line "new form of EEVEE"
	cont "here."

	para "It turns out if an"
	line "EEVEE eats a lot,"

	para "and I mean A LOT"
	line "of HONEY, it will"
	cont "evolve into the"
	cont "BUG type HONEON."

	para "If you would like"
	line "one, you will need"
	cont "to defeat me in a"
	
	para "battle to prove"
	line "you can take care"
	cont "of them."

	para "I'll heal your"
	line "team first, so it"
	cont "is fair and safe."

	para "Do you want to"
	line "battle?"
	done

HivesJordanSeenText:
	text "Alright, it's time"
	line "to have the battle"
	cont "of the bees!"
	done

HivesJordanBeatenText:
	text "You're pretty good"
	line "at this!"
	done

EeveeRanchHivesJordanGiveHoneonText:
	text "That was impress-"
	line "-ive and HONEON"
	cont "was impressed too"

	para "Take good care of"
	line "HONEON!"
	done

DontBattleHivesJordan:
	text "Alright, well if"
	line "you change your"

	para "mind, I'll be"
	line "here!"
	done

EeveeRanchHivesJordanAfterText:
	text "I love bees!"

	para "Almost as much as"
	line "I love EEVEEs!"
	done

EeveeRanchHives_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 19, 12, EEVEE_RANCH_EXTERIOR, 8
	warp_event 19, 13, EEVEE_RANCH_EXTERIOR, 9

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  2, 12, BGEVENT_READ, EeveeRanchHivesCombee1
	bg_event  3,  8, BGEVENT_READ, EeveeRanchHivesCombee2
	bg_event  2,  6, BGEVENT_READ, EeveeRanchHivesCombee3
	bg_event  9,  2, BGEVENT_READ, EeveeRanchHivesCombee4
	bg_event  9,  8, BGEVENT_READ, EeveeRanchHivesCombee5
	bg_event 14, 12, BGEVENT_READ, EeveeRanchHivesCombee6
	bg_event  8,  8, BGEVENT_ITEM, EeveeRanchHivesHiddenHoney1
	bg_event  3,  6, BGEVENT_ITEM, EeveeRanchHivesHiddenHoney2
	bg_event 17, 16, BGEVENT_ITEM, EeveeRanchHivesHiddenHoney3
	bg_event  3,  2, BGEVENT_ITEM, EeveeRanchHivesHiddenHoney4
	bg_event  9, 16, BGEVENT_READ, EeveeRanchHivesBugBrian
	bg_event  9,  6, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  8, 12, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  2,  4, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  8,  4, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  2,  8, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  2,  2, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  3, 12, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  3,  4, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  9,  4, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  8,  6, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event  8,  2, BGEVENT_READ, EeveeRanchHivesDescriptionScript
	bg_event 12,  3, BGEVENT_ITEM, EeveeRanchHivesHiddenBasil

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  5, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherAl, -1
	object_event 16, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperRod, -1
	object_event  5,  5, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchHivesJordanScript, -1
	object_event  6,  5, SPRITE_BUZZEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchHivesHoneonScript, EVENT_BEAT_JORDAN_2
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, EeveeRanchHivesXSpecial, EVENT_EEVEE_RANCH_HIVES_X_SPECIAL
