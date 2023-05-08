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

BadEggExterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 9, 23, MAYBE_VILLAGE, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
