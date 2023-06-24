	object_const_def
;	const MAPNAME_OBJECTNAME
	const MISPLACED_CAVERN_2F_KEESE_1
	const MISPLACED_CAVERN_2F_DETECTIVE_1
	const MISPLACED_CAVERN_2F_DETECTIVE_2
	const MISPLACED_CAVERN_2F_GEL_1
	const MISPLACED_CAVERN_2F_SKATER_BOY


MisplacedCavern2F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MisplacedCavern2FKeese1WalkDown3:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_2F_KEESE_1, MisplacedCavern1FDownMovement
MisplacedCavern2FKeese1WalkDown2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_2F_KEESE_1, MisplacedCavern1FDownMovement
MisplacedCavern2FKeese1WalkDown1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern2FKeese1
	end

MisplacedCavern2FKeese1WalkRight1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern2FKeese1
	end

MisplacedCavern2FKeese1WalkLeft2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_2F_KEESE_1, MisplacedCavern1FLeftMovement
MisplacedCavern2FKeese1WalkLeft1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern2FKeese1
	end

MisplacedCavern2FKeese1WalkUp2:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement MISPLACED_CAVERN_2F_KEESE_1, MisplacedCavern1FUpMovement
MisplacedCavern2FKeese1WalkUp1:
	checkevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	iffalse .Continue
	end
.Continue:
	sjump MisplacedCavern2FKeese1
	end
MisplacedCavern2FKeese1:
	opentext
	writetext MisplacedCavern2FKeeseText
	waitbutton
	closetext
	scall MisplacedCavern2FKeeseTrapSwoobat
	reloadmapafterbattle
	setevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	disappear MISPLACED_CAVERN_2F_KEESE_1
	end

MisplacedCavern2FKeeseTrapSwoobat:
	special FadeOutPalettes
	cry SWOOBAT
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon SWOOBAT, 36
	startbattle
	end

MisplacedCavern2FKeeseText:
	text "keeeeeeeyyyy"
	done

MisplacedCavern2FDownMovement:
	step DOWN
	step_end
MisplacedCavern2FLeftMovement:
	step LEFT
	step_end
MisplacedCavern2FUpMovement:
	step UP
	step_end
MisplacedCavern2FRightMovement:
	step RIGHT
	step_end

TrainerDetectiveGum:
	trainer DETECTIVE_M, GUM, EVENT_BEAT_DETECTIVE_GUM, DetectiveGumSeenText, DetectiveGumBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_HAS_STOLEN_EVER
	iffalse .NotAThief
	writetext DetectiveGumAfterText
	waitbutton
	closetext
	end
.NotAThief:
	writetext DetectiveGumNotAThiefText
	waitbutton
	closetext
	end

TrainerDetectiveJane:
	trainer DETECTIVE_F, JANE, EVENT_BEAT_DETECTIVE_JANE, DetectiveJaneSeenText, DetectiveJaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_HAS_STOLEN_EVER
	iffalse .NotAThief
	writetext DetectiveJaneAfterText
	waitbutton
	closetext
	end
.NotAThief:
	writetext DetectiveJaneNotAThiefText
	waitbutton
	closetext
	end

DetectiveGumSeenText:
	text "I'm a detective"
	line "looking into a"
	cont "recent robbery"
	cont "of the local shop"
	cont "by a MOBLIN named"
	cont "WILKEN."

	para "However, there"
	line "was another theft"
	cont "that was just"
	cont "reported, and you"
	cont "match the"
	cont "description!"
	done

DetectiveGumBeatenText:
	text "Only a hardened"
	line "criminal such as"
	cont "yourself could've"
	cont "used such tactics"
	cont "in battle."
	done

DetectiveGumAfterText:
	text "You may have"
	line "defeated me in"
	cont "battle, but you"
	cont "can't outrun the"
	cont "law forever,"
	cont "THIEF."
	done

DetectiveGumNotAThiefText:
	text "Be careful,"
	line "citizen, we are"
	cont "investigating a"
	cont "robbery and are"
	cont "hot on the trail"
	cont "of the MOBLIN"
	cont "perpetrator"
	cont "WILKEN"
	done

DetectiveJaneSeenText:
	text "You may have"
	line "defeated my"
	cont "partner, but I"
	cont "won't let"
	cont "criminal scum"
	cont "like you escape!"
	done

DetectiveJaneBeatenText:
	text "Truly, yours is"
	line "a criminal mind."
	done

