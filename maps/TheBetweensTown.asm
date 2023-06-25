	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_BETWEENS_TOWN_POKE_BALL_1
	const THE_BETWEENS_TOWN_POKE_BALL_2 
	const THE_BETWEENS_TOWN_MOM
	const THE_BETWEENS_TOWN_SNORLAX
	const THE_BETWEENS_TOWN_SAGE
	const THE_BETWEENS_TOWN_FISHER
	const THE_BETWEENS_TOWN_YOUNGSTER

TheBetweensTown_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TheBetweensTownMaxPotion:
	itemball MAX_POTION

TheBetweensTownTMHyperVoice:
	itemball TM_HYPER_VOICE

TrainerLadyPeacock:
	trainer LADY, PEACOCK, EVENT_BEAT_LADY_PEACOCK, PeacockSeenText, PeacockBeatenText, 0, .PeacockScript

.PeacockScript:
	endifjustbattled
	opentext
	writetext PeacockAfterText
	waitbutton
	closetext
	end

PeacockSeenText:
	text "Why hello. It's"
	line "so nice to see a"
	cont "new face."

	para "Are you here to"
	cont "assist with the"
	cont "investigation?"
	done

PeacockBeatenText:
	text "You could have"
	line "just said no."
	done

PeacockAfterText:
	text "The truth shall"
	line "be revealed"
	cont "eventually."
	done

TheBetweensTownSnorlax:
	opentext 
	writetext TheBetweensTownSnorlaxText
	yesorno
	iffalse .End
	closetext
	cry SNORLAX
	waitsfx
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon SNORLAX, 50
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_THE_BETWEENS_TOWN_SNORLAX
	disappear THE_BETWEENS_TOWN_SNORLAX
	end
.End:
	closetext
	end

TheBetweensTownSnorlaxText:
	text "A drunk SNORLAX"
	line "blocks the road"
	cont "before you."

	para "Wake it up?"
	done

TheBetweensTownSageScript:
	jumptextfaceplayer TheBetweensTownSageText

TheBetweensTownSageText:
	text "This #MON GYM"
	line "is always closed."

	para "I wonder who the"
	line "LEADER is?"
	done

TrainerSageKotani:
	trainer SAGE, KOTANI, EVENT_BEAT_SAGE_KOTANI, KotaniSeenText, KotaniBeatenText, 0, .KotaniScript

.KotaniScript:
	endifjustbattled
	opentext
	writetext KotaniAfterText
	waitbutton
	closetext
	end

KotaniSeenText:
	text "I've been ×yawn×"

	para "sleeping so"
	line "poorly lately."

	para "Even though I"
	line "got #MON who"
	cont "specialize in"
	cont "sleep!"
	done

KotaniBeatenText:
	text "They're eating my"
	line "dreams?"

	para "Don't be foolish,"
	line "you get better"
	cont "sleep without"
	cont "dreaming!"
	done

KotaniAfterText:
	text "One day I'll find"
	line "out why I can't"
	cont "sleep."

	para "Until then, my"
	line "GENGAR will keep"
	cont "me company."
	done


TrainerBugManiacKen:
	trainer BUG_MANIAC, KEN, EVENT_BEAT_BUG_MANIAC_KEN, KenSeenText, KenBeatenText, 0, .KenScript

.KenScript:
	endifjustbattled
	opentext
	writetext KenAfterText
	waitbutton
	closetext
	end

KenSeenText:
	text "I caught some"
	line "pretty badass"
	cont "BUGS in the"
	cont "VIRIDIAN FOREST."

	para "Prepare to meet"
	line "your doom!"
	done

KenBeatenText:
	text "'Your doom' is"
	line "what I call my"
	cont "bug net."
	done

KenAfterText:
	text "Even the toughest"
	line "bugs can fall to"
	cont "a mighty swatter."

	para "I should always"
	line "remember that."
	done

TheBetweenstownYoungsterScript:
	jumptextfaceplayer TheBetweenstownYoungsterText

TheBetweenstownYoungsterText:
	text "Did you know that"
	line "you can go into"
	cont "shops to exchange"
	cont "currency for"
	cont "goods and or"
	cont "services?"

	para "What will they"
	line "think of next?"
	done

TheBetweensTownForestSign:
	jumptext TheBetweensTownForestSignText

TheBetweensTownForestSignText:
	text "DID YOU KNOW:"

	para "Map connections"
	line "in THE BETWEENS"
	cont "act oddly due to"
	cont "them being made"
	cont "up of unused"
	cont "areas and KANTO"
	cont "remnants?"

	para "Always tell a"
	line "friend before"
	cont "crossing a map"
	cont "boundary."
	done

TheBetweensTownGymSign:
	jumptext TheBetweensTownGymSignText

TheBetweensTownGymSignText:
	text "DEVELOPER TRAINING"
	done

TheBetweensTownTownSign:
	jumptext TheBetweensTownTownSignText

TheBetweensTownTownSignText:
	text "VIRIDIAN CITY"
	done

TheBetweensTownRouteSign:
	jumptext TheBetweensTownRouteSignText

TheBetweensTownRouteSignText:
	text "AVOID THE FLOATING"
	line "VESSELS AT ALL"
	cont "COSTS."
	done

TheBetweensTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 32,  7, THE_BETWEENS_ICE_PATH, 2
	warp_event 21,  9, THE_BETWEENS_LINKS_AWAKENING_INTERIOR, 3
	warp_event 21, 15, THE_BETWEENS_FOREST, 1
	warp_event 29, 19, THE_BETWEENS_ELITE_FOUR_ROOM, 1
	warp_event 21, 35, THE_BETWEENS_FACILITY, 1
	warp_event 20, 35, THE_BETWEENS_FACILITY, 1
	warp_event  0, 14,  THE_BETWEENS_TOWN, 11
	warp_event  0, 17,  THE_BETWEENS_TOWN, 11
	warp_event  0, 16,  THE_BETWEENS_TOWN, 11
	warp_event  0, 15,  THE_BETWEENS_TOWN, 11
	warp_event 23, 25,  THE_BETWEENS_TOWN, 10
	warp_event 19,  0,  THE_BETWEENS_MART, 1
	warp_event 18,  0,  THE_BETWEENS_MART, 1
	warp_event 17,  0,  THE_BETWEENS_MART, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 19, 1, BGEVENT_READ, TheBetweensTownForestSign
	bg_event 27,  7, BGEVENT_READ, TheBetweensTownGymSign
	bg_event 17, 17, BGEVENT_READ, TheBetweensTownTownSign
	bg_event 21, 29, BGEVENT_READ, TheBetweensTownRouteSign

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 13,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensTownMaxPotion, EVENT_THE_BETWEENS_TOWN_MAX_POTION
	object_event  5, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, TheBetweensTownTMHyperVoice, EVENT_GOT_TM21_HYPER_VOICE
	object_event 17,  9, SPRITE_MOM, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLadyPeacock, 0
	object_event 18,  8, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TheBetweensTownSnorlax, EVENT_BEAT_THE_BETWEENS_TOWN_SNORLAX
	object_event 30,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, TheBetweensTownSageScript, 0
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageKotani, 0
	object_event 30, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TheBetweenstownYoungsterScript, 0
	object_event  9, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerBugManiacKen, 0
