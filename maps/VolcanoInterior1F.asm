	object_const_def
;	const MAPNAME_OBJECTNAME

VolcanoInterior1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script VolcanoInterior1FDownstairs, VOLCANO_INTERIOR_1F_DOWNSTAIRS
	scene_script VolcanoInterior1FUpstairs, VOLCANO_INTERIOR_1F_UPSTAIRS

	def_callbacks
;	callback type, script

VolcanoInterior1FDownstairsSet:
	setscene VOLCANO_INTERIOR_1F_DOWNSTAIRS
	;fallthrough
VolcanoInterior1FDownstairs:
	; left bridge
	changeblock 12, 12, $58
	changeblock 14, 12, $40
	changeblock 16, 12, $40
	changeblock 18, 12, $59
	; middle-right bridge
	changeblock 30, 14, $58
	changeblock 32, 14, $40
	changeblock 34, 14, $40
	changeblock 36, 14, $40
	changeblock 38, 14, $59
	; vertical bridge
	changeblock 42,  8, $5F
	changeblock 42, 10, $44
	changeblock 42, 12, $61
	end

VolcanoInterior1FUpstairsSet:
	setscene VOLCANO_INTERIOR_1F_UPSTAIRS
	;fallthrough
VolcanoInterior1FUpstairs:
	; left bridge
	changeblock 12, 12, $5A
	changeblock 14, 12, $51
	changeblock 16, 12, $51
	changeblock 18, 12, $5B
	; middle-right bridge
	changeblock 30, 14, $5A
	changeblock 32, 14, $51
	changeblock 34, 14, $51
	changeblock 36, 14, $51
	changeblock 38, 14, $5B
	; vertical bridge
	changeblock 42,  8, $60
	changeblock 42, 10, $52
	changeblock 42, 12, $62
	end

Volcano1FBoulder:
Volcano1FBoulder2:
	jumpstd StrengthBoulderScript

VolcanoInterior1FGuardSpec:
	itemball GUARD_SPEC, 2

VolcanoInterior1FProtein:
	itemball PROTEIN

VolcanoInterior1FXSpecial:
	itemball X_SPECIAL, 2

VolcanoInterior1FFireStone:
	itemball FIRE_STONE

VolcanoInterior1FHiddenIceHeal:
	hiddenitem ICE_HEAL, EVENT_VOLCANO_INTERIOR_1F_HIDDEN_ICE_HEAL

VolcanoInterior1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_VOLCANO_INTERIOR_1F_HIDDEN_RARE_CANDY

VolcanoInterior1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_VOLCANO_INTERIOR_1F_HIDDEN_ULTRA_BALL

VolcanoInterior1FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_VOLCANO_INTERIOR_1F_HIDDEN_FULL_RESTORE


TrainerHikerMichael:
	trainer HIKER, MICHAEL, EVENT_BEAT_HIKER_MICHAEL, HikerMichaelSeenText, HikerMichaelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerMichaelAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerMAaron:
	trainer COOLTRAINERM, AARON, EVENT_BEAT_COOLTRAINERM_AARON, CoolTrainerMAaronSeenText, CoolTrainerMAaronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CoolTrainerMAaronAfterText
	waitbutton
	closetext
	end

TrainerFirebreatherNed:
	trainer FIREBREATHER, NED, EVENT_BEAT_FIREBREATHER_NED, FirebreatherNedSeenText, FirebreatherNedBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherNedAfterText
	waitbutton
	closetext
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

TrainerBattleGirlVidel:
	trainer BATTLE_GIRL, VIDEL, EVENT_BEAT_BATTLE_GIRL_VIDEL, BattleGirlVidelSeenText, BattleGirlVidelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BattleGirlVidelAfterText
	waitbutton
	closetext
	end

TrainerGoronDaru:
	trainer GORON, DARU, EVENT_BEAT_GORON_DARU, GoronDaruSeenText, GoronDaruBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GoronDaruAfterText
	waitbutton
	closetext
	end

TrainerFeralChildGau:
	trainer FERAL_CHILD, GAU, EVENT_BEAT_FERAL_CHILD_GAU, FeralChildGauSeenText, FeralChildGauBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FeralChildGauAfterText
	waitbutton
	closetext
	end

TrainerTamerRingle:
	trainer TAMER, RINGLE, EVENT_BEAT_TAMER_RINGLE, TamerRingleSeenText, TamerRingleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TamerRingleAfterText
	waitbutton
	closetext
	end

TamerRingleSeenText:
	text "I'm here looking"
	line "for some new"
	cont "#MON for my"
	cont "circus."
	done

TamerRingleBeatenText:
	text "Well they are"
	line "just circus #-"
	cont "-MON..."
	done

TamerRingleAfterText:
	text "They don't let"
	line "you whip your"
	cont "#MON anymore."
	done

FeralChildGauSeenText:
	text "Uwaoooo!"
	done

FeralChildGauBeatenText:
	text "You... strong"

	para "more... me?"
	done

