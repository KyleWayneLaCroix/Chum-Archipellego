	object_const_def
	const NORTHFOREST_BUG_CATCHER_JIM
	const NORTHFOREST_TREEBRIAN
	const NORTHFOREST_CAMPER_ROLAND
	const NORTHFOREST_FISHER_RALPH
	const NORTHFOREST_HEADBUTT_GIRL
	const NORTHFOREST_MUSHROOM1
	const NORTHFOREST_MUSHROOM2
	const NORTHFOREST_MUSHROOM3
	const NORTHFOREST_MUSHROOM4
	const NORTHFOREST_MUSHROOM5
	const NORTHFOREST_MUSHROOM6
	const NORTHFOREST_SUICUNE
	const NORTHFOREST_POKE_BALL1
	const NORTHFOREST_POKE_BALL2

NorthernForest_MapScripts:
	def_scene_scripts

	def_callbacks

WardensCabinSignScript:
	jumptext WardensCabinSignText

RouteBGateSignScript:
	jumptext RouteBGateSignText

NorthernForestElixer:
	itemball ELIXER

NorthernForestFullHeal:
	itemball FULL_HEAL

NorthernForestSuicuneScript:
	special FadeOutPalettes
	cry SUICUNE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon SUICUNE, 60
	startbattle
	reloadmapafterbattle
	setevent EVENT_NORTHERNFOREST_SUICUNE
	disappear NORTHFOREST_SUICUNE
	end

NorthernForestTinyMushroom1:
	itemball TINYMUSHROOM

NorthernForestTinyMushroom2:
	itemball TINYMUSHROOM

NorthernForestBigMushroom1:
	itemball BIG_MUSHROOM

NorthernForestBigMushroom2:
	itemball BIG_MUSHROOM

NorthernForestMorelull1:
	scall NorthernForestMorelullTrap
	reloadmapafterbattle
	setevent EVENT_NORTHERNFOREST_MORELULL1
	disappear NORTHFOREST_MUSHROOM1
	end

NorthernForestMorelull2:
	scall NorthernForestMorelullTrap
	reloadmapafterbattle
	setevent EVENT_NORTHERNFOREST_MORELULL2
	disappear NORTHFOREST_MUSHROOM2
	end

NorthernForestMorelullTrap:
	special FadeOutPalettes
	cry MORELULL
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MORELULL, 12
	startbattle
	end

NorthernForestHiddenCarbos:
	hiddenitem CARBOS, EVENT_NORTHERNFOREST_HIDDEN_CARBOS 

NorthernForestHiddenEther:
	hiddenitem ETHER, EVENT_NORTHERNFOREST_HIDDEN_ETHER

BeehiveLeftHoney:
	hiddenitem HONEY, EVENT_NORTHERNFOREST_LEFT_HONEY

BeehiveRightHoney:
	hiddenitem HONEY, EVENT_NORTHERNFOREST_RIGHT_HONEY

TrainerBugCatcherJim:
	trainer BUG_CATCHER, JIM, EVENT_BEAT_BUG_CATCHER_JIM, BugCatcherJimSeenText, BugCatcherJimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherJimAfterText
	waitbutton
	closetext
	end

TrainerCamperRoland:
	trainer CAMPER, ROLAND, EVENT_BEAT_CAMPER_ROLAND, CamperRolandSeenText, CamperRolandBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperRolandAfterText
	waitbutton
	closetext
	end

TrainerFisherRalph:
	trainer FISHER, RALPH, EVENT_BEAT_FISHER_RALPH, FisherRalphSeenText, FisherRalphBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherRalphAfterText
	waitbutton
	closetext
	end

TrainerNorthernForestTreeBrian:
	trainer TREE_BRIAN, TREEBRIAN_1, EVENT_BEAT_TREE_BRIAN_1, NorthForestTreeBrianSeenText, NorthForestTreeBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext NorthForestTreeBrianAfterText
	waitbutton
	closetext
	playsound SFX_TOXIC
	earthquake 40
	waitsfx
	disappear NORTHFOREST_TREEBRIAN
	end

HeadbuttGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM17_HEADBUTT
	iftrue .AlreadyGotHeadbutt
	writetext HeadbuttGirlIntro
	promptbutton
	verbosegiveitem TM_HEADBUTT
	setevent EVENT_GOT_TM17_HEADBUTT
.AlreadyGotHeadbutt:
	writetext HeadbuttGirlOutro
	waitbutton
	closetext
	end

NorthForestGraveScript:
	special FadeOutMusic
	opentext
	writetext GlitchGraveForestText
	playsound SFX_ZAP_CANNON
	cry GASTLY
	waitsfx
	waitbutton
	closetext
	playmusic MUSIC_RUINS_OF_ALPH_RADIO
	setevent READ_NORTHFOREST_GRAVE
	; todo: the rest of this
	end

GlitchGraveForestText:
	text " f   "

	para "3 9 7 1 5"

	cont "        3 9 7 1 5"
	line "    3 9 7 1 5"

	para "THIS IS THE WATER"

	para "AND THIS IS THE"
	line "WELL."

	para "DRINK FULL AND"
	line "DESCEND."

	para "THE HORSE IS THE"
	line "WHITE OF THE EYES"
	cont "AND THE DARK"
	cont "WITHIN."
	done