DetectiveJaneAfterText:
	text "While crime may"
	line "pay in a literal"
	cont "sense, you will"
	cont "one day pay for"
	cont "your misdeeds."
	done

DetectiveJaneNotAThiefText:
	text "Please report any"
	line "suspicious people"
	cont "to us, we are"
	cont "detectives inves-"
	cont "-tigating a"
	cont "robbery."

	para "The suspsect was"
	line "seen running out"
	cont "of the shop with"
	cont "a TECHNICAL"
	cont "MACHINE shoved"
	cont "down his pants."

	para "He better hope"
	line "the shop owner"
	cont "doesn't find him"
	cont "first."
	done

MisplacedCavern2FMaxPotion:
	checkevent EVENT_MISPLACED_CAVERN_2F_MAX_POTION
	iftrue .End
	opentext
	verbosegiveitem MAX_POTION
	waitbutton
	changeblock 2, 2, $92
	reloadmappart
	closetext
	setevent EVENT_MISPLACED_CAVERN_2F_MAX_POTION
.End:
	end

MisplacedCavern2FDireHit:
	checkevent EVENT_MISPLACED_CAVERN_2F_DIRE_HIT
	iftrue .End
	opentext
	verbosegiveitem DIRE_HIT
	waitbutton
	changeblock 10, 12, $92
	reloadmappart
	closetext
	setevent EVENT_MISPLACED_CAVERN_2F_DIRE_HIT
.End:
	end

MisplacedCavern2FGel1:
	scall MisplacedWoodsGelTrapGrimer
	reloadmapafterbattle
	setevent EVENT_MISPLACED_CAVERN_2F_GEL_1
	disappear MISPLACED_CAVERN_2F_GEL_1
	end

MisplacedCavern2FGelTrapGrimer:
	special FadeOutPalettes
	cry GRIMER
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon GRIMER, 28
	startbattle
	end

TrainerSkaterBoyTony:
	trainer SKATER_BOY, TONY, EVENT_BEAT_SKATER_BOY_TONY, SkaterBoyTonySeenText, SkaterBoyTonyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkaterBoyTonyAfterText
	waitbutton
	closetext
	end

SkaterBoyTonySeenText:
	text "Hey bro, you're"
	line "in my way."

	para "I'm trying to"
	line "get my skate on!"
	done

SkaterBoyTonyBeatenText:
	text "Whoah! Totally"
	line "not radical!"
	done

SkaterBoyTonyAfterText:
	text "I really need a"
	line "fleek skate park."

	para "This cave is"
	line "streets behind."
	done

MisplacedCavern2FHiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_MISPLACED_CAVERN_2F_HIDDEN_MOON_STONE

MisplacedCavern2FHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_MISPLACED_CAVERN_2F_HIDDEN_MAX_ETHER

MisplacedCavern2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 17, 2, MISPLACED_CAVERN_1F, 2
	warp_event  5, 18, MISPLACED_WOODS, 3

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event  4,  5, -1, MisplacedCavern2FKeese1WalkDown1
	coord_event  4,  6, -1, MisplacedCavern2FKeese1WalkDown2
	coord_event  4,  7, -1, MisplacedCavern2FKeese1WalkDown3
	coord_event  5,  4, -1, MisplacedCavern2FKeese1WalkRight1
	coord_event  3,  4, -1, MisplacedCavern2FKeese1WalkLeft1
	coord_event  2,  4, -1, MisplacedCavern2FKeese1WalkLeft2
	coord_event  4,  3, -1, MisplacedCavern2FKeese1WalkUp1
	coord_event  4,  2, -1, MisplacedCavern2FKeese1WalkUp2


	def_bg_events
;	bg_event x, y, type, script
	bg_event 10, 12, BGEVENT_READ, MisplacedCavern2FDireHit
	bg_event  2,  2, BGEVENT_READ, MisplacedCavern2FMaxPotion
	bg_event  5,  5, BGEVENT_ITEM, MisplacedCavern2FHiddenMoonStone
	bg_event  5,  5, BGEVENT_ITEM, MisplacedCavern2FHiddenMaxEther

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  4,  4, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, MisplacedCavern2FKeese1, EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	object_event 14,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerDetectiveGum, 0
	object_event 14,  7, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerDetectiveJane, 0
	object_event 10, 10, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MisplacedCavern2FGel1, EVENT_MISPLACED_CAVERN_2F_GEL_1
	object_event  5,  5, SPRITE_LA_GUY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSkaterBoyTony, -1
