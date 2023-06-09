	object_const_def
;	const MAPNAME_OBJECTNAME
	const KYLES_HOUSE_KYLE
	const KYLES_HOUSE_JORDAN
	const KYLES_HOUSE_CAT_1
	const KYLES_HOUSE_CAT_2
	const KYLES_HOUSE_CAT_3

KylesHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

KylesHouseShelf:
	jumptext KylesHouseShelfText

KylesHouseShelfText:
	text "Why are there so"
	line "many VHS tapes on"
	cont "a bookshelf"
	cont "in 2025?"
	done

KylesHouseConsole:
	jumptext KylesHouseConsoleText

KylesHouseConsoleText:
	text "This appears to"
	line "be a PC stuffed"
	cont "into a GAMECUBE."
	done

KylesHouseKyle:
	faceplayer
	opentext
	writetext KylesHouseKyleIntro
	waitbutton
	closetext
	turnobject KYLES_HOUSE_KYLE, RIGHT
	pause 10
	turnobject KYLES_HOUSE_KYLE, LEFT
	pause 10
	turnobject KYLES_HOUSE_KYLE, RIGHT
	pause 10
	turnobject KYLES_HOUSE_KYLE, LEFT
	pause 10
	faceplayer
	opentext
	writetext KylesHouseKyleWarning
	special FadeOutMusic
	special FadeOutPalettes
	playsound SFX_CURSE
	waitsfx
	playsound SFX_PERISH_SONG
	waitsfx
	special FadeBlackQuickly
	disappear KYLES_HOUSE_KYLE
	pause 40
	special FadeInPalettes
	pause 50
	setevent EVENT_KYLES_HOUSE_KYLE_DISAPPEARED
	end

KylesHouseKyleIntro:
	text "KYLE: Oh, good,"
	para "you're okay."

	line "Act natural."
	done

KylesHouseKyleWarning:
	text "Look, cracking"
	line "that BAD EGG..."

	para "Was a mistake."

	para "It's all mixed"
	line "up in here."

	para "I don't know if"
	line "I'm here."

	para "Are you here?"

	para "The source of"
	line "all this."

	para "It's in BRIAN's"
	line "HOUSE."

	para "The pit there."

	para "It's like, a"
	line "metaphor for his"
	cont "life."

	para "You have to go in"
	line "there, and confr-"
	line "and get him to   "
	cont "confront it."

	para "Also, it's time I"
	line "told you about"
	cont "yourself."

	para "You are-"
	done
KylesHouseJoy:
	jumptext KylesHouseJoyMeow

KylesHouseJoyMeow:
	text "JOY: mrah."

	para "You move in to"
	line "pet her, but"
	cont "you don't like"
	cont "your chances with"
	cont "that look in her"
	cont "eye."
	done

KylesHouseRoy:
	jumptext KylesHouseRoyMeow

KylesHouseRoyMeow:
	text "ROY: MREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"

	para "He's so loud."
	done

KylesHouseShaska:
	jumptext KylesHouseShaskaMeow

KylesHouseShaskaMeow:
	text "SHASKA: mrrrrp"
	line "    mrrrrrr"

	para "This cat has no"
	line "intention of"
	cont "getting out of"
	cont "your way."
	done

KylesHouseJordanScript:
	faceplayer
	opentext 
	writetext KylesHouseJordanIntro
	yesorno
	iffalse .End
	writetext KylesHouseJordanSeenText
	waitbutton
	closetext
	winlosstext KylesHouseJordanBeatenText, 0
	loadtrainer JORDAN, JORDAN3
	startbattle
	reloadmapafterbattle
	opentext
	writetext KylesHouseJordanAfterText
	waitbutton
	random 7
	ifequal 0, .EverStone
	ifequal 1, .PolkadotBow
	ifequal 2, .PinkBow
	ifequal 3, .Honey
	ifequal 4, .Basil
	ifequal 5, .Revive
	ifequal 6, .LoveStone
.EverStone:
	verbosegiveitem EVERSTONE
	sjump .End
.PolkadotBow:
	verbosegiveitem POLKADOT_BOW
	sjump .End
.PinkBow:
	verbosegiveitem PINK_BOW
	sjump .End
.Honey:
	verbosegiveitem HONEY
	sjump .End
.Basil:
	verbosegiveitem BASIL, 5
	sjump .End
.Revive:
	verbosegiveitem REVIVE, 2
	sjump .End
.LoveStone:
	verbosegiveitem LOVE_STONE
	sjump .End
.End:
	closetext
	end

KylesHouseJordanAfterText:
	text "JORDAN: Here,"
	line "take this as a"
	cont "reward!"
	done

KylesHouseJordanBeatenText:
	text "JORDAN: Dang, you"
	line "beat me again."
	done

KylesHouseJordanSeenText:
	text "JORDAN: Alright,"
	line "me and my EEVEEs"
	cont "aren't gonna go"
	cont "easy on you!"
	done

KylesHouseJordanIntro:
	text "JORDAN: Oh hey,"
	line "it's you again."

	para "Does KYLE still"
	line "have you doing"
	cont "weird stuff?"

	para "He's obsessed"
	line "with working on"
	cont "this ROM hack"
	cont "lately."

	para "I guess things"
	line "have been less"
	cont "glitchy lately"
	cont "though."

	para "Did you want to"
	line "have another"
	cont "#MON battle?"
	done

KylesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4, 13, IVY_ROAD, 6
	warp_event  5, 13, IVY_ROAD, 6
	warp_event  0,  5, HAUNTED_ATTIC, 1
	warp_event 12,  0, IVY_ROAD, 7

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  6, 10, BGEVENT_READ, KylesHouseConsole
	bg_event 13,  9, BGEVENT_READ, KylesHouseShelf
	bg_event 12,  9, BGEVENT_READ, KylesHouseShelf
	bg_event  3,  9, BGEVENT_READ, KylesHouseShelf
	bg_event  2,  9, BGEVENT_READ, KylesHouseShelf
	bg_event  1,  9, BGEVENT_READ, KylesHouseShelf
	bg_event  0,  9, BGEVENT_READ, KylesHouseShelf

	def_object_events
;	object_event , y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  0,  2, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KylesHouseKyle, EVENT_KYLES_HOUSE_KYLE_DISAPPEARED
	object_event  6,  5, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, KylesHouseJordanScript, 0
	object_event  5,  5, SPRITE_CAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, KylesHouseJoy, 0
	object_event  8, 10, SPRITE_CAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, KylesHouseRoy, 0
	object_event 10,  6, SPRITE_FOX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, KylesHouseShaska, 0
