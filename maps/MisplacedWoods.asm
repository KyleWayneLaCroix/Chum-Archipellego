	object_const_def
;	const MAPNAME_OBJECTNAME
	const MISPLACED_WOODS_MOBLIN_1
	const MISPLACED_WOODS_MOBLIN_2
	const MISPLACED_WOODS_MOBLIN_3
	const MISPLACED_WOODS_MOBLIN_4
	const MISPLACED_WOODS_MOBLIN_5
	const MISPLACED_WOODS_GEL_1
	const MISPLACED_WOODS_GEL_2
	const MISPLACED_WOODS_GEL_3
	const MISPLACED_WOODS_GEL_4
	const MISPLACED_WOODS_GEL_5
	const MISPLACED_WOODS_GEL_6


MisplacedWoods_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, MisplacedWoodsChestCallback


MisplacedWoodsChestCallback:
	checkevent EVENT_MISPLACED_WOODS_ELIXER
	iffalse .Iron
	changeblock 28, 36, $33
.Iron:
	checkevent EVENT_MISPLACED_WOODS_IRON
	iffalse .PPUp
	changeblock 38, 26, $33
.PPUp:
	checkevent EVENT_MISPLACED_WOODS_PP_UP
	iffalse .Revive
	changeblock 8, 2, $33
.Revive:
	checkevent EVENT_MISPLACED_WOODS_REVIVE
	iffalse .CallbackEnd
	changeblock 20, 30, $33
.CallbackEnd:
	endcallback

CaseyCabinSign:
	jumptext CaseyCabinSignText

CaseyCabinSignText:
	text "CABIN DE"
	line " CASEY  "

	para "(That means"
	line "Casey's Cabin)"
	done

MisplacedWoodsMoblin1:
    trainer MOBLIN, MOBLIN_1, EVENT_BEAT_MOBLIN_1, MisplacedWoodsMoblin1SeenText, MisplacedWoodsMoblin1BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear MISPLACED_WOODS_MOBLIN_1
    end

MisplacedWoodsMoblin2:
    trainer MOBLIN, MOBLIN_2, EVENT_BEAT_MOBLIN_2, MisplacedWoodsMoblin2SeenText, MisplacedWoodsMoblin2BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear MISPLACED_WOODS_MOBLIN_2
    end

MisplacedWoodsMoblin3:
    trainer MOBLIN, MOBLIN_3, EVENT_BEAT_MOBLIN_3, MisplacedWoodsMoblin3SeenText, MisplacedWoodsMoblin3BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear MISPLACED_WOODS_MOBLIN_3
    end

MisplacedWoodsMoblin4:
    trainer MOBLIN, MOBLIN_4, EVENT_BEAT_MOBLIN_4, MisplacedWoodsMoblin4SeenText, MisplacedWoodsMoblin4BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear MISPLACED_WOODS_MOBLIN_4
    end

MisplacedWoodsMoblin5:
    trainer MOBLIN, MOBLIN_5, EVENT_BEAT_MOBLIN_5, MisplacedWoodsMoblin5SeenText, MisplacedWoodsMoblin5BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear MISPLACED_WOODS_MOBLIN_5
    end

MisplacedWoodsGel1:
	scall MisplacedWoodsGelTrapGrimer
	reloadmapafterbattle
	setevent EVENT_MISPLACED_WOODS_GEL_1
	disappear MISPLACED_WOODS_GEL_1
	end

MisplacedWoodsGel2:
	scall MisplacedWoodsGelTrapApplin
	reloadmapafterbattle
	setevent EVENT_MISPLACED_WOODS_GEL_2
	disappear MISPLACED_WOODS_GEL_2
	end

MisplacedWoodsGel3:
	scall MisplacedWoodsGelTrapGastly
	reloadmapafterbattle
	setevent EVENT_MISPLACED_WOODS_GEL_3
	disappear MISPLACED_WOODS_GEL_3
	end

