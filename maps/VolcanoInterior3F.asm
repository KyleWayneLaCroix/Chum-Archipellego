	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_3F_LEVER
	const VOLCANO_INTERIOR_3F_BRIAN_GRUNT_M
	const VOLCANO_INTERIOR_3F_BRIAN_GRUNT_F
	const VOLCANO_INTERIOR_3F_ARTIST_ANGELO
	const VOLCANO_INTERIOR_3F_BUG_MANIAC_ARNIE
	const VOLCANO_INTERIOR_3F_HEX_MANIAC_HANNA
	const VOLCANO_INTERIOR_3F_PYRO_DENA


VolcanoInterior3F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, VolcanoInterior3FCallback

VolcanoInterior3FCallback:
	checkevent EVENT_VOLCANO_INTERIOR_3F_LEVER
	iffalse .End
	changeblock 14, 22, $74
	changeblock 16, 22, $70
	changeblock 18, 22, $70
	changeblock 20, 22, $70
	changeblock 22, 22, $73
	turnobject VOLCANO_INTERIOR_3F_LEVER, RIGHT
.End:
	endcallback

VolcanoInterior3FLeverScript:
	opentext
	checkevent EVENT_VOLCANO_INTERIOR_3F_LEVER
	iftrue .After
	writetext VolcanoInterior3FLeverText
	yesorno
	iffalse .No
	writetext VolcanoInterior3FPullLeverText
	waitbutton
	turnobject VOLCANO_INTERIOR_3F_LEVER, RIGHT
	changeblock 14, 22, $74
	changeblock 16, 22, $70
	changeblock 18, 22, $70
	changeblock 20, 22, $70
	changeblock 22, 22, $73
	refreshscreen
	playsound SFX_STRENGTH
	earthquake 30
	waitsfx
	closetext
	setevent EVENT_VOLCANO_INTERIOR_3F_LEVER
	variablesprite SPRITE_VOLCANO_3F_LEVER, SPRITE_LEVER_RIGHT
	special LoadUsedSpritesGFX
	end
.After:
	writetext VolcanoInterior3FLeverAfterText
	waitbutton
	special FadeOutPalettes
	special FadeOutMusic
	pause 30
	variablesprite SPRITE_VOLCANO_3F_LEVER, SPRITE_LEVER_LEFT
	special LoadUsedSpritesGFX
	changeblock 14, 22, $65
	changeblock 16, 22, $6A
	changeblock 18, 22, $64
	changeblock 20, 22, $64
	changeblock 22, 22, $69
	refreshscreen
	playmusic MUSIC_POKE_FLUTE_CHANNEL
	pause 15
	writetext VolcanoInterior3FLeverFlashbackText
	waitbutton
	special FadeOutMusic
	changeblock 14, 22, $74
	changeblock 16, 22, $70
	changeblock 18, 22, $70
	changeblock 20, 22, $70
	changeblock 22, 22, $73
	variablesprite SPRITE_VOLCANO_3F_LEVER, SPRITE_LEVER_RIGHT
	special LoadUsedSpritesGFX
	special FadeInPalettes
	refreshscreen
	closetext
	end
.No:
	writetext VolcanoInterior3FNoPullLeverText
	waitbutton
	closetext
	end

VolcanoInterior3FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VOLCANO_INTERIOR_3F_HIDDEN_MAX_POTION

VolcanoInterior3FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_VOLCANO_INTERIOR_3F_HIDDEN_MAX_ELIXER

VolcanoInterior3FSmokeBall:
	itemball SMOKE_BALL

VolcanoInterior3FCharcoal:
	itemball CHARCOAL

VolcanoInterior3FEther:
	itemball ETHER, 3

TrainerBugManiacArnie:
	trainer BUG_MANIAC, ARNIE, EVENT_BEAT_BUG_MANIAC_ARNIE, BugManiacArnieSeenText, BugManiacArnieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugManiacArnieAfterText
	waitbutton
	closetext
	end

BugManiacArnieSeenText:
	text "I'm Bug Maniac"
	line "Arnie."

	para "Bugs are great,"
	line "but fire-type"
	cont "bugs?"

	para "Even better!"
	line "Heh heh."
	done

