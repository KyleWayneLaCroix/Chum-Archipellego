	object_const_def
;	const MAPNAME_OBJECTNAME
	const AWAKENING_DUNGEON_BOSS_ROOM_ARMOS_PURPLE
	const AWAKENING_DUNGEON_BOSS_ROOM_ARMOS_GREEN
	const AWAKENING_DUNGEON_BOSS_ROOM_ARMOS_RED


AwakeningDungeonBossRoom_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, CheckBeatBosses

CheckBeatBosses:
	checkevent EVENT_BEAT_ARMOS_2
	iffalse .EndCallback
	checkevent EVENT_BEAT_ARMOS_3
	iffalse .EndCallback
	checkevent EVENT_BEAT_ARMOS_4
	iffalse .EndCallback
	changeblock 6, 0, $7C
	changeblock 8, 0, $7D
	changeblock 6, 2, $80
	changeblock 8, 2, $81
.EndCallback
	endcallback

TrainerArmosPurple:
	playsound SFX_HYPER_BEAM
	waitsfx
	opentext
	writetext TrainerArmos2SeenText
	waitbutton
	closetext
	winlosstext TrainerArmos2BeatenText, 0
	loadtrainer ARMOS, ARMOS_2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ARMOS_2
	disappear AWAKENING_DUNGEON_BOSS_ROOM_ARMOS_PURPLE
	playsound SFX_STRENGTH
	earthquake 130
	checkevent EVENT_BEAT_ARMOS_3
	iffalse .End
	checkevent EVENT_BEAT_ARMOS_4
	iffalse .End
	scall AwakeningDungeonBeatBosses
.End:
	end

TrainerArmosGreen:
	playsound SFX_HYPER_BEAM
	waitsfx
	opentext
	writetext TrainerArmos3SeenText
	waitbutton
	closetext
	winlosstext TrainerArmos3BeatenText, 0
	loadtrainer ARMOS, ARMOS_3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ARMOS_3
	disappear AWAKENING_DUNGEON_BOSS_ROOM_ARMOS_GREEN
	playsound SFX_STRENGTH
	earthquake 130
	checkevent EVENT_BEAT_ARMOS_2
	iffalse .End
	checkevent EVENT_BEAT_ARMOS_4
	iffalse .End
	scall AwakeningDungeonBeatBosses
.End:
	end

TrainerArmosRed:
	playsound SFX_HYPER_BEAM
	waitsfx
	opentext
	writetext TrainerArmos4SeenText
	waitbutton
	closetext
	winlosstext TrainerArmos4BeatenText, 0
	loadtrainer ARMOS, ARMOS_4
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ARMOS_4
	disappear AWAKENING_DUNGEON_BOSS_ROOM_ARMOS_RED
	playsound SFX_STRENGTH
	earthquake 130
	checkevent EVENT_BEAT_ARMOS_2
	iffalse .End
	checkevent EVENT_BEAT_ARMOS_3
	iffalse .End
	scall AwakeningDungeonBeatBosses
.End:
	end

AwakeningDungeonBeatBosses:
	playsound SFX_ZAP_CANNON
	special FadeBlackQuickly
	changeblock 6, 0, $7C
	changeblock 8, 0, $7D
	changeblock 6, 2, $80
	changeblock 8, 2, $81
	reloadmap
	special FadeInQuickly
	end

TrainerArmos4SeenText:
	text "DO NOT BE FOOLED"
	line "BY ITS HARMLESS"
	cont "VISAGE."

	para "THE LAND WITHIN"
	line "YET BEYOND THE"
	cont "BAD EGG IS FULL"
	cont "OF DANGERS YOU"
	cont "CANNOT UNDER-"
	cont "-STAND."
	done

TrainerArmos4BeatenText:
	text "YOU ARE BRINGING"
	line "ABOUT YOUR OWN"
	cont "DESTRUCTION."

	para "YOU ARE BRINGING"
	line "ABOUT THE"
	cont "DESTRUCTION OF"
	cont "THE CREATOR."
	done

TrainerArmos3SeenText:
	text "THE SHADOW IS"
	line "LOCKED BEYOND"
	cont "REACH."

	para "BEWARE THE PIT."

	para "DO NOT UNLEASH"
	line "WHAT'S INSIDE."
	done

TrainerArmos3BeatenText:
	text "YOU WILL BRING."
	line "ABOUT THE END."
	done

TrainerArmos2SeenText:
	text "YOU MUST NOT OPEN"
	line "THE BAD EGG."

	para "THE SLEEPING ONE"
	line "MUST LIE."
	done

TrainerArmos2BeatenText:
	text "DO NOT ENTER THE"
	line "PIT OF DESPAIR."
	done

AwakeningDungeonBossRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  7, 18, AWAKENING_DUNGEON, 11
	warp_event  8, 18, AWAKENING_DUNGEON, 12
	warp_event  7,  1, AWAKENING_DUNGEON_TREASURE_ROOM, 1
	warp_event  8,  1, AWAKENING_DUNGEON_TREASURE_ROOM, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  3, 12, SPRITE_ARMOS, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TrainerArmosPurple, EVENT_BEAT_ARMOS_2
	object_event 11, 12, SPRITE_ARMOS, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerArmosGreen, EVENT_BEAT_ARMOS_3
	object_event  7,  2, SPRITE_ARMOS, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerArmosRed, EVENT_BEAT_ARMOS_4
