	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_EXTERIOR_M_BLOCK
	const VOLCANO_EXTERIOR_GOLLUM_BRIAN
	const VOLCANO_EXTERIOR_RYAN
	const VOLCANO_EXTERIOR_POKE_BALL_1
	const VOLCANO_EXTERIOR_POKE_BALL_2
	const VOLCANO_EXTERIOR_POKE_BALL_3
	const VOLCANO_EXTERIOR_POKE_BALL_4

VolcanoExterior_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, VolcanoLadderCallback

VolcanoLadderCallback:
	checkevent EVENT_VOLCANO_LADDER_OPTIONAL
	iffalse .Ladder1
	changeblock 14, 42, $60
	changeblock 14, 44, $61
.Ladder1
	checkevent EVENT_VOLCANO_LADDER_1
	iffalse .Ladder2
	changeblock 34, 48, $67
.Ladder2
	checkevent EVENT_VOLCANO_LADDER_2
	iffalse .Ladder3
	changeblock 36, 36, $61
	changeblock 36, 38, $61
	changeblock 36, 40, $61
.Ladder3
	checkevent EVENT_VOLCANO_LADDER_3
	iffalse .Ladder4
	changeblock 32, 30, $60
	changeblock 32, 32, $61
	changeblock 32, 32, $61
.Ladder4
	checkevent EVENT_VOLCANO_LADDER_4
	iffalse .End
	changeblock 36, 18, $60
	changeblock 36, 20, $61
	changeblock 36, 22, $61
	changeblock 36, 24, $61
	changeblock 36, 26, $61
.End
	endcallback


VolcanoExteriorPokemonCenterSign:
	jumptext VolcanoExteriorPokemonCenterSignText


VolcanoExteriorPokemonCenterSignText:
	text "REST STOP"
	done

VolcanoLadder1Trigger:
	checkevent EVENT_VOLCANO_LADDER_1
	iftrue .End
	opentext
	writetext VolcanoLadderText1
	yesorno
	iffalse .End
	writetext VolcanoLadderText2
	waitbutton
	setevent EVENT_VOLCANO_LADDER_1
	playsound SFX_ENTER_DOOR
	changeblock 34, 48, $67
	reloadmappart
	closetext
.End:
	end

VolcanoLadder2Trigger:
	checkevent EVENT_VOLCANO_LADDER_2
	iftrue .End
	opentext
	writetext VolcanoLadderText1
	yesorno
	iffalse .End
	writetext VolcanoLadderText2
	waitbutton
	setevent EVENT_VOLCANO_LADDER_2
	playsound SFX_ENTER_DOOR
	changeblock 36, 36, $61
	changeblock 36, 38, $61
	changeblock 36, 40, $61
	reloadmappart
	closetext
.End:
	end

VolcanoLadder3Trigger:
	checkevent EVENT_VOLCANO_LADDER_3
	iftrue .End
	opentext
	writetext VolcanoLadderText1
	yesorno
	iffalse .End
	writetext VolcanoLadderText2
	waitbutton
	setevent EVENT_VOLCANO_LADDER_3
	playsound SFX_ENTER_DOOR
	changeblock 32, 30, $60
	changeblock 32, 32, $61
	reloadmappart
	closetext
.End:
	end


VolcanoLadder4Trigger:
	checkevent EVENT_VOLCANO_LADDER_4
	iftrue .End
	opentext
	writetext VolcanoLadderText1
	yesorno
	iffalse .End
	writetext VolcanoLadderText2
	waitbutton
	setevent EVENT_VOLCANO_LADDER_4
	playsound SFX_ENTER_DOOR
	changeblock 36, 18, $60
	changeblock 36, 20, $61
	changeblock 36, 22, $61
	changeblock 36, 24, $61
	changeblock 36, 26, $61
	reloadmappart
	closetext
.End:
	end

VolcanoLadderOptionalTrigger:
	checkevent EVENT_VOLCANO_LADDER_OPTIONAL
	iftrue .End
	opentext
	writetext VolcanoLadderText1
	yesorno
	iffalse .End
	writetext VolcanoLadderText2
	waitbutton
	setevent EVENT_VOLCANO_LADDER_OPTIONAL
	playsound SFX_ENTER_DOOR
	changeblock 14, 42, $60
	changeblock 14, 44, $61
	reloadmappart
	closetext
.End:
	end

