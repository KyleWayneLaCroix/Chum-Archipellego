	object_const_def
;	const MAPNAME_OBJECTNAME


AwakeningDungeonTreasureRoom_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

AwakeningDungeonTreasure:
	opentext
	playsound SFX_FANFARE_2
	writetext YouGotFlippers
	waitbutton
	setevent EVENT_GOT_ZORA_FLIPPERS
	closetext
	playsound SFX_WARP_TO
	special FadeBlackQuickly
	waitsfx
	playsound SFX_WARP_FROM
	waitsfx
	warp AWAKENING_BEACH_2, 40, 15
	end

YouGotFlippers:
	text "Your received"
	line "ZORA FLIPPERS"
	line "   HM SURF   "

	para "You can now"
	line "SWIM in water!"
	line "SURF in water!"
	done

AwakeningDungeonTreasureRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  7, 12, AWAKENING_DUNGEON_BOSS_ROOM, 3
	warp_event  8, 12, AWAKENING_DUNGEON_BOSS_ROOM, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonTreasure, EVENT_GOT_ZORA_FLIPPERS