MisplacedWoodsGel4:
	scall MisplacedWoodsGelTrapDitto
	reloadmapafterbattle
	setevent EVENT_MISPLACED_WOODS_GEL_4
	disappear MISPLACED_WOODS_GEL_4
	end

MisplacedWoodsGel5:
	scall MisplacedWoodsGelTrapSandygast
	reloadmapafterbattle
	setevent EVENT_MISPLACED_WOODS_GEL_5
	disappear MISPLACED_WOODS_GEL_5
	end

MisplacedWoodsGel6:
	scall MisplacedWoodsGelTrapSolosis
	reloadmapafterbattle
	setevent EVENT_MISPLACED_WOODS_GEL_6
	disappear MISPLACED_WOODS_GEL_6
	end

MisplacedWoodsGelTrapDitto:
	special FadeOutPalettes
	cry DITTO
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon DITTO, 28
	startbattle
	end

MisplacedWoodsGelTrapGastly:
	special FadeOutPalettes
	cry GASTLY
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon GASTLY, 28
	startbattle
	end

MisplacedWoodsGelTrapApplin:
	special FadeOutPalettes
	cry APPLIN
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon APPLIN, 28
	startbattle
	end

MisplacedWoodsGelTrapGrimer:
	special FadeOutPalettes
	cry GRIMER
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon GRIMER, 28
	startbattle
	end

MisplacedWoodsGelTrapSandygast:
	special FadeOutPalettes
	cry SANDYGAST
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon SANDYGAST, 28
	startbattle
	end

MisplacedWoodsGelTrapSolosis:
	special FadeOutPalettes
	cry SOLOSIS
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon SOLOSIS, 28
	startbattle
	end

MisplacedWoodsMoblin1SeenText:
	text "Ennnnhhhh???"
	line "What little runt"
	cont "is in our woods?"
	done

MisplacedWoodsMoblin1BeatenText:
	text "Oh no, you're an"
	line "assassin!"
	done

MisplacedWoodsMoblin2SeenText:
	text "The cut of your"
	line "jib..."

	para "I don't like it!"
	done

MisplacedWoodsMoblin2BeatenText:
	text "My jib..."

	para "It's been cut!"
	done

MisplacedWoodsMoblin3SeenText:
	text "I'm lost, but"
	line "that's okay."

	para "I can still kill"
	line "intruders!"
	done

MisplacedWoodsMoblin3BeatenText:
	text "Theoretically"
	line "  anyway..."
	done

MisplacedWoodsMoblin4SeenText:
	text "I'm not trying to"
	line "kill you just"
	cont "because I'm a"
	cont "MOBLIN."

	para "I'm trying to"
	line "kill you because"
	cont "I want to."

	para "For me."
	done

MisplacedWoodsMoblin4BeatenText:
	text "I hope that you"
	line "understand that"
	cont "I am not a"
	cont "representation of"
	cont "all Moblins."

	para "I was a unique"
	line "individual before"
	cont "you killed me."

	para "Fare thee well."
	done

MisplacedWoodsMoblin5SeenText:
	text "Prepare to die in"
	line "this #MON"
	cont "battle!"
	done

MisplacedWoodsMoblin5BeatenText:
	text "I'm still used to"
	line "fighting with a"
	cont "sword, not these"
	cont "little critters."
	done

MisplacedWoodsPPUp:
	checkevent EVENT_MISPLACED_WOODS_PP_UP
	iftrue .End
	opentext
	verbosegiveitem PP_UP
	waitbutton
	changeblock 8, 2, $33
	reloadmappart
	closetext
	setevent EVENT_MISPLACED_WOODS_PP_UP
.End:
	end

MisplacedWoodsElixer:
	checkevent EVENT_MISPLACED_WOODS_ELIXER
	iftrue .End
	opentext
	verbosegiveitem ELIXER
	waitbutton
	changeblock 28, 36, $33
	reloadmappart
	closetext
	setevent EVENT_MISPLACED_WOODS_ELIXER
.End:
	end

