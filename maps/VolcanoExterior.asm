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
	scene_script VolcanoExteriorInit, SCENE_VOLCANO_EXTERIOR_INIT
	scene_script VolcanoExteriorAfterGlitchFight, SCENE_VOLCANO_FOUGHT_GLITCH
	scene_script VolcanoExteriorAfterVolcanoFall, SCENE_VOLCANO_EXTERIOR_LINKS_AWAKENING

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, VolcanoLadderCallback

VolcanoExteriorAfterGlitchFight:
VolcanoExteriorAfterVolcanoFall:
	end

VolcanoExteriorInit:
	disappear VOLCANO_EXTERIOR_GOLLUM_BRIAN
	disappear VOLCANO_EXTERIOR_RYAN
	end

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

VolcanoExteriorSingeTM:
	itemball TM_SINGE

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
	setscene SCENE_VOLCANO_FOUGHT_GLITCH
	opentext
	verbosegiveitem ITEM_C0
	closetext
	appear VOLCANO_EXTERIOR_GOLLUM_BRIAN
	refreshscreen
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianMoveUp
	pause 25
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianMoveUp
	pause 30
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianMoveUp
	pause 15
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_TWINKLE
	opentext
	writetext GollumBrianText1
	waitbutton
	closetext
	follow PLAYER, VOLCANO_EXTERIOR_GOLLUM_BRIAN
	applymovement PLAYER, GollumBrianPushesUp
	pause 15
	applymovement PLAYER, GollumBrianPushesUp
	stopfollow
	pause 5
	appear VOLCANO_EXTERIOR_RYAN
	refreshscreen
	applymovement VOLCANO_EXTERIOR_RYAN, VolcanoRyanMovement1
	opentext
	writetext VolcanoRyanText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, VOLCANO_EXTERIOR_GOLLUM_BRIAN, 15
	pause 15
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianLookDown
	pause 20
	opentext
	writetext VolcanoRyanText2
	waitbutton
	closetext
	refreshscreen
	pause 15
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianMoveDown
	pause 30
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianLookLeft
	pause 10
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianLookRight
	pause 15
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianLookUp
	opentext
	writetext GollumBrianText2
	waitbutton
	closetext
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianMoveUp
	pause 5
	opentext
	writetext GollumBrianText3
	waitbutton
	closetext
	playsound SFX_TACKLE
	;follow PLAYER, VOLCANO_EXTERIOR_GOLLUM_BRIAN
	applymovement PLAYER, GollumBrianShovesYouIntoBrocano
	disappear PLAYER
	playsound SFX_RAZOR_WIND
	applymovement PLAYER, GollumBrianMoveDown
	opentext
	writetext GollumBrianText4
	waitbutton
	closetext
	applymovement VOLCANO_EXTERIOR_GOLLUM_BRIAN, GollumBrianJumpsIntoBrocano
	disappear VOLCANO_EXTERIOR_GOLLUM_BRIAN
	playsound SFX_RAZOR_WIND
	pause 10
	applymovement VOLCANO_EXTERIOR_RYAN, GollumBrianMoveUp
	pause 20
	applymovement VOLCANO_EXTERIOR_RYAN, GollumBrianMoveUp
	pause 30
	applymovement VOLCANO_EXTERIOR_RYAN, GollumBrianMoveUp
	pause 20
	applymovement VOLCANO_EXTERIOR_RYAN, GollumBrianLookDown
	pause 20
	showemote EMOTE_SAD, VOLCANO_EXTERIOR_RYAN, 30
	pause 20
	special FadeOutPalettes
	waitsfx
	warp MARINS_HOUSE, 4, 3
	end

GollumBrianMoveUp:
	turn_head UP
	step UP
	step_end

GollumBrianLookDown:
	turn_head DOWN
	step_end

GollumBrianLookLeft:
	turn_head LEFT
	step_end

GollumBrianLookRight:
	turn_head RIGHT
	step_end

GollumBrianLookUp:
	turn_head UP
	step_end

GollumBrianMoveDown:
	turn_head DOWN
	step DOWN
	step_end

GollumBrianPushesUp:
	turn_head DOWN
	fix_facing
	step UP
	remove_fixed_facing
	step_end

VolcanoRyanMovement1:
	step UP
	step_end

GollumBrianShovesYouIntoBrocano:
	turn_head DOWN
	fix_facing
	jump_step UP
	remove_fixed_facing
	step_end

GollumBrianJumpsIntoBrocano:
	jump_step UP
	step_end

MBlockText:
	text "When you initiate a battle with 3TRAINER#, the battle will continue after catching it, will become Ditto."
	line "This glitch #mon's encounter flag means that if a 3TRAINER# arbitrary code execution."
	
	para "All boys leave"
	line "home someday,"
	cont "it said so on TV."
	done

GollumBrianText1:
	text "The precious..."

	para "Give me the"
	line "precious!"
	done

VolcanoRyanText1:
	text "RYAN: BRIANSILDUR"
	done

VolcanoRyanText2:
	text "RYAN: CAST IT IN"
	line "THE FIRE!"

	para "DESTROY THE"
	line "GLITCH BEFORE"
	cont "IT CORRUPTS YOU"
	cont "FURTHER!"
	done

VolcanoRyanText3:
	text "RYAN: ..."
	done

GollumBrianText2:
	text "GOLLUM BRIAN: No."
	done

GollumBrianText3:
	text "GIVES IT TO ME!"
	done

GollumBrianText4:
	text "NOOOOOO!!!"

	para "THE PRECIOUS!"
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
	object_event 36, 12, SPRITE_M_BLOCK, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MBlockOverworld, 0
	object_event 36, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VolcanoExteriorGollumBrian, EVENT_FELL_INTO_BROCANO
	object_event 36, 16, SPRITE_BRUNO, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VolcanoExteriorRyan, EVENT_FELL_INTO_BROCANO
	object_event 13, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorBiteTM, EVENT_GOT_TM01_BITE
	object_event 40, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorHyperPotion, EVENT_VOLCANO_EXTERIOR_HYPER_POTION
	object_event 43, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorCarbos, EVENT_VOLCANO_EXTERIOR_CARBOS
	object_event 37,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorMaxPotion, EVENT_VOLCANO_EXTERIOR_MAX_POTION
	object_event 18, 47, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VolcanoExteriorSingeTM, EVENT_GOT_TM51_SINGE
