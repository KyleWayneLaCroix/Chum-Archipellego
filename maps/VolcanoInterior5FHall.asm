	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_5F_HALL_BRIAN_GRUNT_M
	const VOLCANO_INTERIOR_5F_HALL_BRIAN_GRUNT_F
	const VOLCANO_INTERIOR_5F_HALL_POKE_BALL

VolcanoInterior5FHall_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerBrianGruntM2:
	trainer BRIAN_M, BRIAN_M_2, EVENT_BEAT_BRIAN_M_2, BrianM2SeenText, BrianM2BeatenText, 0, .Script

.Script:
	opentext
	writetext BrianM2AfterText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext BrianM2AfterText2
	waitbutton
	disappear VOLCANO_INTERIOR_5F_HALL_BRIAN_GRUNT_M
	refreshscreen
	closetext
	end

BrianM2SeenText:
	text "Buy a man eat"
	line "fish, He day,"

	para "Teach fish man"
	line "To a lifetime"
	done

BrianM2BeatenText:
	text "I am adequate"
	line "at fishing."
	done

BrianM2AfterText:
	text "BRIAN: Hey dude!"

	para "I think you're"
	line "the only one who"
	cont "can help at this"
	cont "point."

	para "KYLE got too dis-"
	line "-tracted with"
	cont "making a postgame"
	cont "so he's never"
	cont "gonna actually"
	cont "finish things."

	para "I can't controll"
	line "this BRIAN much"
	cont "longer, but be"
	cont "careful."

	para "Here, I'll heal"
	line "your team."
	done

BrianM2AfterText2:
	text "BRIAN: Thanks a"
	line "lot dude!"
	done

TrainerBrianGruntF2:
	trainer BRIAN_F, BRIAN_F_2, EVENT_BEAT_BRIAN_F_2, BrianF2SeenText, BrianF2BeatenText, 0, .BrianF2Script

.BrianF2Script:
	opentext
	writetext BrianF2AfterText
	waitbutton
	disappear VOLCANO_INTERIOR_5F_HALL_BRIAN_GRUNT_F
	refreshscreen
	closetext
	end

BrianF2SeenText:
	text "I'm sorry, but"
	line "only BRIANs are"
	cont "allowed past this"
	cont "point."
	done

BrianF2BeatenText:
	text "The only violence"
	line "I can commit are"
	cont "#MON battles."
	done

BrianF2AfterText:
	text "Another BRIAN has"
	line "already made it"
	cont "beyond."

	para "You must hurry if"
	line "you seek the"
	cont "TERU-SAMA"
	done

VolcanoInterior5FHallHiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_VOLCANO_INTERIOR_5F_HIDDEN_GREAT_BALL

VolcanoInterior5FHallRevive:
	itemball REVIVE, 3

VolcanoInterior5FHall_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 11, 13, VOLCANO_INTERIOR_5F, 2
	warp_event 3, 5, VOLCANO_INTERIOR_6F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 13,  4, BGEVENT_ITEM, VolcanoInterior5FHallHiddenGreatBall

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 11,  2, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBrianGruntM2, EVENT_BEAT_BRIAN_M_2
	object_event 13,  7, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBrianGruntF2, EVENT_BEAT_BRIAN_F_2
	object_event 10,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior5FHallRevive, EVENT_VOLCANO_INTERIOR_5F_HALL_REVIVE