MisplacedWoodsIron:
	checkevent EVENT_MISPLACED_WOODS_IRON
	iftrue .End
	opentext
	verbosegiveitem IRON
	waitbutton
	changeblock 38, 26, $33
	reloadmappart
	closetext
	setevent EVENT_MISPLACED_WOODS_IRON
.End:
	end

MisplacedWoodsRevive:
	checkevent EVENT_MISPLACED_WOODS_REVIVE
	iftrue .End
	opentext
	verbosegiveitem REVIVE
	waitbutton
	changeblock 20, 30, $33
	reloadmappart
	closetext
	setevent EVENT_MISPLACED_WOODS_REVIVE
.End:
	end

MisplacedWoodsLedge:
	applymovement PLAYER, MisplacedWoodsLedgeMovement
	end

MisplacedWoodsLedgeMovement:
	jump_step DOWN
	step_end

MisplacedWoodsHiddenXAccuracy:
	hiddenitem X_ACCURACY, EVENT_MISPLACED_WOODS_HIDDEN_X_ACCURACY

MisplacedWoodsHiddenXDefend:
	hiddenitem X_DEFEND, EVENT_MISPLACED_WOODS_HIDDEN_X_DEFEND

MisplacedWoodsHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_MISPLACED_WOODS_HIDDEN_MAX_POTION

MisplacedWoods_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 43,  5, CASEYS_CABIN, 1
	warp_event 45, 31, MISPLACED_CAVERN_1F, 1
	warp_event 45, 29, MISPLACED_CAVERN_2F, 2
	warp_event 47, 35, MISPLACED_CAVERN_B1F, 1
	warp_event 43, 27, MOBLIN_WILKENS_HOUSE, 1
	
	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 42, 30, -1, MisplacedWoodsLedge
	coord_event 40, 34, -1, MisplacedWoodsLedge

	def_bg_events
;	bg_event x, y, type, script
	bg_event 41,  8, BGEVENT_READ, CaseyCabinSign
	bg_event  8,  2, BGEVENT_READ, MisplacedWoodsPPUp
	bg_event 28, 36, BGEVENT_READ, MisplacedWoodsElixer
	bg_event 38, 26, BGEVENT_READ, MisplacedWoodsIron
	bg_event 20, 30, BGEVENT_READ, MisplacedWoodsRevive
	bg_event 35,  8, BGEVENT_ITEM, MisplacedWoodsHiddenXAccuracy
	bg_event  7,  9, BGEVENT_ITEM, MisplacedWoodsHiddenXDefend
	bg_event 38,  2, BGEVENT_ITEM, MisplacedWoodsHiddenMaxPotion

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 44, 17, SPRITE_MOBLIN, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MisplacedWoodsMoblin1, EVENT_BEAT_MOBLIN_1
	object_event 48, 37, SPRITE_MOBLIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MisplacedWoodsMoblin2, EVENT_BEAT_MOBLIN_2
	object_event 14,  3, SPRITE_MOBLIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, MisplacedWoodsMoblin3, EVENT_BEAT_MOBLIN_3
	object_event 35, 33, SPRITE_MOBLIN, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MisplacedWoodsMoblin4, EVENT_BEAT_MOBLIN_4
	object_event 15, 36, SPRITE_MOBLIN, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, MisplacedWoodsMoblin5, EVENT_BEAT_MOBLIN_5
	object_event 50, 31, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MisplacedWoodsGel1, EVENT_MISPLACED_WOODS_GEL_1
	object_event 22,  8, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MisplacedWoodsGel2, EVENT_MISPLACED_WOODS_GEL_2
	object_event 13, 17, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MisplacedWoodsGel3, EVENT_MISPLACED_WOODS_GEL_3
	object_event 33, 14, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MisplacedWoodsGel4, EVENT_MISPLACED_WOODS_GEL_4
	object_event 23, 28, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MisplacedWoodsGel5, EVENT_MISPLACED_WOODS_GEL_5
	object_event 10, 24, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MisplacedWoodsGel6, EVENT_MISPLACED_WOODS_GEL_6
