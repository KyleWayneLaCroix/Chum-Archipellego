	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior4F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script VolcanoInterior4FDownstairs, VOLCANO_INTERIOR_4F_DOWNSTAIRS
	scene_script VolcanoInterior4FUpstairs, VOLCANO_INTERIOR_4F_UPSTAIRS

	def_callbacks
;	callback type, script

VolcanoInterior4FDownstairsSet:
	setscene VOLCANO_INTERIOR_4F_DOWNSTAIRS
	;fallthrough
VolcanoInterior4FDownstairs:
	; top bridge
	changeblock 46, 4, $58
	changeblock 48, 4, $40
	changeblock 50, 4, $40
	changeblock 52, 4, $40
	changeblock 54, 4, $40
	changeblock 56, 4, $59
	; vertical bridge
	changeblock 58,  6, $5F
	changeblock 58,  8, $44
	changeblock 58, 10, $44
	changeblock 58, 12, $44
	changeblock 58, 14, $61
	end

VolcanoInterior4FUpstairsSet:
	setscene VOLCANO_INTERIOR_4F_UPSTAIRS
	;fallthrough
VolcanoInterior4FUpstairs:
	; top bridge
	changeblock 46, 4, $5A
	changeblock 48, 4, $51
	changeblock 50, 4, $51
	changeblock 52, 4, $51
	changeblock 54, 4, $51
	changeblock 56, 4, $5B
	; vertical bridge
	changeblock 58,  6, $60
	changeblock 58,  8, $52
	changeblock 58, 10, $52
	changeblock 58, 12, $52
	changeblock 58, 14, $62
	end

VolcanoInterior4FLeverScript:
	opentext
	checkevent EVENT_VOLCANO_INTERIOR_4F_LEVER
	iftrue .After
	writetext VolcanoInterior4FLeverText
	yesorno
	iffalse .No
	writetext VolcanoInterior4FPullLeverText
	waitbutton
	variablesprite SPRITE_VOLCANO_4F_LEVER, SPRITE_LEVER_RIGHT
	special LoadUsedSpritesGFX
	changeblock 42, 20, $74
	changeblock 44, 20, $70
	changeblock 46, 20, $70
	changeblock 48, 20, $70
	changeblock 50, 20, $73
	refreshscreen
	playsound SFX_STRENGTH
	earthquake 30
	waitsfx
	closetext
	setevent EVENT_VOLCANO_INTERIOR_4F_LEVER
	end
.After:
	writetext VolcanoInterior4FLeverAfterText
	waitbutton
	closetext
	end
.No:
	writetext VolcanoInterior4FNoPullLeverText
	waitbutton
	closetext
	end

VolcanoInterior4FLeverText:
	text "A lever sits in"
	line "the middle of the"
	cont "ground."

	para "Pull it?"
	done

VolcanoInterior4FNoPullLeverText:
	text "Good idea, who"
	line "knows what it'd"
	cont "do?"
	done

VolcanoInterior4FPullLeverText:
	text "You pull the"
	line "lever, and some-"
	cont "-thing rises up"
	cont "from the lava!"
	done

VolcanoInterior4FLeverAfterText:
	text "Oh hey, it's that"
	line "lever you pulled"
	cont "earlier."

	para "Good times."
	done

VolcanoInterior4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9, 31, VOLCANO_EXTERIOR, 7
	warp_event 57, 39, VOLCANO_EXTERIOR, 8
	warp_event 61,  3, VOLCANO_INTERIOR_3F, 7
	warp_event 39, 17, VOLCANO_INTERIOR_3F, 8

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 57, 20, VOLCANO_INTERIOR_4F_UPSTAIRS, VolcanoInterior4FDownstairsSet
	coord_event 45, 13, VOLCANO_INTERIOR_4F_UPSTAIRS, VolcanoInterior4FDownstairsSet
	coord_event 44, 13, VOLCANO_INTERIOR_4F_UPSTAIRS, VolcanoInterior4FDownstairsSet
	coord_event 61,  2, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 61,  4, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 62,  3, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 60,  3, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 46,  5, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 46,  4, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet
	coord_event 57, 16, VOLCANO_INTERIOR_4F_DOWNSTAIRS, VolcanoInterior4FUpstairsSet

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 56, 20, SPRITE_VOLCANO_4F_LEVER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoInterior4FLeverScript, 0
