DEF UNIVERCITY_PBR_PRICE        EQU 200
DEF UNIVERCITY_GREEN_TEA_PRICE  EQU 300
DEF UNIVERCITY_MONSTER_PRICE    EQU 350

	object_const_def
;	const MAPNAME_OBJECTNAME


UnivercityMart5F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityTM1MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_TM1
	closetext
	end

UnivercityTM2MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_TM2
	closetext
	end

UnivercityTM3MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_TM3
	closetext
	end

UnivercityMart5FElevatorScript:
	jumptext UnivercityMart5FElevatorText

UnivercityMart5FSignScript:
	jumptext UnivercityMart5FSignText


UnivercityTMList1:
	jumptext UnivercityTMList1Text

UnivercityTMList2:
	jumptext UnivercityTMList2Text

UnivercityTMList3:
	jumptext UnivercityTMList3Text

UnivercityVendingMachine:
	opentext
	writetext UnivercityVendingText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PBR
	ifequal 2, .GreenTea
	ifequal 3, .Monster
	closetext
	end

.PBR:
	checkmoney YOUR_MONEY, UNIVERCITY_PBR_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, UNIVERCITY_PBR_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.GreenTea:
	checkmoney YOUR_MONEY, UNIVERCITY_GREEN_TEA_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, UNIVERCITY_GREEN_TEA_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Monster:
	checkmoney YOUR_MONEY, UNIVERCITY_MONSTER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, UNIVERCITY_MONSTER_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext UnivercityClangText
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	writetext UnivercityVendingNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	writetext UnivercityVendingNoSpaceText
	waitbutton
	sjump .Start

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "P.B.R.       ¥{d:UNIVERCITY_PBR_PRICE}@"
	db "GREEN TEA    ¥{d:UNIVERCITY_GREEN_TEA_PRICE}@"
	db "MONSTER      ¥{d:UNIVERCITY_MONSTER_PRICE}@"
	db "CANCEL@"

UnivercityMart5FCoolTrainerMScript:
	jumptextfaceplayer UnivercityMart5FCoolTrainerMText

 UnivercityMart5FCoolTrainerFScript:
 	jumptextfaceplayer  UnivercityMart5FCoolTrainerFText

UnivercityMart5FCoolTrainerFText:
	text "Why are TMs so"
	line "specific?"

	para "I want to teach"
	line "my CHARMANDER"
	cont "BLIZZARD!"

	para "Why won't it"
	line "work!?!"
	done

UnivercityMart5FCoolTrainerMText:
	text "TMs are so cool!"
	line "They let you set"

	para "your team up with"
	line "the moves you"
	cont "want them to know"
	
	para "and it's very"
	line "cool that they're"
	cont "infinite use now!"

	para "I'm a COOLTRAINER"
	done


UnivercityVendingText:
	text "A vending machine!"
	line "Here's the menu."
	done

UnivercityClangText:
	text "Clang!"

	para "@"
	text_ram wStringBuffer3
	text_start
	line "popped out."
	done

UnivercityVendingNoMoneyText:
	text "Oops, not enough"
	line "money…"
	done

UnivercityVendingNoSpaceText:
	text "There's no more"
	line "room for stuff…"
	done

UnivercityTMList1Text:
	text "TM47 THUNDERPUNCH"
	line "TM12 FIRE PUNCH"
	cont "TM23 ICE PUNCH"
	cont "TM46 THUNDERBOLT"
	cont "TM13 FLAMETHROWER"
	cont "TM22 ICE BEAM"
	cont "TM45 THUNDER"
	cont "TM11 FIRE BLAST"
	cont "TM02 BLIZZARD"
	done

UnivercityTMList2Text:
	text "TM03 BODY SLAM"
	line "TM20 HYPER BEAM"
	cont "TM15 GIGA IMPACT"
	cont "TM34 RETURN"
	cont "TM30 SLEEP TALK"
	cont "TM08 DOUBLE EDGE"
	cont "TM18 HIDDEN POWER"
	cont "TM42 SUBSTITUTE"
	done

UnivercityTMList3Text:
	text "TM16 HAIL"
	line "TM33 RAIN DANCE"
	cont "TM36 SANDSTORM"
	cont "TM43 SUNNY DAY"
	cont "TM19 HYDRO PUMP"
	cont "TM40 SOLARBEAM"
	cont "TM48 TOXIC"
	done

UnivercityMart5FSignText:
	text "  DIRECTORY - 5F "
	line "       TMs       "
	done

UnivercityMart5FElevatorText:
	text "OUT OF ORDER"

	para "Kyle didn't even"
	line "look at how the"
	cont "elevators work."

	para "Just preemptively"
	line "decided it's not"
	cont "worth it."
	done


UnivercityMart5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 3, 0, UNIVERCITY_MART_4F, 2
	warp_event 12, 0, UNIVERCITY_MART_ROOF, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 0, 0, BGEVENT_READ, UnivercityMart5FElevatorScript
	bg_event 2, 0, BGEVENT_READ, UnivercityMart5FSignScript
	bg_event  3,  6, BGEVENT_READ, UnivercityTMList1
	bg_event  7,  6, BGEVENT_READ, UnivercityTMList2
	bg_event 11,  6, BGEVENT_READ, UnivercityTMList3
	bg_event  8,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event 15,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event 11,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event 10,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event  9,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event  7,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event  6,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event  5,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event  4,  1, BGEVENT_UP, UnivercityVendingMachine
	bg_event 14,  1, BGEVENT_UP, UnivercityVendingMachine

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  2,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityTM1MartScript, 0
	object_event  6,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityTM2MartScript, 0
	object_event 10,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityTM3MartScript, 0
	object_event  0,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnivercityMart5FCoolTrainerMScript, 0
	object_event 15,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, UnivercityMart5FCoolTrainerFScript, 0
