	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_5F_FIREBREATHER
	const VOLCANO_INTERIOR_5F_GLITCH
	const VOLCANO_INTERIOR_5F_ENGINEER
	const VOLCANO_INTERIOR_5F_BUG_BRIAN
	const VOLCANO_INTERIOR_5F_SIGHTSEER_M
	const VOLCANO_INTERIOR_5F_SIGHTSEER_F
	const VOLCANO_INTERIOR_5F_WAIFU_MIKU
	const VOLCANO_INTERIOR_5F_MAD_SCIENTIST
	const VOLCANO_INTERIOR_5F_ITEMBALL_1
	const VOLCANO_INTERIOR_5F_ITEMBALL_2
	const VOLCANO_INTERIOR_5F_ITEMBALL_3
	const VOLCANO_INTERIOR_5F_ITEMBALL_4

VolcanoInterior5F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script VolcanoInterior5FDownstairs, VOLCANO_INTERIOR_5F_DOWNSTAIRS
	scene_script VolcanoInterior5FMidstairs, VOLCANO_INTERIOR_5F_MIDSTAIRS
	scene_script VolcanoInterior5FUpstairs, VOLCANO_INTERIOR_5F_UPSTAIRS

	def_callbacks
;	callback type, script

VolcanoInterior5FDownstairsSet:
	setscene VOLCANO_INTERIOR_5F_DOWNSTAIRS
	;fallthrough
VolcanoInterior5FDownstairs:
	; bottom bridge
	changeblock 14, 28, $58
	changeblock 16, 28, $40
	changeblock 18, 28, $40
	changeblock 20, 28, $40
	changeblock 22, 28, $59
	; top bridges
	changeblock  2, 14, $58
	changeblock  4, 14, $40
	changeblock  6, 14, $40
	changeblock  8, 14, $40
	changeblock 10, 14, $40
	changeblock 12, 14, $40
	changeblock 14, 14, $59
	changeblock 22, 14, $58
	changeblock 24, 14, $40
	changeblock 26, 14, $40
	changeblock 28, 14, $40
	changeblock 30, 14, $59
	; right bridge
	changeblock 36, 18, $5F
	changeblock 36, 20, $44
	changeblock 36, 22, $44
	changeblock 36, 24, $44
	changeblock 36, 26, $61
	end

VolcanoInterior5FMidstairsSet:
	setscene VOLCANO_INTERIOR_5F_MIDSTAIRS
	;fallthrough
VolcanoInterior5FMidstairs:
	; bottom bridge
	changeblock 14, 28, $5A
	changeblock 16, 28, $51
	changeblock 18, 28, $51
	changeblock 20, 28, $51
	changeblock 22, 28, $5B
	; top bridges
	changeblock  2, 14, $58
	changeblock  4, 14, $40
	changeblock  6, 14, $40
	changeblock  8, 14, $40
	changeblock 10, 14, $40
	changeblock 12, 14, $40
	changeblock 14, 14, $59
	changeblock 22, 14, $58
	changeblock 24, 14, $40
	changeblock 26, 14, $40
	changeblock 28, 14, $40
	changeblock 30, 14, $59
	; right bridge
	changeblock 36, 18, $5F
	changeblock 36, 20, $44
	changeblock 36, 22, $44
	changeblock 36, 24, $44
	changeblock 36, 26, $61
	end

VolcanoInterior5FUpstairsSet:
	setscene VOLCANO_INTERIOR_5F_UPSTAIRS
	;fallthrough
VolcanoInterior5FUpstairs:
	; bottom bridge
	changeblock 14, 28, $5A
	changeblock 16, 28, $51
	changeblock 18, 28, $51
	changeblock 20, 28, $51
	changeblock 22, 28, $5B
	; top bridges
	changeblock  2, 14, $5A
	changeblock  4, 14, $51
	changeblock  6, 14, $51
	changeblock  8, 14, $51
	changeblock 10, 14, $51
	changeblock 12, 14, $51
	changeblock 14, 14, $5B
	changeblock 22, 14, $5A
	changeblock 24, 14, $51
	changeblock 26, 14, $51
	changeblock 28, 14, $51
	changeblock 30, 14, $5B
	; right bridge
	changeblock 36, 18, $60
	changeblock 36, 20, $52
	changeblock 36, 22, $52
	changeblock 36, 24, $52
	changeblock 36, 26, $62
	end