BugManiacArnieBeatenText:
	text "My bugs burned"
	line "out..."

	para "I'll be back,"
	line "with even stron-"
	cont "-ger bugs!"
	done

BugManiacArnieAfterText:
	text "Thanks for the"
	line "match! I'm going"
	cont "to bug out now."
	done

TrainerArtistAngelo:
	trainer ARTIST, ANGELO, EVENT_BEAT_ARTIST_ANGELO, ArtistAngeloSeenText, ArtistAngeloBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ArtistAngeloAfterText
	waitbutton
	closetext
	end

ArtistAngeloSeenText:
	text "I'm Angelo, the"
	line "volcanic artist."

	para "I capture the"
	line "raw power of this"
	cont "volcano on"
	cont "canvas."
	done

ArtistAngeloBeatenText:
	text "My masterpiece"
	line "remains unfin-"
	cont "-ished."

	para "I'll be back to"
	line "paint my triumph!"
	done

ArtistAngeloAfterText:
	text "My next work will"
	line "capture this epic"
	cont "battle. Thanks!"
	done

TrainerHexManiacHanna:
	trainer HEX_MANIAC, HANNA, EVENT_BEAT_HEX_MANIAC_HANNA, HexManiacHannaSeenText, HexManiacHannaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HexManiacHannaAfterText
	waitbutton
	closetext
	end

HexManiacHannaSeenText:
	text "I'm here to see"
	line "if I can turn"
	cont "glitches into new"
	cont "hexes."
	done

HexManiacHannaBeatenText:
	text "I guess I over-"
	line "estimated my"
	cont "power."
	done

HexManiacHannaAfterText:
	text "Thanks for the fun,"
	line "hope to see you"
	cont "again soon"
	done

TrainerPyroDena:
	trainer PYRO, DENA, EVENT_BEAT_PYRO_DENA, PyroDenaSeenText, PyroDenaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PyroDenaAfterText
	waitbutton
	closetext
	end

PyroDenaSeenText:
	text "Heh heh heh!"
	line "I love fire."

	para "It's beautiful,"
	line "and powerful."

	para "Do you like it?"
	line "I find you hot..."
	done

PyroDenaBeatenText:
	text "You put out my"
	line "flames..."

	para "But you're still"
	line "burning hot! Want"
	cont "to battle again?"
	done

PyroDenaAfterText:
	text "That was fun,"
	line "you're pretty hot"
	cont "yourself, heh heh."
	done

TrainerBrianGruntM1:
	trainer BRIAN_M, BRIAN_M_1, EVENT_BEAT_BRIAN_M_1, BrianM1SeenText, BrianM1BeatenText, 0, .Script

.Script:
	opentext
	writetext BrianM1AfterText
	waitbutton
	closetext
	disappear VOLCANO_INTERIOR_3F_BRIAN_GRUNT_M
	end

BrianM1SeenText:
	text "Glitches at top"
	line "of volcano..."

	para "Nintendo needs"
	line "to fix them."
	done

BrianM1BeatenText:
	text "What caused those"
	line "glitches?"

	para "I'll find out."
	line "See you soon!"
	done

BrianM1AfterText:
	text "I'm leaving now,"
	line "just like Spider-"
	cont "-Man in Endgame."

	para "I hope to return,"
	line "to a glitch-free"
	cont "volcano."
	done

TrainerBrianGruntF1:
	trainer BRIAN_F, BRIAN_F_1, EVENT_BEAT_BRIAN_F_1, BrianF1SeenText, BrianF1BeatenText, 0, .BrianF1Script

.BrianF1Script:
	endifjustbattled
	opentext
	writetext BrianF1AfterText
	waitbutton
	disappear VOLCANO_INTERIOR_3F_BRIAN_GRUNT_F
	refreshscreen
	closetext
	end

BrianF1SeenText:
	text "A glitch in the"
	line "volcano? Need help!"

	para "I'm Brian but I"
	line "never felt like I"
	cont "fit in with my"
	cont "assigned gender."

	para "girl? boy?"

	para "I dont understand"
	done

BrianF1BeatenText:
	text "Please, help me."
	done

BrianF1AfterText:
	text "Phew, that was"
	line "close. I hope to"
	cont "never see another"
	cont "volcano again!"

	para "What am I here"

	para "The top is danger"

	para "There is another"
	line "me."

	para "Beware."

	para "careful from the"
	line "other."
	done

