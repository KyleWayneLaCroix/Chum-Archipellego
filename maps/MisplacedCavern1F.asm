	object_const_def
;	const MAPNAME_OBJECTNAME
	const MISPLACED_CAVERN_1F_KEESE_1
	const MISPLACED_CAVERN_1F_KEESE_2

MisplacedCavern1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MisplacedCavern1FKeese1WalkDown3:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_1, MisplacedCavern1FDownMovement
MisplacedCavern1FKeese1WalkDown2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_1, MisplacedCavern1FDownMovement
MisplacedCavern1FKeese1WalkDown1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern1FKeese1
	end

MisplacedCavern1FKeese1WalkRight3:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_1, MisplacedCavern1FRightMovement
MisplacedCavern1FKeese1WalkRight2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_1, MisplacedCavern1FRightMovement
MisplacedCavern1FKeese1WalkRight1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern1FKeese1
	end

MisplacedCavern1FKeese1WalkLeft3:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_1, MisplacedCavern1FLeftMovement
MisplacedCavern1FKeese1WalkLeft2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_1, MisplacedCavern1FLeftMovement
MisplacedCavern1FKeese1WalkLeft1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern1FKeese1
	end

MisplacedCavern1FKeese1WalkUp2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_1, MisplacedCavern1FUpMovement
MisplacedCavern1FKeese1WalkUp1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern1FKeese1
	end
MisplacedCavern1FKeese1:
	opentext
	writetext MisplacedCavern1FKeeseText
	waitbutton
	closetext
	scall MisplacedCavern1FKeeseTrapNoibat
	reloadmapafterbattle
	setevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	disappear MISPLACED_CAVERN_1F_KEESE_1
	end

MisplacedCavern1FKeese2WalkDown3:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_2, MisplacedCavern1FDownMovement
MisplacedCavern1FKeese2WalkDown2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_2, MisplacedCavern1FDownMovement
MisplacedCavern1FKeese2WalkDown1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern1FKeese2
	end

MisplacedCavern1FKeese2WalkRight3:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_2, MisplacedCavern1FRightMovement
MisplacedCavern1FKeese2WalkRight2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_2, MisplacedCavern1FRightMovement
MisplacedCavern1FKeese2WalkRight1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern1FKeese2
	end

MisplacedCavern1FKeese2WalkLeft3:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_2, MisplacedCavern1FLeftMovement
MisplacedCavern1FKeese2WalkLeft2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_2, MisplacedCavern1FLeftMovement
MisplacedCavern1FKeese2WalkLeft1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern1FKeese2
	end

MisplacedCavern1FKeese2WalkUp2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_1F_KEESE_2, MisplacedCavern1FUpMovement
MisplacedCavern1FKeese2WalkUp1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern1FKeese2
	end
MisplacedCavern1FKeese2:
	opentext
	writetext MisplacedCavern1FKeeseText
	waitbutton
	closetext
	scall MisplacedCavern1FKeeseTrapWoobat
	reloadmapafterbattle
	setevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	disappear MISPLACED_CAVERN_1F_KEESE_2
	end

MisplacedCavern1FKeeseTrapNoibat:
	special FadeOutPalettes
	cry NOIBAT
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon NOIBAT, 28
	startbattle
	end

MisplacedCavern1FKeeseTrapWoobat:
	special FadeOutPalettes
	cry WOOBAT
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon WOOBAT, 28
	startbattle
	end

MisplacedCavern1FKeeseText:
	text "keeeeeeeyyyy"
	done

MisplacedCavern1FDownMovement:
	step DOWN
	step_end
MisplacedCavern1FLeftMovement:
	step LEFT
	step_end
MisplacedCavern1FUpMovement:
	step UP
	step_end
MisplacedCavern1FRightMovement:
	step RIGHT
	step_end

MisplacedCavern1FHiddenProtein:
	hiddenitem PROTEIN, EVENT_MISPLACED_CAVERN_1F_HIDDEN_PROTEIN

MisplacedCavern1FHiddenIron:
	hiddenitem IRON, EVENT_MISPLACED_CAVERN_1F_HIDDEN_IRON

MisplacedCavern1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 15, 18, MISPLACED_WOODS, 2
	warp_event 17,  2, MISPLACED_CAVERN_2F, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 14, 15, -1, MisplacedCavern1FKeese1WalkDown1
	coord_event 14, 16, -1, MisplacedCavern1FKeese1WalkDown2
	coord_event 14, 17, -1, MisplacedCavern1FKeese1WalkDown3
	coord_event 15, 14, -1, MisplacedCavern1FKeese1WalkRight1
	coord_event 16, 14, -1, MisplacedCavern1FKeese1WalkRight2
	coord_event 17, 14, -1, MisplacedCavern1FKeese1WalkRight3
	coord_event 13, 14, -1, MisplacedCavern1FKeese1WalkLeft1
	coord_event 12, 14, -1, MisplacedCavern1FKeese1WalkLeft2
	coord_event 11, 14, -1, MisplacedCavern1FKeese1WalkLeft3
	coord_event 14, 13, -1, MisplacedCavern1FKeese1WalkUp1
	coord_event 14, 12, -1, MisplacedCavern1FKeese1WalkUp2

	coord_event  9,  5, -1, MisplacedCavern1FKeese2WalkDown1
	coord_event  9,  6, -1, MisplacedCavern1FKeese2WalkDown2
	coord_event  9,  7, -1, MisplacedCavern1FKeese2WalkDown3
	coord_event 10,  4, -1, MisplacedCavern1FKeese2WalkRight1
	coord_event 11,  4, -1, MisplacedCavern1FKeese2WalkRight2
	coord_event 12,  4, -1, MisplacedCavern1FKeese2WalkRight3
	coord_event  8,  4, -1, MisplacedCavern1FKeese2WalkLeft1
	coord_event  7,  4, -1, MisplacedCavern1FKeese2WalkLeft2
	coord_event  6,  4, -1, MisplacedCavern1FKeese2WalkLeft3
	coord_event  9,  3, -1, MisplacedCavern1FKeese2WalkUp1
	coord_event  9,  2, -1, MisplacedCavern1FKeese2WalkUp2

	def_bg_events
;	bg_event x, y, type, script
	bg_event 5, 9, BGEVENT_ITEM, MisplacedCavern1FHiddenProtein
	bg_event 15, 15, BGEVENT_ITEM, MisplacedCavern1FHiddenIron

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 14, 14, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 3, MisplacedCavern1FKeese1, -1
	object_event  9,  4, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 3, MisplacedCavern1FKeese2, -1