TrainerFirebreatherBurt:
    trainer FIREBREATHER, BURT, EVENT_BEAT_FIREBREATHER_BURT, FirebreatherBurtSeenText, FirebreatherBurtBeatenText, 0, .Script

.Script:
    endifjustbattled
    opentext
    writetext FirebreatherBurtAfterText
    waitbutton
    closetext
    end

FirebreatherBurtSeenText:
    text "Lost in the heat,"
    line "confused by the"
    cont "bridges."

    para "How can you go on"
    line "top of the bridge"
    cont "and beneath?"

    para "I am scared, and"
    line "also confused."

    para "The warmth of the"
    line "fire is all that"
    cont "grants me comfort"
    cont "within these dark"
    cont "days."
    done

FirebreatherBurtBeatenText:
    text "I am lost without"
    line "fire's guidance."
    done


FirebreatherBurtAfterText:
    text "Where must I go"
    line "to escape this"
    cont "terrifying land"
    cont "of being above"
    cont "and below?"
    done


TrainerGlitch5:
    trainer GLITCH_T, GLITCH_5, EVENT_BEAT_GLITCH_5, Glitch5SeenText, Glitch5BeatenText, 0, .Script

.Script:
    opentext
    writetext Glitch5AfterText
    waitbutton
    playsound SFX_SAVE
    waitsfx
    playmusic MUSIC_RUINS_OF_ALPH_RADIO
    disappear VOLCANO_INTERIOR_5F_GLITCH
    refreshscreen
    closetext
    end

Glitch5SeenText:
    text "....?????......"
    line "iNvalid OPERation"
    cont "ERROR CODE 4325"

    para "beginning stack"
    line "dum"
    line "helpt"
    line "what is happening"
    line "help"
    line " help"
    line "  help"
    line "   help"
    line "    help"
    line "     help"
    line "      help"
    line "       help"
    line "        help"
    line "         help"
    line "          help"

    para "Reboot complete!"

    para "Initiate battle."
    done

Glitch5BeatenText:
    text "CRASH PROTOCOL"
    done

Glitch5AfterText:
    text "We hope to see you"
    line "again!"
    done

TrainerEngineerDonny:
	trainer ENGINEER, DONNY, EVENT_BEAT_ENGINEER_DONNY, EngineerDonnySeenText, EngineerDonnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EngineerDonnyAfterText
	waitbutton
	closetext
	end

EngineerDonnySeenText:
	text "I'm fixing the"
	line "minecart tracks."

	para "Not really sure"
	line "what they mine in"
	cont "this place, but"
	cont "that's not my"
	cont "business."

	para "I just fix the"
	line "tracks."
	done

EngineerDonnyBeatenText:
	text "I guess I should"
	line "stick to my day"
	cont "job..."
	done

EngineerDonnyAfterText:
	text "Gonna be honest,"
	line "I was supposed to"
	cont "fix these tracks"
	cont "about 3 years ago"

	para "No one's noticed"
	line "so far, but I"
	cont "don't want to"
	cont "push my luck."
	done

TrainerBugBrian2:
    trainer BUG_BRIAN, BUGBRIAN_2, EVENT_BEAT_BUG_BRIAN_2, BugBrian2SeenText, BugBrian2BeatenText, 0, .Script

.Script:
    opentext
    writetext BugBrian2AfterText
    waitbutton
    cry BLIPBUG
    waitsfx
    verbosegiveitem HONEY, 3
    waitbutton
    disappear VOLCANO_INTERIOR_5F_BUG_BRIAN
    refreshscreen
    closetext
    end

BugBrian2SeenText:
    text "BRIAN: I'm a bug!"

    para "This is a clever"
    line "reference to how"
    cont "I am both an un-"
    cont "-intended piece"
    cont "of code, AND a"
    cont "weird-ass"
    cont "CATERPIE!"
    done

