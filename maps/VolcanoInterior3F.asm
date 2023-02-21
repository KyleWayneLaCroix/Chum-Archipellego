	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_3F_LEVER


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
	refreshscreen
.End:
	end

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

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 12, 24, SPRITE_VOLCANO_3F_LEVER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoInterior3FLeverScript, 0
