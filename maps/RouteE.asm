	object_const_def
;	const MAPNAME_OBJECTNAME


RouteE_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script


GoodFisherFellowSign:
	jumptext GoodFisherFellowSignText

RouteEElixerScript:
	itemball ELIXER

RouteEXDefendScript:
	itemball X_DEFEND

RouteEHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ROUTE_E_HIDDEN_HYPER_POTION

RouteEHiddenMaxRepel:
	hiddenitem MAX_REPEL, EVENT_ROUTE_E_HIDDEN_MAX_REPEL

RouteEHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_E_HIDDEN_FULL_RESTORE

TrainerFisherGoro:
	trainer FISHER, GORO, EVENT_BEAT_FISHER_GORO, FisherGoroSeenText, FisherGoroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherGoroAfterText
	waitbutton
	closetext
	end

TrainerFisherHenry:
	trainer FISHER, HENRY, EVENT_BEAT_FISHER_HENRY, FisherHenrySeenText, FisherHenryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherHenryAfterText
	waitbutton
	closetext
	end

TrainerFisherMarvin:
	trainer FISHER, MARVIN, EVENT_BEAT_FISHER_MARVIN, FisherMarvinSeenText, FisherMarvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherMarvinAfterText
	waitbutton
	closetext
	end

TrainerFisherTully:
	trainer FISHER, TULLY1, EVENT_BEAT_FISHER_TULLY, FisherTullySeenText, FisherTullyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherTullyAfterText
	waitbutton
	closetext
	end

TrainerFisherAndre:
	trainer FISHER, ANDRE, EVENT_BEAT_FISHER_ANDRE, FisherAndreSeenText, FisherAndreBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherAndreAfterText
	waitbutton
	closetext
	end

TrainerHikerLeonard:
	trainer HIKER, LEONARD, EVENT_BEAT_HIKER_LEONARD, HikerLeonardSeenText, HikerLeonardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerLeonardAfterText
	waitbutton
	closetext
	end

HikerLeonardSeenText:
	text "I love going for"
	line "a walk by the"
	cont "water."
	done

HikerLeonardBeatenText:
	text "Battling by the"
	line "water is good"
	cont "too!"
	done

HikerLeonardAfterText:
	text "Hiking is much"
	line "more interesting"
	cont "than fishing!"
	done

FisherAndreSeenText:
	text "I've been fishing"
	line "so much better"
	cont "after the GOOD"
	cont "FISHER FELLOW"
	cont "slipped me his"
	cont "rod."
	done

FisherAndreBeatenText:
	text "Fishing is always"
	line "better when a"
	cont "good friend gives"
	cont "you a rod."
	done

FisherAndreAfterText:
	text "If you ever need"
	line "to jaw about a"
	cont "GOOD ROD, then I"
	cont "am your man."
	done

FisherTullySeenText:
	text "The only thing I"
	line "love more than"
	cont "fishing, is sex."
	done

FisherTullyBeatenText:
	text "#MON battles"
	line "are probably 3rd"
	cont "on the list."
	done

FisherTullyAfterText:
	text "Fish, Fuck, Fight"

	para "That's my whole"
	line "life."
	done

FisherMarvinSeenText:
	text "Who needs to go"
	line "to college?"

	para "I can just fish"
	line "all day and sleep"
	cont "in an empty"
	cont "classroom."
	done

FisherMarvinBeatenText:
	text "See, I shouldn't"
	line "have tried to"
	cont "battle either."
	done

FisherMarvinAfterText:
	text "I'll just eat"
	line "FINNEON soup and"
	cont "relax."
	done

FisherHenrySeenText:
	text "They're really"
	line "biting today!"
	done

FisherHenryBeatenText:
	text "My battling is"
	line "the thing that's"
	cont "biting today."
	done

FisherHenryAfterText:
	text "Fishing is all I"
	line "got."

	para "Don't know what"
	line "I'd do without it"
	done

FisherGoroSeenText:
	text "Boy, do I love to"
	line "get up early,"
	cont "go to the water's"
	cont "edge, and kill a"
	cont "few fish #MON!"
	done

FisherGoroBeatenText:
	text "I don't kill all"
	line "of them."
	done

FisherGoroAfterText:
	text "Fishing is the"
	line "only acceptable"
	cont "form of hunting"
	cont "in #MON!"
	done

GoodFisherFellowSignText:
	text "THE GOOD FISHER"
	line "FELLOW'S HOUSE."
	done

RouteE_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9, 19, GOOD_FISHER_FELLOW_HOUSE, 1


	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 7, 19, BGEVENT_UP, GoodFisherFellowSign
	bg_event 17, 30, BGEVENT_ITEM, RouteEHiddenHyperPotion
	bg_event  4, 19, BGEVENT_ITEM, RouteEHiddenMaxRepel
	bg_event  5, 49, BGEVENT_ITEM, RouteEHiddenFullRestore

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 13, 27, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1,-1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherGoro, 0
	object_event 13, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1,-1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherHenry, 0
	object_event  1, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1,-1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherMarvin, 0
	object_event 11, 43, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1,-1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherTully, 0
	object_event  9, 34, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1,-1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherAndre, 0
	object_event 16,  7, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1,-1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerLeonard, 0
	object_event  6, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteEElixerScript, EVENT_ROUTE_E_ELIXER
	object_event  7, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteEXDefendScript, EVENT_ROUTE_E_X_DEFEND