FeralChildGauAfterText:
	text "Gau like warm"
	line "volcano."
	done

GoronDaruSeenText:
	text "The rocks in this"
	line "volcano are so"
	cont "delicious!"
	done

GoronDaruBeatenText:
	text "I got hungry and"
	line "ate some of my"
	cont "ROCK #MON."

	para "That's why you"
	line "won."
	done

GoronDaruAfterText:
	text "I'm not sure how"
	line "I got here..."
	done

BattleGirlVidelSeenText:
	text "If you know"
	line "what's good for"
	cont "you, you'll give"
	cont "up now!"
	done

BattleGirlVidelBeatenText:
	text "I thought that"
	line "switching to"
	cont "#MON battles"
	cont "would make me"
	cont "relevent again."
	done

BattleGirlVidelAfterText:
	text "At least I'm not"
	line "Yamcha."
	done

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

FirebreatherNedSeenText:
	text "I came to this"
	line "volcano because"
	cont "I have developed"
	cont "frills and this"
	cont "is the only way"
	cont "I can breathe."
	done

FirebreatherNedBeatenText:
	text "Frills are like"
	line "gills, but for"
	cont "fire."
	done

FirebreatherNedAfterText:
	text "I'm hoping I can"
	line "evolve to be a"
	cont "flambephibious"
	cont "creature."

	para "So I can breathe"
	line "air and fire."
	done

CoolTrainerMAaronSeenText:
	text "This guy in a"
	line "lab coat made me"
	cont "pick between 3"
	cont "#MON."

	para "I just took all 3"
	line "and ran."
	done

CoolTrainerMAaronBeatenText:
	text "I guess crime"
	line "doesn't pay after"
	cont "all..."
	done

CoolTrainerMAaronAfterText:
	text "I should've gone"
	line "for his wallet..."
	done

HikerMichaelSeenText:
	text "I love hiking in"
	line "a cave almost as"
	cont "much as I like"
	cont "dick."
	done

HikerMichaelBeatenText:
	text "I could go for a"
	line "good 'hike in a"
	cont "cave' right now."
	done

HikerMichaelAfterText:
	text "Dick is the name"
	line "of my husband."
	done



VolcanoInterior1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 27, 33, VOLCANO_EXTERIOR, 1
	warp_event 49, 29, VOLCANO_EXTERIOR, 2
	warp_event  5, 25, VOLCANO_EXTERIOR, 3
	warp_event 45, 17, VOLCANO_INTERIOR_B1F, 1
	warp_event 47,  3, VOLCANO_INTERIOR_B1F, 2
	warp_event 39, 33, VOLCANO_INTERIOR_2F, 1
	warp_event 21,  5, VOLCANO_INTERIOR_2F, 2
	warp_event 45,  3, VOLCANO_INTERIOR_2F, 3

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 23, 18, VOLCANO_INTERIOR_1F_DOWNSTAIRS, VolcanoInterior1FUpstairsSet
	coord_event 23, 20, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 26, 32, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 27, 32, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 51, 22, VOLCANO_INTERIOR_1F_DOWNSTAIRS, VolcanoInterior1FUpstairsSet
	coord_event  7,  9, VOLCANO_INTERIOR_1F_DOWNSTAIRS, VolcanoInterior1FUpstairsSet
	coord_event 45, 25, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 45, 24, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 23, 10, VOLCANO_INTERIOR_1F_DOWNSTAIRS, VolcanoInterior1FUpstairsSet

	def_bg_events
;	bg_event x, y, type, script
	bg_event 31,  2, BGEVENT_ITEM, VolcanoInterior1FHiddenIceHeal
	bg_event  4, 10, BGEVENT_ITEM, VolcanoInterior1FHiddenRareCandy
	bg_event 38, 24, BGEVENT_ITEM, VolcanoInterior1FHiddenUltraBall
	bg_event 26,  8, BGEVENT_ITEM, VolcanoInterior1FHiddenFullRestore

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 26, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Volcano1FBoulder, -1
	object_event 27, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Volcano1FBoulder2, -1
	object_event 26, 21, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerMichael, -1
	object_event 33,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMAaron, -1
	object_event 42, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherNed, -1
	object_event 42,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerWeirdoBrent, -1
	object_event 40, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlVidel, -1
	object_event 15,  9, SPRITE_GORON, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGoronDaru, -1
	object_event 49, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerFeralChildGau, -1
	object_event 32, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTamerRingle, -1
	object_event 35, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior1FGuardSpec, EVENT_VOLCANO_INTERIOR_1F_GUARD_SPEC
	object_event 45, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior1FProtein, EVENT_VOLCANO_INTERIOR_1F_PROTEIN
	object_event  8,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior1FXSpecial, EVENT_VOLCANO_INTERIOR_1F_X_SPECIAL
	object_event 33,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior1FFireStone, EVENT_VOLCANO_INTERIOR_1F_FIRE_STONE
