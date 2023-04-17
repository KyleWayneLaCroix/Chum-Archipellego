	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_B1F_WEIRDO
	const VOLCANO_INTERIOR_B1F_PICNICKER
	const VOLCANO_INTERIOR_B1F_HIKER
	const VOLCANO_INTERIOR_B1F_BIRD_KEEPER
	const VOLCANO_INTERIOR_B1F_SNORLAX
	const VOLCANO_INTERIOR_B1F_POKE_BALL_1
	const VOLCANO_INTERIOR_B1F_POKE_BALL_2
	const VOLCANO_INTERIOR_B1F_POKE_BALL_3

VolcanoInteriorB1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

VolcanoInteriorB1FMiniorSpot:
	random 250
	ifequal 0, VolcanoInteriorB1FMiniorCoreTrap
	ifequal 1, VolcanoInteriorB1FMiniorCoreTrap
	end

VolcanoInteriorB1FMiniorCoreTrap:
	special FadeOutPalettes
	cry MINIOR_CORE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_CORE, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInteriorB1FMiniorMeteorTrap:
	special FadeOutPalettes
	cry MINIOR_METEOR
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_METEOR, 27
	startbattle
	reloadmapafterbattle
	end

TrainerWeirdoBrent:
	trainer WEIRDO, BRENT, EVENT_BEAT_WEIRDO_BRENT, WeirdoBrentSeenText, WeirdoBrentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WeirdoBrentAfterText
	waitbutton
	closetext
	end

WeirdoBrentSeenText:
	text "YOU WANT TO TAKE"
	line "MY METEORS DON'T"
	cont "YOU!?!?"
	done

WeirdoBrentBeatenText:
	text "THEY'RE MINE!"
	done

WeirdoBrentAfterText:
	text "Actually, meteors"
	line "are considered"
	cont "meteorites once"
	cont "they enter the"
	cont "atmsophere."

	para "These things are"
	line "worthless..."
	done

TrainerPicnickerCindy:
	trainer PICNICKER, CINDY, EVENT_BEAT_PICNICKER_CINDY, PicnickerCindySeenText, PicnickerCindyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerCindyAfterText
	waitbutton
	closetext
	end

PicnickerCindySeenText:
	text "I'm inventing a"
	line "new hobby!"

	para "    X-treme     "
	line "   Picnicking   "
	done

PicnickerCindyBeatenText:
	text "#MON are much"
	line "cuter before they"
	cont "evolve."

	para "They are much"
	line "worse at fighting"
	cont "though."
	done

PicnickerCindyAfterText:
	text "My boyfriend was"
	line "camping with me,"
	cont "but he was too"
	cont "close to a lava-"
	cont "-fall."
	done

TrainerHikerParry:
	trainer HIKER, PARRY, EVENT_BEAT_HIKER_PARRY, HikerParrySeenText, HikerParryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerParryAfterText
	waitbutton
	closetext
	end

HikerParrySeenText:
	text "I'm one of the"
	line "best Hikers in"
	cont "the ARCHIPELAGO!"

	para "Prepare to get"
	line "STOMPED!"
	done

HikerParryBeatenText:
	text "I guess I got a"
	line "bit carried away."

	para "I'll be humbler"
	line "from now on."
	done

HikerParryAfterText:
	text "Thanks for show-"
	line "-ing me a new way"
	cont "forward."

	para "figuratively."

	para "Now, if you could"
	line "do that literally"
	cont "as well, I'd be"
	cont "very grateful."

	para "I've been lost"
	line "for 2 weeks."
	done

TrainerBirdkeeperTheo:
	trainer BIRD_KEEPER, THEO, EVENT_BEAT_BIRD_KEEPER_THEO, BirdkeeperTheoSeenText, BirdkeeperTheoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdkeeperTheoAfterText
	waitbutton
	closetext
	end