BugBrian2BeatenText:
    text "Buzz Buzz Buzz!"
    done

BugBrian2AfterText:
    text "You're almost to"
    line "the top of the"
    cont "volcano."

    para "It's been nice"
    line "knowing you, you"
    cont "seem like a cool,"
    cont "good-looking"
    cont "person."

    para "Don't fall into"
    line "the lava!"
    done

TrainerSightseerJack:
	trainer SIGHTSEER_M, JACK, EVENT_BEAT_SIGHTSEER_JACK, SightseerJackSeenText, SightseerJackBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SightseerJackAfterText
	waitbutton
	closetext
	end

SightseerJackSeenText:
	text "Hey, have you"
	line "seen my JILL, my"
	cont "girlfriend?"

	para "We're on a vol-"
	line "-cano date, but"
	cont "I lost track of"
	cont "her..."
	done

SightseerJackBeatenText:
	text "Oh no, I lost my"
	line "girlfriend AND"
	cont "the battle!"
	done

SightseerJackAfterText:
	text "I really hope"
	line "JILL is okay..."
	done

TrainerSightseerJill:
	trainer SIGHTSEER_F, JILL, EVENT_BEAT_SIGHTSEER_JILL, SightseerJillSeenText, SightseerJillBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SightseerJillAfterText
	waitbutton
	closetext
	end

SightseerJillSeenText:
	text "I'm here sight-"
	line "-seeing with my"
	cont "friend JACK."

	para "It's a pretty"
	line "cool location,"
	cont "and I somehow"
	cont "found the perfect"
	cont "girlfriend here!"
	done

SightseerJillBeatenText:
	text "Now that I have"
	line "MIKU, I don't"
	cont "need to get so"
	cont "mad about losing"
	cont "anymore."
	done

SightseerJillAfterText:
	text "I think JACK and"
	line "I get along so"
	cont "well because we"
	cont "are both gay."

	para "Hopefully he can"
	line "find a hot guy"
	cont "here."

	para "In the volcano."

	para "Cause it's hot."
	done

TrainerWaifuMiku:
	trainer WAIFU, MIKU, EVENT_BEAT_WAIFU_MIKU, WaifuMikuSeenText, WaifuMikuBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WaifuMikuAfterText
	waitbutton
	closetext
	end

WaifuMikuSeenText:
	text "Hello! I'm Miku"
	line "I'm an anime girl"
	cont "and Jill's waifu."

	para "I'm so happy to"
	line "meet you. Jill is"
	cont "such a sweet girl"
	done

WaifuMikuBeatenText:
	text "Oh no, I lost!"

	para "But it's okay,"
	cont "I'll just be"
	cont "Jill's stay-at-"
	cont "-home waifu!"
	done

WaifuMikuAfterText:
	text "You can down-"
	line "-load your own"
	cont "MIKU at"

	para "WWW.VOCALOID.COM"
	done

VolcanoInterior5FIronHeadTM:
	itemball TM_IRON_HEAD

VolcanoInterior5FFullHeal:
	itemball FULL_HEAL, 5

VolcanoInterior5FIron:
	itemball IRON

VolcanoInterior5FPPUp:
	itemball PP_UP

VolcanoInterior5FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_VOLCANO_INTERIOR_5F_HIDDEN_MAX_ELIXER

VolcanoInterior5FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_VOLCANO_INTERIOR_5F_HIDDEN_RARE_CANDY

VolcanoInterior5FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VOLCANO_INTERIOR_5F_HIDDEN_FULL_RESTORE

VolcanoInterior5FMiniorSpot:
	random 100
	ifequal 0, VolcanoInterior5FMiniorCoreTrap
	ifequal 1, VolcanoInterior5FMiniorCoreTrap
	end

VolcanoInterior5FMiniorCoreTrap:
	special FadeOutPalettes
	cry MINIOR_CORE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_CORE, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior5FMiniorMeteorTrap:
	special FadeOutPalettes
	cry MINIOR_METEOR
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_METEOR, 27
	startbattle
	reloadmapafterbattle
	end