VolcanoInterior3FLeverText:
	text "A lever sits in"
	line "the middle of the"
	cont "ground."

	para "Pull it?"
	done

VolcanoInterior3FNoPullLeverText:
	text "Good idea, who"
	line "knows what it'd"
	cont "do?"
	done

VolcanoInterior3FPullLeverText:
	text "You pull the"
	line "lever, and some-"
	cont "-thing rises up"
	cont "from the lava!"
	done

VolcanoInterior3FLeverAfterText:
	text "It's the lever"
	line "you pulled a"
	cont "little while ago."

	para "Good times."

	para "Remember those"
	line "days?"

	para "We could maybe do"
	line "a flashback."
	done

VolcanoInterior3FLeverFlashbackText:
	text "Man. Member this?"

	para "The old days when"
	line "the tracks were"
	cont "under the lava &"
	cont "there wasn't a"
	cont "shortcut."

	para " "

	para "What happened to"
	line "us, man?"

	para "We used to be so"
	line "different..."

	para "Ah well."
	line "Time must go on."
	done

VolcanoInterior3FMiniorSpot:
	random 250
	ifequal 0, VolcanoInterior3FMiniorCoreTrap
	ifequal 1, VolcanoInterior3FMiniorCoreTrap
	end

VolcanoInterior3FMiniorCoreTrap:
	special FadeOutPalettes
	cry MINIOR_CORE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_CORE, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior3FMiniorMeteorTrap:
	special FadeOutPalettes
	cry MINIOR_METEOR
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MINIOR_METEOR, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 21, 27, VOLCANO_INTERIOR_2F, 5
	warp_event  3,  1, VOLCANO_INTERIOR_2F, 6
	warp_event 33, 29, VOLCANO_EXTERIOR, 5
	warp_event  3, 37, VOLCANO_EXTERIOR, 6
	warp_event 33,  7, VOLCANO_INTERIOR_3F_HALL, 1
	warp_event 15, 11, VOLCANO_INTERIOR_3F_HALL, 2
	warp_event 33,  1, VOLCANO_INTERIOR_4F, 3
	warp_event  9, 15, VOLCANO_INTERIOR_4F, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  9, 13, BGEVENT_ITEM, VolcanoInterior3FHiddenMaxPotion
	bg_event  8,  8, BGEVENT_ITEM, VolcanoInterior3FHiddenMaxElixer
	bg_event 34, 23, BGEVENT_READ, VolcanoInterior3FMiniorSpot
	bg_event 34, 22, BGEVENT_READ, VolcanoInterior3FMiniorSpot
	bg_event 35, 22, BGEVENT_READ, VolcanoInterior3FMiniorSpot
	bg_event 35, 23, BGEVENT_READ, VolcanoInterior3FMiniorSpot
	bg_event 31, 26, BGEVENT_READ, VolcanoInterior3FMiniorSpot
	bg_event 30, 26, BGEVENT_READ, VolcanoInterior3FMiniorSpot
	bg_event 31, 27, BGEVENT_READ, VolcanoInterior3FMiniorSpot
	bg_event 30, 27, BGEVENT_READ, VolcanoInterior3FMiniorSpot

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 12, 24, SPRITE_VOLCANO_3F_LEVER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoInterior3FLeverScript, 0
	object_event  7, 34, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBrianGruntM1, EVENT_BEAT_BRIAN_M_1
	object_event 25, 39, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_WANDER, 2, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBrianGruntF1, EVENT_BEAT_BRIAN_F_1
	object_event 19, 26, SPRITE_BUGSY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerArtistAngelo, -1
	object_event 30, 13, SPRITE_ELM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugManiacArnie, -1
	object_event 20,  1, SPRITE_CLAIR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerHexManiacHanna, -1
	object_event  6, 16, SPRITE_BRUNO, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerPyroDena, -1
	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior3FSmokeBall, EVENT_VOLCANO_INTERIOR_3F_SMOKE_BALL
	object_event 31, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior3FCharcoal, EVENT_VOLCANO_INTERIOR_3F_CHARCOAL
	object_event  0, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior3FEther, EVENT_VOLCANO_INTERIOR_3F_ETHER