BirdkeeperTheoSeenText:
	text "I heard some nerd"
	line "talking about a"
	cont "LEGENDARY #-"
	cont "-MON in this here"
	cont "volcano."

	para "That can only be"
	line "one #MON:"

	para "MOLTRES"
	done

BirdkeeperTheoBeatenText:
	text "Maybe I won't be"
	line "able to take on"
	cont "MOLTRES..."
	done

BirdkeeperTheoAfterText:
	text "I suppose a LEG-"
	line "-ENDARY in a"
	cont "volcano could be"
	cont "a HEATRAN."

	para "or a GROUDON."

	para "or a VOLCANION."

	para "or even a VICTINI"

	para "But I'm betting"
	line "on a MOLTRES."
	done

TrainerRuffianBrian:
    trainer RUFFIAN, RUFF_BRIAN, EVENT_BEAT_RUFFIAN_BRIAN, RuffianBrian2SeenText, RuffianBrian2BeatenText, 0, .Script

.Script:
    opentext
    writetext RuffianBrian2AfterText
    waitbutton
    cry SNORLAX
    waitsfx
    verbosegiveitem LEFTOVERS
    waitbutton
    disappear VOLCANO_INTERIOR_B1F_SNORLAX
    refreshscreen
    closetext
    end

RuffianBrian2SeenText:
    text "Snorrrrrreeeee"

    para ""

    para ""

    para "BRIAN: I don't"
    line "actually know"
    cont "what sound SNOR-"
    cont "-LAXes make."
    done

RuffianBrian2BeatenText:
    text "I'm not a SNORLAX"
    line "just big-sprited."
    done

RuffianBrian2AfterText:
    text "idk why I'm just"
    line "a SNORLAX."

    para "it's real fuckin'"
    line "weird."

    para "bye."
    done

VolcanoInteriorB1FHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_VOLCANO_INTERIOR_B1F_HIDDEN_SUPER_POTION

VolcanoInteriorB1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_VOLCANO_INTERIOR_B1F_HIDDEN_RARE_CANDY

VolcanoInteriorB1FHyperPotion:
	itemball HYPER_POTION

VolcanoInteriorB1FMaxRevive:
	itemball MAX_REVIVE

VolcanoInteriorB1FEscapeRope:
	itemball ESCAPE_ROPE, 3

VolcanoInteriorB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 23, 29, VOLCANO_INTERIOR_1F, 4
	warp_event 25, 15, VOLCANO_INTERIOR_1F, 5
	warp_event  9, 21, VOLCANO_INTERIOR_B1F_HALL, 2
	warp_event 27, 21, VOLCANO_INTERIOR_B1F_HALL, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 27, 25, BGEVENT_READ, VolcanoInteriorB1FMiniorSpot
	bg_event 27, 24, BGEVENT_READ, VolcanoInteriorB1FMiniorSpot
	bg_event 26, 24, BGEVENT_READ, VolcanoInteriorB1FMiniorSpot
	bg_event 26, 25, BGEVENT_READ, VolcanoInteriorB1FMiniorSpot
	bg_event  2, 30, BGEVENT_ITEM, VolcanoInteriorB1FHiddenSuperPotion
	bg_event 15, 16, BGEVENT_ITEM, VolcanoInteriorB1FHiddenRareCandy

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 28, 22, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerWeirdoBrent, -1
	object_event  5,  9, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerCindy, -1
	object_event  3, 28, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerParry, -1
	object_event 25,  9, SPRITE_BROCK, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdkeeperTheo, -1
	object_event  4, 22, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerRuffianBrian, EVENT_BEAT_RUFFIAN_BRIAN
	object_event 19, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInteriorB1FEscapeRope, EVENT_VOLCANO_INTERIOR_B1F_ESCAPE_ROPE
	object_event  0, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInteriorB1FMaxRevive, EVENT_VOLCANO_INTERIOR_B1F_MAX_REVIVE
	object_event  3,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInteriorB1FHyperPotion, EVENT_VOLCANO_INTERIOR_B1F_HYPER_POTION