HeadbuttGirlIntro:
	text "Oh hey there!"

	para "I'm shaking trees"
	line "using HEADBUTT."

	para "It's fun! I can"
	line "teach you how to"
	cont "do it too!"

	para "What's that look"
	line "for?"

	para "Fine, I can show"
	line "your #MON how"
	cont "to do it instead"
	done

HeadbuttGirlOutro:
	text "If you whack on"
	line "trees like these,"
	cont "you can have a"
	cont "sleeping #MON"
	cont "fall out!"
	done

FisherRalphSeenText:
	text "Nothin's better"
	line "than fishing in"
	cont "a forest."
	done

FisherRalphBeatenText:
	text "My catches aren't"
	line "up to snuff."
	done

FisherRalphAfterText:
	text "These fish #-"
	line "-MON aren't good"
	cont "enough."

	para "Guess I'll fry"
	line "'em up tonight."
	done

CamperRolandSeenText:
	text "I'm camping!"
	done

CamperRolandBeatenText:
	text "You're fucking up"
	line "my camping trip."
	done

CamperRolandAfterText:
	text "This isn't at all"
	line "like LAID BACK"
	cont "CAMP."

	para "There aren't any"
	line "anime girls, and"
	cont "very little homo-"
	cont "-erotic subtext."
	done

NorthForestTreeBrianSeenText:
	text "Jesus dude, why"
	line "don't you LEAF"
	cont "me alone?"

	para "Get it?"
	done

NorthForestTreeBrianBeatenText:
	text "I LEAF to battle!"
	done

NorthForestTreeBrianAfterText:
	text "Being a tree is"
	line "actually kind of"
	cont "annoying."

	para "I think I'll stop"
	line "doing it."

	para "By LEAFing"

	para "..."
	done

BugCatcherJimSeenText:
	text "I'm hunting for"
	line "BIG BUG #MON!"
	done

BugCatcherJimBeatenText:
	text "Victory eluded me"
	line "just like SCYTHER"
	done

BugCatcherJimAfterText:
	text "I'm trying to get"
	line "every BUG #MON"
	cont "on BROLOGUE ISLE."

	para "I already got:"
	line "YANMA, BLIPBUG,"
	cont "DEWPIDER, GRUBBIN"
	cont "and JOLTIK."

	para "I really want to"
	line "find a SCYTHER"
	cont "or HERACROSS, but"
	cont "no luck so far."
	done

WardensCabinSignText:
	text "WARDEN's cabin"
	done

RouteBGateSignText:
	text "Route B ahead."
	done

NorthernForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 56, GEAR_CITY_NORTH_FOREST_GATE, 3
	warp_event 25, 57, GEAR_CITY_NORTH_FOREST_GATE, 4
	warp_event  7, 11, NORTHERN_FOREST_ROUTE_B_GATE, 1
	warp_event  1, 25, WARDENS_CABIN, 1
	warp_event 32, 45, FOREST_CAVE, 1
	warp_event 32, 46, FOREST_CAVE, 2

	def_coord_events

	def_bg_events
	bg_event 12, 11, BGEVENT_READ, RouteBGateSignScript
	bg_event  4, 25, BGEVENT_READ, WardensCabinSignScript
	bg_event  6, 22, BGEVENT_ITEM, BeehiveLeftHoney
	bg_event  7, 22, BGEVENT_ITEM, BeehiveRightHoney
	bg_event 39, 22, BGEVENT_ITEM, NorthernForestHiddenCarbos
	bg_event 20, 25, BGEVENT_ITEM, NorthernForestHiddenEther
	bg_event  0,  0, BGEVENT_READ, NorthForestGraveScript
	bg_event  1,  0, BGEVENT_READ, NorthForestGraveScript

	def_object_events
	object_event  3, 56, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJim, -1
	object_event  3, 16, SPRITE_SUDOWOODO, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerNorthernForestTreeBrian, EVENT_BEAT_TREE_BRIAN_1
	object_event 32, 29, SPRITE_BUGSY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerCamperRoland, -1
	object_event 26, 47, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerFisherRalph, -1
	object_event 14, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HeadbuttGirlScript, -1
	object_event 15, 55, SPRITE_MUSHROOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NorthernForestMorelull1, EVENT_NORTHERNFOREST_MORELULL1
	object_event 38, 29, SPRITE_MUSHROOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NorthernForestMorelull2, EVENT_NORTHERNFOREST_MORELULL2
	object_event 18, 42, SPRITE_MUSHROOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, NorthernForestTinyMushroom1, EVENT_NORTHERNFOREST_TINY_MUSHROOM_1
	object_event 30, 40, SPRITE_MUSHROOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, NorthernForestTinyMushroom2, EVENT_NORTHERNFOREST_TINY_MUSHROOM_2
	object_event 36, 16, SPRITE_MUSHROOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, NorthernForestBigMushroom1, EVENT_NORTHERNFOREST_BIG_MUSHROOM_1
	object_event  2, 37, SPRITE_MUSHROOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, NorthernForestBigMushroom2, EVENT_NORTHERNFOREST_BIG_MUSHROOM_2
	object_event 17,  4, SPRITE_SUICUNE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NorthernForestSuicuneScript, EVENT_NORTHERNFOREST_SUICUNE
	object_event 14, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, NorthernForestElixer, EVENT_NORTHERNFOREST_ELIXER
	object_event 15, 39, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, NorthernForestFullHeal, EVENT_NORTHERNFOREST_FULL_HEAL