TrainerMadScientistBrown:
	trainer MAD_SCIENTIST, BROWN, EVENT_BEAT_MAD_SCIENTIST_BROWN, MadScientistBrownSeenText, MadScientistBrownBeatenText, 0, .MadScientistBrownScript

.MadScientistBrownScript:
	opentext
	writetext MadScientistBrownAfterText
	waitbutton
	closetext
	end

MadScientistBrownSeenText:
	text "Who the hell are"
	line "you?"

	para "You're stepping"
	line "all over my"
	cont "research!"
	
	para "Can't you see how"
	line "busy and also"
	cont "important I am?!?"

	cont "I'm looking for a"
	cont "rare #MON and"
	cont "I do not want you"
	cont "scaring it away!"
	done

MadScientistBrownBeatenText:
	text "You fool! You"
	line "are ruining my"
	cont "research!"

	para "I will never"
	line "forget this!"
	done

MadScientistBrownAfterText:
	text "These impact"
	line "craters in the"
	cont "volcano sometimes"
	cont "contain dormant"
	cont "MINIORs."

	para "You just need to"
	line "inspect the dirt,"
	cont "but it can take"
	cont "a while, they are"
	cont "not always there."
	done


VolcanoInterior5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 19, 33, VOLCANO_EXTERIOR, 9
	warp_event 33, 23, VOLCANO_INTERIOR_5F_HALL, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 19, 24, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 18, 32, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 19, 32, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 18, 31, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 19, 31, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 32,  8, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event  8,  2, VOLCANO_INTERIOR_5F_DOWNSTAIRS, VolcanoInterior5FUpstairsSet
	coord_event 37, 30, VOLCANO_INTERIOR_5F_DOWNSTAIRS, VolcanoInterior5FUpstairsSet
	coord_event 17, 20, VOLCANO_INTERIOR_5F_DOWNSTAIRS, VolcanoInterior5FMidstairsSet
	coord_event 32,  6, VOLCANO_INTERIOR_5F_DOWNSTAIRS, VolcanoInterior5FMidstairsSet
	coord_event 12, 10, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 35, 36, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 35, 25, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 34, 25, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 35, 34, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet

	def_bg_events
;	bg_event x, y, type, script
	bg_event 16, 33, BGEVENT_ITEM, VolcanoInterior5FHiddenMaxElixer
	bg_event 22, 20, BGEVENT_ITEM, VolcanoInterior5FHiddenRareCandy
	bg_event 38, 25, BGEVENT_ITEM, VolcanoInterior5FHiddenFullRestore
	bg_event 28, 30, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 37, 39, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 36, 39, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 37, 38, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 36, 38, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 29, 31, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 28, 31, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 29, 30, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event  6, 33, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event  7, 33, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event  7, 32, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event  6, 32, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 35,  4, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 34,  5, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 35,  5, BGEVENT_READ, VolcanoInterior5FMiniorSpot
	bg_event 34,  4, BGEVENT_READ, VolcanoInterior5FMiniorSpot

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 10, 23, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherBurt, -1
	object_event 17, 15, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 5, TrainerGlitch5, EVENT_BEAT_GLITCH_5
	object_event 36,  3, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerEngineerDonny, -1
	object_event 37, 15, SPRITE_WEEDLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugBrian2, EVENT_BEAT_BUG_BRIAN_2
	object_event 26, 21, SPRITE_CAL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSightseerJack, -1
	object_event  4,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerSightseerJill, -1
	object_event  4, 10, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerWaifuMiku, -1
	object_event  8, 32, SPRITE_ELM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 1, TrainerMadScientistBrown, -1
	object_event  0, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior5FIronHeadTM, EVENT_GOT_TM24_IRON_HEAD
	object_event  2, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior5FPPUp, EVENT_VOLCANO_INTERIOR_5F_PP_UP
	object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior5FIron, EVENT_VOLCANO_INTERIOR_5F_IRON
	object_event 38, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior5FFullHeal, EVENT_VOLCANO_INTERIOR_5F_FULL_HEAL

