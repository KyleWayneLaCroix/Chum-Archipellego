	object_const_def
;	const MAPNAME_OBJECTNAME
	const ROUTE_D_YOUNGSTER_ALBERT
	const ROUTE_D_GENTLEMAN_NICK_B
	const ROUTE_D_BUG_CATCHER_BENNY
	const ROUTE_D_WEIRDO_ANDREW
	const ROUTE_D_COOLTRAINERM_NICKY
	const ROUTE_D_COOLTRAINERF_GWEN
	const ROUTE_D_DAISY
	const ROUTE_D_RED
	const ROUTE_D_POKEBALL1
	const ROUTE_D_POKEBALL2

RouteD_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

RouteDDireHit:
	itemball DIRE_HIT

RouteDRevive:
	itemball REVIVE

RouteDHiddenSuperPotion:
	hiddenitem FULL_HEAL, EVENT_ROUTE_D_HIDDEN_SUPER_POTION

RouteDHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_D_HIDDEN_FULL_HEAL

RouteDDaisyScript:
	jumptextfaceplayer RouteDDaisyText

RouteDRedScript:
	jumptextfaceplayer RouteDRedText

TrainerCooltrainerGwen:
	faceplayer
	opentext
	checkevent EVENT_BEAT_COOLTRAINERF_GWEN
	iftrue .After
	writetext CooltrainerFGwenSeenText
	waitbutton
	closetext
	winlosstext CooltrainerFGwenBeatenText, 0
	setlasttalked ROUTE_D_COOLTRAINERF_GWEN
	loadtrainer COOLTRAINERF, GWEN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERF_GWEN
	opentext
	writetext CooltrainerFGwenStarPieceText
	waitbutton
	verbosegiveitem STAR_PIECE
	waitbutton
.After:
	writetext CooltrainerFGwenAfterText
	waitbutton
	closetext
	end



TrainerYoungsterAlbert:
	trainer YOUNGSTER, ALBERT, EVENT_BEAT_YOUNGSTER_ALBERT, YoungsterAlbertSeenText, YoungsterAlbertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAlbertAfterText
	waitbutton
	closetext
	end

TrainerGentlemanNickB:
	trainer FEDORA_MAN, NICK_B, EVENT_BEAT_GENTLEMAN_NICK_B, GentlemanNickBSeenText, GentlemanNickBBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanNickBAfterText
	waitbutton
	closetext
	end


TrainerBugCatcherBenny:
	trainer BUG_CATCHER, BUG_CATCHER_BENNY, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcherBennySeenText, BugCatcherBennyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherBennyAfterText
	waitbutton
	closetext
	end

TrainerWeirdoAndrew:
	trainer WEIRDO, ANDREW, EVENT_BEAT_WEIRDO_ANDREW, WeirdoAndrewSeenText, WeirdoAndrewBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WeirdoAndrewAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerNicky:
	trainer COOLTRAINERM, NICKY, EVENT_BEAT_COOLTRAINERM_NICKY, CooltrainerNickySeenText, CooltrainerNickyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerNickyAfterText
	waitbutton
	closetext
	end

RouteDRedText:
	text "Now that I have"
	line "an EEVEE, I need"

	para "to decide what it"
	line "should evolve to."

	para "I wish there was"
	line "a BUG eeveelution"
	done

RouteDDaisyText:
	text "I just got an"
	line "EEVEE!"

	para "It's so cute!"
	done

CooltrainerFGwenSeenText:
	text "I caught some"
	line "#MON that fell"
	cont "from the sky."

	para "Let's see what it"
	line "can do!"
	done

CooltrainerFGwenBeatenText:
	text "I guess I don't"
	line "understand it."
	done

CooltrainerFGwenStarPieceText:
	text "Here, one of 'em"
	line "blew up on impact"
	cont "you can have one"
	cont "of the pieces."
	done

CooltrainerFGwenAfterText:
	text "I guess I caught"
	line "an alien."

	para "No idea what that"
	line "STAR PIECE does,"
	cont "but I bet it's"
	cont "valuable."
	done

CooltrainerNickySeenText:
	text "I'm majoring in"
	line "#MON battling."
	done

CooltrainerNickyBeatenText:
	text "I'm still a"
	line "freshman."
	done

CooltrainerNickyAfterText:
	text "#MON battling"
	line "is a real major."

	para "Anyone who told"
	line "you it wasn't,"
	cont "is a liar."
	done

WeirdoAndrewSeenText:
	text ""
	line ""

	para "..."
	line "        ..."

	para "This guy just"
	line "walked up to you."

	para "He's staring and"
	line "saying nothing."

	para "..."

	para "It's really"
	line "unnerving."

	para "..."

	para "You can't move..."

	para "      ..."

	para "He's pulling out"
	line "a #BALL!"
	done

WeirdoAndrewBeatenText:
	text ""
	line "    ..."
	done

WeirdoAndrewAfterText:
	text "... "

	para "He still just"
	line "stares..."

	para "He says nothing."
	done

BugCatcherBennySeenText:
	text "I caught some BUG"
	line "#MON I've not"
	cont "seen before!"

	para "Let's test them"
	line "out, in battle!"
	done

BugCatcherBennyBeatenText:
	text "I guess I don't"
	line "get them yet."
	done

BugCatcherBennyAfterText:
	text "My DURANT and"
	line "SIZZLIPEDE don't"
	cont "get along."

	para "I guess their"
	line "typing makes them"
	cont "incompatible."
	done

GentlemanNickBSeenText:
	text "In this moment, I"
	line "am euphoric."

	para "Not from some"
	line "phony god's"
	cont "blessing,"

	para "but by the"
	line "enlightenment"

	para "of my own"
	line "intelligence."

	para "     - Me"
	line "       2024"
	done

GentlemanNickBBeatenText:
	text "This is illogical"
	done

GentlemanNickBAfterText:
	text "I was distracted"
	line "by your sheer"
	cont "stupidity."

	para "That's why you"
	line "won."
	done

YoungsterAlbertSeenText:
	text "I'm going to the"
	line "EEVEE ranch so I"
	cont "can get an EEVEE"
	done

YoungsterAlbertBeatenText:
	text "I'd have one if I"
	line "had my EEVEE."
	done

YoungsterAlbertAfterText:
	text "I'm going to"
	line "evolve my EEVEE"
	cont "into a FLAREON."

	para "Even though it is"
	line "the only fully-"
	cont "-evolved Fire"
	cont "#MON to not"
	cont "learn SOLARBEAM."
	done

RouteD_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 7, 3, EEVEE_RANCH_EXTERIOR, 1
	warp_event  9, 27, ROUTE_D_NAME_RATER_HOUSE, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 12, 27, BGEVENT_ITEM, RouteDHiddenSuperPotion
	bg_event  9,  4, BGEVENT_ITEM, RouteDHiddenFullHeal

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  6, 33, SPRITE_RED, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerYoungsterAlbert, 0
	object_event 13, 25, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGentlemanNickB, 0
	object_event 13, 18, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 4, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherBenny, 0
	object_event  4, 23, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerWeirdoAndrew, 0
	object_event 10, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerNicky, 0
	object_event 12, 38, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerCooltrainerGwen, 0
	object_event  5,  8, SPRITE_DAISY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteDDaisyScript, 0
	object_event  4, 15, SPRITE_RED, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteDRedScript, 0
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteDDireHit, EVENT_ROUTE_D_DIRE_HIT
	object_event 11, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RouteDRevive, EVENT_ROUTE_D_REVIVE
