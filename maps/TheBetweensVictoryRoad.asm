	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_BETWEENS_VICTORY_ROAD_ROCK_BRIAN
	const THE_BETWEENS_VICTORY_ROAD_BOULDER_1
	const THE_BETWEENS_VICTORY_ROAD_BOULDER_2
	const THE_BETWEENS_VICTORY_ROAD_POKE_BALL_1
	const THE_BETWEENS_VICTORY_ROAD_POKE_BALL_2
	const THE_BETWEENS_VICTORY_ROAD_COOLTRAINER_F
	const THE_BETWEENS_VICTORY_ROAD_SAILOR
	const THE_BETWEENS_VICTORY_ROAD_THE_EMPTY


TheBetweensVictoryRoad_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_STONETABLE, TheBetweensVictoryRoadSetUpStoneTableCallback

TheBetweensVictoryRoadBoulder:
	jumpstd StrengthBoulderScript

TrainerGirlBossLina:
	trainer GIRL_BOSS, LINA, EVENT_BEAT_GIRL_BOSS_LINA, GirlBossLinaSeenText, GirlBossLinaBeatenText, 0, .GirlBossLinaScript

.GirlBossLinaScript:
	endifjustbattled
	opentext
	writetext GirlBossLinaAfterText
	waitbutton
	closetext
	end

GirlBossLinaSeenText:
	text "I'm on the way to"
	line "take on the ELITE"
	cont "FOUR."
	
	para "I'm going to be"
	line "the 5th or 6th"
	cont "woman to be a"
	cont "#MON LEAGUE"
	cont "CHAMPION!"
	done

GirlBossLinaBeatenText:
	text "I won this battle"
	line "actually."
	done

GirlBossLinaAfterText:
	text "Gatekeeping?"

	para "Gaslighting?"

	para "These are just a"
	line "few of the tools"
	cont "in my arsenal."
	done

TrainerSailorEugene:
	trainer SAILOR, EUGENE, EVENT_BEAT_SAILOR_EUGENE, EugeneSeenText, EugeneBeatenText, 0, .EugeneScript

.EugeneScript:
	endifjustbattled
	opentext
	writetext EugeneAfterText
	waitbutton
	closetext
	end

EugeneSeenText:
	text "Ahoy! I'm sailing"
	line "through the most"
	cont "treacherous of"
	cont "the seas:"

	para "Land."
	done

EugeneBeatenText:
	text "Hiking through a"
	line "cave is just like"
	cont "sailing."

	para "You can't waste"
	line "time with a"
	cont "#MON battle"
	cont "while you do it."
	done

EugeneAfterText:
	text "Since our battle,"
	line "I've been as"
	cont "salty as the sea"
	cont "that I love."
	done

TrainerTheEmpty5:
	trainer THE_EMPTY, THE_EMPTY_5, EVENT_BEAT_THE_EMPTY_5, TheEmpty5SeenText, TheEmpty5BeatenText, 0, .Script

.Script:
	writetext TheEmpty4AfterText
	waitbutton
	special FadeBlackQuickly
	playsound SFX_PERISH_SONG
	waitsfx
	disappear THE_BETWEENS_VICTORY_ROAD_THE_EMPTY
	special FadeInQuickly
	closetext
	end

TheEmpty5SeenText:
	text "???: W H O"
	line "S E N T   Y O U ?"
	done

TheEmpty5BeatenText:
	text " W H A T   I S"
	line "H A P P E N I N G"
	cont "   T O   M E ? ?"

	para "I T  H U R T S"
	done

TheEmpty5AfterText:
	text " o   o"
	line "   U  "
	done

TrainerRockBrian4:
	trainer ROCK_BRIAN, ROCKBRIAN_4, EVENT_BEAT_ROCK_BRIAN_4, RockBrian4SeenText, RockBrian4BeatenText, 0, .Script

.Script:
	opentext
	writetext RockBrian4AfterBattleText
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
	disappear THE_BETWEENS_VICTORY_ROAD_ROCK_BRIAN
	refreshscreen
	opentext
	verbosegiveitem KINGS_ROCK
	waitbutton
	closetext
	end

RockBrian4SeenText:
	text "BRIAN: whatup me?"
	line "You haven't fused"
	cont "with all of us,"
	cont "so I'm still here!"

	para "I'm a rock!"
	done

RockBrian4BeatenText:
	text "BRIAN: You know"
	line "what rocks?"

	para "No matter what"
	line "happened in this"
	cont "battle..."

	para "I win."
	done

RockBrian4AfterBattleText:
	text "BRIAN: Well,"
	line "we're almost to"
	cont "the end."

	para "KYLE'S DESKTOP"
	line "is just ahead."

	para "If you can just"
	line "hit the credits"
	cont "button, the game"
	cont "will end."

	para "Just like one of"
	line "those speedruns"
	cont "people complain"
	cont "about."
	done

TheBetweensVictoryRoadSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 2, THE_BETWEENS_VICTORY_ROAD_BOULDER_1, .Block1
	stonetable 2, THE_BETWEENS_VICTORY_ROAD_BOULDER_2, .Block2
	db -1 ; end

.Block1:
	disappear THE_BETWEENS_VICTORY_ROAD_BOULDER_1
	sjump .FinishRock

.Block2:
	disappear THE_BETWEENS_VICTORY_ROAD_BOULDER_2
	sjump .FinishRock

.FinishRock:
	setevent EVENT_THE_BETWEENS_VICTORY_ROAD_BOULDER
	clearevent EVENT_THE_BETWEENS_ICE_PATH_BOULDER_MISSING
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	opentext
	reloadmappart
	closetext
	end

TheBetweensVictoryRoadTMCalmMind:
	itemball TM_CALM_MIND

TheBetweensVictoryRoadRareCandy:
	itemball RARE_CANDY

TheBetweensVictoryRoadHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_THE_BETWEENS_VICTORY_ROAD_HIDDEN_FULL_RESTORE

TheBetweensVictoryRoadHiddenUltraBall:
	hiddenitem FULL_RESTORE, EVENT_THE_BETWEENS_VICTORY_ROAD_HIDDEN_ULTRA_BALL

TheBetweensVictoryRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3, 3, THE_BETWEENS_FACILITY, 3
	warp_event 21, 15, THE_BETWEENS_ICE_PATH, 1
	warp_event 12, 21, THE_BETWEENS_TRADITIONAL_HOUSE, 3
	warp_event 13, 21, THE_BETWEENS_TRADITIONAL_HOUSE, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 19,  2, BGEVENT_ITEM, TheBetweensVictoryRoadHiddenFullRestore
	bg_event 18, 13, BGEVENT_ITEM, TheBetweensVictoryRoadHiddenUltraBall

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 3, 12, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerRockBrian4, EVENT_BEAT_ROCK_BRIAN_4
	object_event  9, 19, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheBetweensVictoryRoadBoulder, 0
	object_event 17,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheBetweensVictoryRoadBoulder, 0
	object_event 12,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensVictoryRoadRareCandy, EVENT_THE_BETWEENS_VICTORY_ROAD_RARE_CANDY
	object_event 14,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensVictoryRoadTMCalmMind, EVENT_GOT_TM04_CALM_MIND
	object_event  9,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerGirlBossLina, 0
	object_event  5,  5, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerSailorEugene, 0
	object_event 14, 11, SPRITE_THE_EMPTY, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTheEmpty5, EVENT_BEAT_THE_EMPTY_5
