	object_const_def
;	const MAPNAME_OBJECTNAME
	const UNIVERCITY_MART_B1F_WAREHOUSEGUY1
	const UNIVERCITY_MART_B1F_WAREHOUSEGUY2
	const UNIVERCITY_MART_B1F_WAREHOUSEGUY3
	const TRAINER_WORKER_KIPP
	const TRAINER_WORKER_ALAN
	const TRAINER_SUPERVISOR_STEV
	const UNIVERCITY_MART_B1F_SECRETARY
	const UNIVERCITY_MART_B1F_CLERK
	const UNIVERCITY_MART_B1F_POKE_BALL_1
	const UNIVERCITY_MART_B1F_POKE_BALL_2
	const UNIVERCITY_MART_B1F_POKE_BALL_3
	const UNIVERCITY_MART_B1F_N64_BRIAN

UnivercityMartB1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityMartB1FFullRestore:
    itemball FULL_RESTORE

UnivercityMartB1FUltraBall:
    itemball ULTRA_BALL

UnivercityMartB1FHPUp:
    itemball HP_UP

UnivercityMartB1FHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_UNIVERCITY_MART_B1F_HIDDEN_FULL_HEAL

UnivercityMartB1FHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_UNIVERCITY_MART_B1F_HIDDEN_HYPER_POTION

UnivercityMartB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_UNIVERCITY_MART_B1F_HIDDEN_REVIVE


UnivercityMartB1FHiddenEther:
	hiddenitem ETHER, EVENT_UNIVERCITY_MART_B1F_HIDDEN_ETHER

TrainerWorkerKipp:
	trainer WORKER, KIPP, EVENT_BEAT_WORKER_KIP, WorkerKippSeenText, WorkerKippBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WorkerKippAfterText
	waitbutton
	closetext
	end

TrainerWorkerAlan:
	trainer WORKER, ALAN, EVENT_BEAT_WORKER_ALAN, WorkerAlanSeenText, WorkerAlanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WorkerAlanAfterText
	waitbutton
	closetext
	end

TrainerSupervisorStev:
	trainer SUPERVISOR, STEV, EVENT_BEAT_SUPERVISOR_STEV, SupervisorStevSeenText, SupervisorStevBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupervisorStevAfterText
	waitbutton
	closetext
	end

UnivercityMartB1FN64BrianScript:
	trainer BRIAN_64, BRIAN_64_1, EVENT_BEAT_BRIAN_64_1, UnivercityMartB1FN64BrianSeenText, UnivercityMartB1FN64BrianBeatenText, 0, .Script

.Script:
	opentext
	writetext UnivercityMartB1FN64BrianAfterText
	waitbutton
	closetext
	playsound SFX_ZAP_CANNON
	earthquake 80
	waitsfx
	disappear UNIVERCITY_MART_B1F_N64_BRIAN
	end

UnivercityMartB1FWarehouseGuy1Script:
	jumptextfaceplayer UnivercityMartB1FWarehouseGuy1Text

UnivercityMartB1FWarehouseGuy2Script:
	jumptextfaceplayer UnivercityMartB1FWarehouseGuy2Text

UnivercityMartB1FWarehouseGuy3Script:
	jumptextfaceplayer UnivercityMartB1FWarehouseGuy3Text

UnivercityMartB1FSecretaryScript:
	jumptextfaceplayer UnivercityMartB1FSecretaryText

UnivercityMartB1FComputerScript:
	jumptext UnivercityMartB1FComputerText

UnivercityMartB1FClerkScript:
	opentext
	faceplayer
	checkevent EVENT_TALKED_TO_UNIVERCITY_MART_BASEMENT_CLERK
	iftrue .AlreadyGot
	writetext UnivercityMartB1FClerkIntroText
	waitbutton
	verbosegiveitem LEFTOVERS
	waitsfx
	setevent EVENT_TALKED_TO_UNIVERCITY_MART_BASEMENT_CLERK
.AlreadyGot:
	writetext UnivercityMartB1FClerkAfterText
	waitbutton
	closetext
	end

UnivercityMartB1FClerkIntroText:
	text "That annoying guy"
	line "dropped a buncha"
	cont "stuff on the"
	cont "ground earlier."

	para "I already pocket-"
	line "-ed a few things."

	para "Here, you can"
	line "have this."
	done

UnivercityMartB1FClerkAfterText:
	text "He just dropped a"
	line "bunch of half-"
	cont "-eaten food."

	para "Maybe one of your"
	line "#MON will"
	cont "like it."
	done

WorkerAlanSeenText:
	text "Hey, you're not"
	line "supposed to be"
	cont "here!"
	done

WorkerAlanBeatenText:
	text "Well, beating me"
	line "don't prove shit."
	done

WorkerAlanAfterText:
	text "Well, you don't"
	line "seem to have a"
	cont "bunch of stolen"
	cont "shit like that"
	cont "other guy."
	done

UnivercityMartB1FWarehouseGuy1Text:
	text "It's hard work in"
	line "this warehouse."

	para "It's a big store,"
	line "so we're always"
	cont "busy."
	done

UnivercityMartB1FWarehouseGuy2Text:
	text "I'm so mad."

	para "That moron ran"
	line "into the storage"
	cont "area with all the"
	cont "stuff he stole."

	para "Now we have to do"
	line "a full inventory."
	done

WorkerKippSeenText:
	text "Why is everyone"
	line "coming down here"
	cont "today?"
	done

WorkerKippBeatenText:
	text "At least this is"
	line "a less boring day"
	done

WorkerKippAfterText:
	text "Honestly you can"
	line "steal a little"
	cont "bit before anyone"
	cont "notices."

	para "I steal at least"
	line "once a week, just"
	cont "to feel something"
	done