VolcanoLadderText1:
	text "A ladder hangs"
	line "off the edge of"
	cont "the volcano."

	para "Release the lever"
	line "to lower it down?"
	done

VolcanoLadderText2:
	text "The ladder drops"
	line "down below!"

	para "What a convenient"
	line "shortcut!"
	done

VolcanoExteriorBiteTM:
	itemball TM_BITE

VolcanoExteriorHyperPotion:
	itemball HYPER_POTION

VolcanoExteriorCarbos:
	itemball CARBOS

VolcanoExteriorMaxPotion:
	itemball MAX_POTION

MBlockOverworld:
	opentext
	writetext MBlockText
	cry M_BLOCK
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon M_BLOCK, 75
	startbattle
	disappear VOLCANO_EXTERIOR_M_BLOCK
	reloadmapafterbattle
	setevent EVENT_FOUGHT_M_BLOCK
	verbosegiveitem ITEM_C0
	end

MBlockText:
	text "When you initiate a battle with 3TRAINER#, the battle will continue after catching it, but not defeating it. If 3TRAINER# is captured again, the battle will truly end and the #mon will become Ditto."
	line "This glitch #mon's encounter flag means that if a 3TRAINER# battle is initiated in the wild, or if 3TRAINER# is sent out by a trainer, then it will duplicate the quantity of item 1 by 128 if less than 128 (unlike MissingNo. and 'M (00) which duplicate item 6 by 128). Currently the only known ways to encounter 3TRAINER# in the wild without a cheating device, hacking or editing the memory are through expanded party encounter table manipulation and arbitrary code execution."
	
	para "All boys leave"
	line "home someday,"
	cont "it said so on TV"
	done

GollumBrianText1:
	text "The precious..."

	para "Give me the"
	line "precious!"
	done

VolcanoRyanText1:
	text "BRIANSILDUR!"

	para "You must destroy"
	line "the glitch!"
	done

GollumBrianText2:
	text "GOLLUM BRIAN: No."
	done

VolcanoExteriorGollumBrian:
VolcanoExteriorRyan:
	end


VolcanoExterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 30, 49, VOLCANO_INTERIOR_1F, 1
	warp_event 41, 45, VOLCANO_INTERIOR_1F, 2
	warp_event 19, 45, VOLCANO_INTERIOR_1F, 3
	warp_event 29, 45, VOLCANO_INTERIOR_2F, 4
	warp_event 35, 39, VOLCANO_INTERIOR_3F, 3
	warp_event 17, 41, VOLCANO_INTERIOR_3F, 4
	warp_event 37, 33, VOLCANO_INTERIOR_4F, 1
	warp_event 53, 33, VOLCANO_INTERIOR_4F, 2
	warp_event 21, 31, VOLCANO_INTERIOR_5F, 1
	warp_event 29, 25, VOLCANO_INTERIOR_6F, 2
	warp_event 47, 25, VOLCANO_INTERIOR_6F_HALL, 1
	warp_event 36,  5, VOLCANO_INTERIOR_6F_HALL, 2
	warp_event 22, 37, VOLCANO_REST_STOP, 1

	def_coord_events
;	coord_event x, y, scene_id, script


	def_bg_events
;	bg_event x, y, type, script
	bg_event 24, 37, BGEVENT_READ, VolcanoExteriorPokemonCenterSign
	bg_event 35, 48, BGEVENT_READ, VolcanoLadder1Trigger
	bg_event 37, 19, BGEVENT_READ, VolcanoLadder4Trigger
	bg_event 33, 31, BGEVENT_READ, VolcanoLadder3Trigger
	bg_event 15, 43, BGEVENT_READ, VolcanoLadderOptionalTrigger
	bg_event 37, 36, BGEVENT_READ, VolcanoLadder2Trigger

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 36, 12, SPRITE_M_BLOCK, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MBlockOverworld, 0
	object_event 36, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VolcanoExteriorGollumBrian, EVENT_FELL_INTO_BROCANO
	object_event 36, 20, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoExteriorRyan, EVENT_FELL_INTO_BROCANO
	object_event 13, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorBiteTM, EVENT_GOT_TM01_BITE
	object_event 40, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorHyperPotion, EVENT_VOLCANO_EXTERIOR_HYPER_POTION
	object_event 43, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorCarbos, EVENT_VOLCANO_EXTERIOR_CARBOS
	object_event 37,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorMaxPotion, EVENT_VOLCANO_EXTERIOR_MAX_POTION
