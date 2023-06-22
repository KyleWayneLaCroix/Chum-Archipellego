	object_const_def
;	const MAPNAME_OBJECTNAME


BadEggExterior_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script BadEggExteriorPhoneCutscene, SCENE_BAD_EGG_PHONE
	scene_script BadEggExteriorNoop1, SCENE_BAD_EGG_NONE

	def_callbacks
;	callback type, script

BadEggExteriorNoop1:
	end

BadEggExteriorPhoneCutscene:
	special FadeBlackQuickly
	applymovement PLAYER, BadEggExteriorHide
	special FadeInQuickly
	refreshscreen
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	opentext
	writetext BadEggExteriorPhone1
	waitbutton
	writetext BadEggExteriorPhone2
	waitbutton
	writetext BadEggExteriorPhone3
	waitbutton
	writetext BadEggExteriorPhone4
	waitbutton
	closetext
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	warp PHONE_ROOM, 6, 7
	end

BadEggExteriorPhone1:
	text "The source of all"
	line "the glitches that"
	cont "infect our world,"
	cont "it seems to be"
	cont "this BAD EGG."
	done

BadEggExteriorPhone2:
	text "You must find a"
	line "way to reach the"
	cont "egg."
	done

BadEggExteriorPhone3:
	text "The fate of the"
	line "ARCHIPELAGO lies"
	cont "in your hands."
	done

BadEggExteriorPhone4:
	text "Only you can"
	line "withstand the"
	cont "glitches inside."
	done

BadEggExteriorHide:
	hide_object
	step_end

BadEggExteriorMoveUp:
	step UP
	step_end
BadEggExteriorMoveDown:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

BadEggExteriorSign:
	jumptext BadEggExteriorSignText

BadEggExteriorSignText:
	text "     BAD EGG     "

	para "    DO NOT EAT   "
	done

BadEggInteraction:
	checkevent EVENT_CRACKED_BAD_EGG
	iftrue .End
	opentext
	writetext BadEggBeforeYou
	yesorno
	iffalse .End
	closetext
	applymovement PLAYER, BadEggExteriorMoveDown
	playsound SFX_STRENGTH
	waitsfx
	earthquake 120
	playsound SFX_STRENGTH
	waitsfx
	applymovement PLAYER, BadEggExteriorMoveUp
	applymovement PLAYER, BadEggExteriorMoveUp
	earthquake 10
	waitsfx
	applymovement PLAYER, BadEggExteriorMoveUp
	earthquake 10
	waitsfx
	applymovement PLAYER, BadEggExteriorMoveUp
	earthquake 10
	waitsfx
	applymovement PLAYER, BadEggExteriorMoveUp
	earthquake 10
	waitsfx
	opentext
	writetext BadEggNoDamage
	special FadeOutPalettes
	cry BAD_EGG
	waitsfx
	special FadeInPalettes
	earthquake 120
	special FadeOutPalettes
	playsound SFX_TOXIC
	waitsfx
	special FadeInPalettes
	closetext
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BAD_EGG, 60
	startbattle
	changeblock 14, 6, $e4
	reloadmapafterbattle
	setevent EVENT_CRACKED_BAD_EGG
	playsound SFX_RAZOR_WIND
	waitsfx
	opentext
	writetext AfterBadEggText
	waitbutton
	closetext
	special FadeOutPalettes
	applymovement PLAYER, BadEggExteriorMoveUp
	playsound SFX_WARP_TO
	waitsfx
	special FadeInPalettes
	warp IVY_ROAD, 14,  7
	end
.End:
	closetext
	end

AfterBadEggText:
	text "The egg cracks"
	line "open, revealing"
	cont "a vacuum inside,"
	cont "sucking you in!"
	done

BadEggNoDamage:
	text "It doesn't look"
	line "like it has a"
	cont "scratch on it."

	para "It does seem to"
	line "    ...shake..."
	cont "though."
	done

BadEggBeforeYou:
	text "The BAD EGG is"
	line "before you."

	para "You ready to try"
	line "blowing it up?"
	done
BadEggExterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 23, 25, FROZEN_PASSAGE_3, 2
	warp_event 14,  7, IVY_ROAD, 11


	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 13, 24, BGEVENT_READ, BadEggExteriorSign
	bg_event 14,  7, BGEVENT_READ, BadEggInteraction

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