UnivercityMartB1FWarehouseGuy3Text:
	text "I'm on break, so"
	line "it's not my job"
	cont "to care about"
	cont "intruders."

	para "Go ahead and look"
	line "around."

	para "Knock yourself"
	line "out."
	done

UnivercityMartB1FComputerText:
	text "Some sort of app"
	line "for clocking in"
	cont "and out is on the"
	cont "screen."

	para "It looks barely"
	line "functional."
	done

SupervisorStevSeenText:
	text "I told them 100"
	line "times, put a lock"
	cont "on that staircase"
	done

SupervisorStevBeatenText:
	text "I honestly don't"
	line "know why I bother"
	done

SupervisorStevAfterText:
	text "I suppose locking"
	line "the staircase"
	cont "would be illegal."

	para "Also a fire"
	line "hazard."
	done

UnivercityMartB1FN64BrianSeenText:
	text "Stop 'n' Swop was"
	line "scrapped from"
	cont "Banjo Kazooie"
	cont "before release."

	para "However, NINTENDO"
	line "said this use of"
	cont "RDRAM was too"
	cont "inconsistent, and"

	para "risked damage to"
	line "console and"
	cont "cartridge."

	para "As such, these"
	line "features were not"
	cont "available until"
	cont "the XBLA version."
	done

UnivercityMartB1FN64BrianBeatenText:
	text "Jiggies feels a"
	line "bit racist to say"
	done

UnivercityMartB1FN64BrianAfterText:
	text "Being an N64 is"
	line "INCREDIBLY rad."

	para "I think everyone"
	line "would do it if"
	cont "they could."

	para "But only I have"
	line "the unique skills"
	cont "needed to do so."

	para "Anyway, I'm gonna"
	line "blow up now."

	para "See you next time!"
	done

UnivercityMartB1FSecretaryText:
	text "I spend all day"
	line "reconciling"
	cont "paperwork."

	para "I wish I could go"
	line "around and fight"
	cont "#MON like you."

	para "Some of us have"
	line "to work though."
	done

UnivercityMartB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 3,  2, UNIVERCITY_MART_1F, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  4,  1, BGEVENT_ITEM, UnivercityMartB1FHiddenFullHeal
	bg_event  1,  6, BGEVENT_ITEM, UnivercityMartB1FHiddenHyperPotion
	bg_event  1, 18, BGEVENT_ITEM, UnivercityMartB1FHiddenRevive
	bg_event 11,  1, BGEVENT_ITEM, UnivercityMartB1FHiddenEther
	bg_event 15, 15, BGEVENT_UP, UnivercityMartB1FComputerScript
	bg_event 13, 15, BGEVENT_UP, UnivercityMartB1FComputerScript
	bg_event 17,  6, BGEVENT_UP, UnivercityMartB1FComputerScript
	bg_event 16,  6, BGEVENT_UP, UnivercityMartB1FComputerScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 14,  3, SPRITE_BRUNO,        SPRITEMOVEDATA_WANDER,          1, 0, -1, -1, 0,             OBJECTTYPE_SCRIPT, 0, UnivercityMartB1FWarehouseGuy1Script, 0
	object_event  9, 16, SPRITE_BRUNO,        SPRITEMOVEDATA_WALK_UP_DOWN,    2, 2, -1, -1, 0,             OBJECTTYPE_SCRIPT, 0, UnivercityMartB1FWarehouseGuy2Script, 0
	object_event 14,  7, SPRITE_BRUNO,        SPRITEMOVEDATA_STANDING_DOWN,   0, 0, -1, -1, 0,             OBJECTTYPE_SCRIPT, 0, UnivercityMartB1FWarehouseGuy3Script, 0
	object_event 14, 12, SPRITE_BRUNO,        SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0,             OBJECTTYPE_TRAINER, 3, TrainerWorkerKipp, 0
	object_event  8,  1, SPRITE_BRUNO,        SPRITEMOVEDATA_STANDING_DOWN,   1, 1, -1, -1, 0,             OBJECTTYPE_TRAINER, 5, TrainerWorkerAlan, 0
	object_event 14, 16, SPRITE_SUPER_NERD,   SPRITEMOVEDATA_STANDING_UP,     0, 0, -1, -1, PAL_NPC_BLUE,  OBJECTTYPE_TRAINER, 0, TrainerSupervisorStev, 0
	object_event 12, 16, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP,     0, 0, -1, -1, 0,             OBJECTTYPE_SCRIPT, 0, UnivercityMartB1FSecretaryScript, 0
	object_event  6,  6, SPRITE_CLERK,        SPRITEMOVEDATA_STANDING_UP,     0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UnivercityMartB1FClerkScript, 0
	object_event  2, 14, SPRITE_POKE_BALL,    SPRITEMOVEDATA_STILL,           0, 0, -1, -1, 0,             OBJECTTYPE_ITEMBALL,0, UnivercityMartB1FFullRestore, EVENT_UNIVERCITY_MART_B1F_FULL_RESTORE
	object_event  3,  7, SPRITE_POKE_BALL,    SPRITEMOVEDATA_STILL,           0, 0, -1, -1, 0,             OBJECTTYPE_ITEMBALL,0, UnivercityMartB1FUltraBall, EVENT_UNIVERCITY_MART_B1F_ULTRA_BALL
	object_event 18,  1, SPRITE_POKE_BALL,    SPRITEMOVEDATA_STILL,           0, 0, -1, -1, 0,             OBJECTTYPE_ITEMBALL,0, UnivercityMartB1FHPUp, EVENT_UNIVERCITY_MART_B1F_HP_UP
	object_event 17, 17, SPRITE_N64,          SPRITEMOVEDATA_STILL,           0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER,0, UnivercityMartB1FN64BrianScript, EVENT_BEAT_BRIAN_64_1
