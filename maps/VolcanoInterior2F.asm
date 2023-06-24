	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_2F_BOULDER
	const VOLCANO_2F_ROCK_BRIAN
	const VOLCANO_2F_GRAMPS
	const VOLCANO_2F_GENTLEMAN
	const VOLCANO_2F_FISHER
	const VOLCANO_2F_POKE_BALL_1
	const VOLCANO_2F_POKE_BALL_2
	const VOLCANO_2F_POKE_BALL_3

VolcanoInterior2F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

Volcano2FBoulder:
	jumpstd StrengthBoulderScript
	end

VolcanoInterior2FHiddenDireHit:
	hiddenitem DIRE_HIT, EVENT_VOLCANO_INTERIOR_2F_HIDDEN_DIRE_HIT

VolcanoInterior2FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_VOLCANO_INTERIOR_2F_HIDDEN_ULTRA_BALL


VolcanoInterior2FFullHeal:
	itemball FULL_HEAL, 3

VolcanoInterior2FRevive:
	itemball REVIVE, 2

VolcanoInterior2FRockslide:
	itemball TM_ROCK_SLIDE

TrainerRuinManiacNiel:
	trainer RUIN_MANIAC, NIEL, EVENT_BEAT_RUIN_MANIAC_NIEL, RuinManiacNielSeenText, RuinManiacNielBeatenText, 0, .Script

.Script:
	opentext
	writetext RuinManiacNielAfterText
	waitbutton
	closetext
	end

TrainerSafariIndy:
	trainer SAFARI, INDY, EVENT_BEAT_SAFARI_INDY, SafariIndySeenText, SafariIndyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SafariIndyAfterText
	waitbutton
	closetext
	end

TrainerRuffianGrendo:
	trainer RUFFIAN, GRENDO, EVENT_BEAT_RUFFIAN_GRENDO, RuffianGrendoSeenText, RuffianGrendoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RuffianGrendoAfterText
	waitbutton
	closetext
	end

Volcano2FRockBrian:
	trainer ROCK_BRIAN, ROCKBRIAN_2, EVENT_BEAT_ROCK_BRIAN_2, Volcano2FRockBrianSeenText, Volcano2FRockBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext Volcano2FRockBrianAfterBattleText
	waitbutton
	closetext
	cry ROCKRUFF
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
	disappear VOLCANO_2F_ROCK_BRIAN
	refreshscreen
	opentext
	verbosegiveitem THUNDERSTONE
	waitbutton
	closetext
	end

RuffianGrendoSeenText:
	text "Hey numbnuts!"

	para "This is my gang's"
	line "turf!"
	done

RuffianGrendoBeatenText:
	text "Hmph."

	para "I guess we can"
	line "find better turf."
	done

RuffianGrendoAfterText:
	text "Most of the gang"
	line "died from the"
	cont "lava and monsters"
	done

Volcano2FRockBrianSeenText:
	text "HEY! Stop trying"
	line "to push me around"
	done

Volcano2FRockBrianBeatenText:
	text "Oh hey it's you"
	line "again! Glad to"
	cont "see you, there's"
	cont "something weird"
	cont "going on here."
	done

Volcano2FRockBrianAfterBattleText:
	text "BRIAN: So this"
	line "place has weird"
	cont "shit going on."

	para "I saw myself walk"
	cont "by earlier."

	para "Well, more like"
	line "crawl..."

	para "It was odd, I"
	line "think the other"
	cont "me was looking"
	cont "for something."

	para "I feel like I'm"
	line "in dozens of"
	cont "places at once."

	para "I feel like I'm"
	line "upstairs."

	para "Several times."

	para "I don't get it,"
	line "but be careful."

	para "Something is"
	line "wrong with this"
	cont "volcano."

	para "Like I'm worried"
	line "this whole place"
	cont "is gonna Planet"
	cont "Namek."

	para "I'm out of here"
	line "before that"
	cont "happens."

	para "Well this me any"
	line "way..."
	done

