	object_const_def
;	const MAPNAME_OBJECTNAME
	const METROID_END_ENERGY_TANK
	const METROID_END_ZOOMER_1
	const METROID_END_ZOOMER_2
	const METROID_END_ZOOMER_3
	const METROID_END_RIPPER_1
	const METROID_END_RIPPER_2

MetroidEnd_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MetroidEndEnergyTank:
	itemball TM_SWIFT

MetroidEndZoomer1:
	scall MetroidEndZoomerTrap
	reloadmapafterbattle
	setevent EVENT_METROID_END_ZOOMER_1
	disappear METROID_END_ZOOMER_1
	end

MetroidEndZoomer2:
	scall MetroidEndZoomerTrap2
	reloadmapafterbattle
	setevent EVENT_METROID_END_ZOOMER_2
	disappear METROID_END_ZOOMER_2
	end

MetroidEndZoomer3:
	scall MetroidEndZoomerTrap2
	reloadmapafterbattle
	setevent EVENT_METROID_END_ZOOMER_3
	disappear METROID_END_ZOOMER_3
	end

MetroidEndZoomerTrap:
	special FadeOutPalettes
	cry PORYGON
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon PORYGON, 11
	startbattle
	end

MetroidEndZoomerTrap2:
	special FadeOutPalettes
	cry UNOWN
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon UNOWN, 13
	startbattle
	end

MetroidEndRipper1:
	trainer MAD_DOG, BRIAN_1, EVENT_BEAT_MAD_DOG_BRIAN_1, BrianRipperSeenText, BrianRipperBeatenText, 0, .Script

.Script:
	opentext
	writetext BrianRipperAfterText
	waitbutton
	closetext
	earthquake 80
	waitsfx
	disappear METROID_END_RIPPER_1
	end

MetroidEndRipper2:
	trainer GRUNTF, GRUNTF_1, EVENT_BEAT_ROCKET_GRUNTF_1, MetroidEndRipperSeenText, MetroidEndRipperBeatenText, 0, .Script

.Script:
	opentext
	writetext MetroidEndRipperAfterText
	waitbutton
	closetext
	earthquake 80
	waitsfx
	disappear METROID_END_RIPPER_2
	end

BrianRipperSeenText:
	text "BRIAN: Did you"
	line "know that I am"

	para "A METROID enemy"
	line "called a RIPPER?"

	para "Name seems a bit"
	line "hardcore for a"
	cont "floating poop."
	done

BrianRipperBeatenText:
	text "Why did KYLE call"
	line "this CYBERSPACE?"
	done

BrianRipperAfterText:
	text "I'd rather be"
	line "playing SMB3."
	done

MetroidEndRipperSeenText:
	text "MOM: 05fe offset"
	line "HELP?"
	done

MetroidEndRipperBeatenText:
	text "I CANT KILL YOUR"
	line "#MON"
	done

MetroidEndRipperAfterText:
	text "i can make them"
	line "faint"
	done

MetroidEnd_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 0, 11, METROID_VERTICAL_HALLWAY, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  4,  3, SPRITE_ENERGY_TANK, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MetroidEndEnergyTank, EVENT_GOT_TM44_SWIFT
	object_event 16, 12, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidEndZoomer1, EVENT_METROID_END_ZOOMER_1
	object_event 32, 12, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidEndZoomer2, EVENT_METROID_END_ZOOMER_2
	object_event  8,  6, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MetroidEndZoomer3, EVENT_METROID_END_ZOOMER_3
	object_event 14,  7, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 5, MetroidEndRipper1, 0
	object_event 22,  3, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 3, MetroidEndRipper2, 0
