	object_const_def
;	const MAPNAME_OBJECTNAME

RouteBNorth_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

RouteBNorthSign:
	jumptext RouteBNorthSignText

RouteBNorthSignText:
	text "ROUTE B"

	para "ICE TOWN to"
	line "NORTH."
	done
TrainerSwimmerfKaylee:
	trainer SWIMMER_F, KAYLEE, EVENT_BEAT_SWIMMER_F_KAYLEE, SwimmerfKayleeSeenText, SwimmerfKayleeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfKayleeAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfSusie:
	trainer SWIMMER_F, SUSIE, EVENT_BEAT_SWIMMER_F_SUSIE, SwimmerfSusieSeenText, SwimmerfSusieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfSusieAfterBattleText
	waitbutton
	closetext
	end


TrainerSwimmermCharlie:
	trainer SWIMMER_M, CHARLIE, EVENT_BEAT_SWIMMER_M_CHARLIE, SwimmermCharlieSeenText, SwimmermCharlieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermCharlieAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermGeorge:
	trainer SWIMMER_M, GEORGE, EVENT_BEAT_SWIMMER_M_GEORGE, SwimmermGeorgeSeenText, SwimmermGeorgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermGeorgeAfterBattleText
	waitbutton
	closetext
	end

SwimmermCharlieSeenText:
	text "The water's warm"
	line "here. I'm loose"
	cont "and limber."

	para "Sure, I'll take"
	line "you on!"
	done

SwimmermCharlieBeatenText:
	text "Yikes! I've got"
	line "prune skin!"
	done

SwimmermCharlieAfterBattleText:
	text "Isn't it relaxing"
	line "just floating like"
	cont "this?"
	done

SwimmermGeorgeSeenText:
	text "I'm a bit tired."
	line "If I win, lend me"
	cont "your #MON."
	done

SwimmermGeorgeBeatenText:
	text "Pant, pant…"
	done

SwimmermGeorgeAfterBattleText:
	text "It's so far to"
	line "ICE TOWN."

	para "What should I do?"
	done


SwimmerfKayleeSeenText:
	text "I'm on my way to"
	line "ICE TOWN."

	para "I'm going explor-"
	line "ing with friends."
	done

SwimmerfKayleeBeatenText:
	text "Is that how you do"
	line "it?"
	done

SwimmerfKayleeAfterBattleText:
	text "Apparently ICE"
	line "TOWN is closed"
	cont "until some DLC."

	para "Lame."
	done

SwimmerfSusieSeenText:
	text "You look so ele-"
	line "gant, riding your"
	cont "#MON."
	done

SwimmerfSusieBeatenText:
	text "I'm crushed…"
	done

SwimmerfSusieAfterBattleText:
	text "Wasn't there a hit"
	line "song about a boy"
	cont "riding a LAPRAS?"
	done

RouteBNorthTMSubmission:
	itemball TM_SUBMISSION

RouteBNorthDragonFang:
	itemball DRAGON_FANG

RouteBNorthRevive:
	itemball REVIVE

RouteBNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 8, 34, BGEVENT_READ, RouteBNorthSign

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  9, 22, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCharlie, -1
	object_event  5, 15, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermGeorge, -1
	object_event 12, 10, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfKaylee, -1
	object_event  6,  6, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfSusie, -1
	object_event  6, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, RouteBNorthTMSubmission, EVENT_GOT_TM41_SUBMISSION
	object_event 13, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteBNorthDragonFang, EVENT_ROUTE_B_NORTH_DRAGON_FANG
	object_event 13,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteBNorthRevive, EVENT_ROUTE_B_NORTH_REVIVE