SafariIndySeenText:
	text "I'm here to"
	line "liberate treasure"
	cont "from savages and"
	cont "battle #MON."

	para "And I'm all outta"
	line "treasure."
	done

SafariIndyBeatenText:
	text "I love doing an"
	line "imperialism!"
	done

SafariIndyAfterText:
	text "I only take the"
	line "treasure from an"
	cont "ancient temple to"
	cont "put it in museums"

	para "I don't put it in"
	line "a large gallery"
	cont "in my home like"
	cont "the bad guys do."
	done

RuinManiacNielSeenText:
	text "I'm here hunting"
	line "for a previously"
	cont "unknown legendary"
	cont "#MON!"
	done

RuinManiacNielBeatenText:
	text "You may be strong"
	line "enough to catch"
	cont "a legendary"
	cont "#MON!"
	done

RuinManiacNielAfterText:
	text "The CHUM ARCHIPE-"
	line "-LAGO region is"
	cont "home to new"
	cont "members of legen-"
	cont "-dary groups!"

	para "For isntance, I"
	line "believe this"
	cont "volcano may be"
	cont "the home of a new"
	cont "REGI, REGIMAGMA."

	para "REGIMAGMA is an"
	line "embodiment of"
	cont "ROCK and FIRE,"
	cont "not seen before."

	para "My theory is that"
	line "it is a REGIROCK"
	cont "affected by the"
	cont "volcanic condit-"
	cont "-ions."

	para "But I'd need to"
	line "find one to know"
	cont "for sure..."
	done
	
VolcanoInterior2FMiniorSpot:
	random 250
	ifequal 1, VolcanoInterior2FMiniorCoreTrap
	ifequal 2, VolcanoInterior2FMiniorMeteorTrap
	end

VolcanoInterior2FMiniorCoreTrap:
	special FadeOutPalettes
	cry MINIOR_CORE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MINIOR_CORE, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior2FMiniorMeteorTrap:
	special FadeOutPalettes
	cry MINIOR_METEOR
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MINIOR_METEOR, 27
	startbattle
	reloadmapafterbattle
	end

VolcanoInterior2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 21, 33, VOLCANO_INTERIOR_1F, 6
	warp_event 21,  3, VOLCANO_INTERIOR_1F, 7
	warp_event 3,  7, VOLCANO_INTERIOR_1F, 8
	warp_event 11, 27, VOLCANO_EXTERIOR, 4
	warp_event 17, 21, VOLCANO_INTERIOR_3F, 1
	warp_event 11,  5, VOLCANO_INTERIOR_3F, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 22, 25, BGEVENT_ITEM, VolcanoInterior2FHiddenDireHit
	bg_event  2,  3, BGEVENT_ITEM, VolcanoInterior2FHiddenUltraBall
	bg_event 15,  9, BGEVENT_READ, VolcanoInterior2FMiniorSpot
	bg_event 15,  8, BGEVENT_READ, VolcanoInterior2FMiniorSpot
	bg_event 14,  8, BGEVENT_READ, VolcanoInterior2FMiniorSpot
	bg_event 14,  9, BGEVENT_READ, VolcanoInterior2FMiniorSpot
	
	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 22, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Volcano2FBoulder, -1
	object_event 19,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, Volcano2FRockBrian, EVENT_BEAT_ROCK_BRIAN_2
	object_event 22, 22, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerRuinManiacNiel, -1
	object_event 24,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSafariIndy, -1
	object_event 11,  2, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerRuffianGrendo, -1
	object_event 15, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior2FFullHeal, EVENT_VOLCANO_INTERIOR_2F_FULL_HEAL
	object_event  2,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior2FRevive, EVENT_VOLCANO_INTERIOR_2F_REVIVE
	object_event  8, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior2FRockslide, EVENT_VOLCANO_INTERIOR_2F_TM_ROCKSLIDE
