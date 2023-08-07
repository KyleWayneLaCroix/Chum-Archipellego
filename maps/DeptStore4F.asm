	object_const_def
;	const MAPNAME_OBJECTNAME

UnivercityMart4F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityHeld1MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_HELD1
	closetext
	end

UnivercityHeld2MartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_HELD2
	closetext
	end

UnivercityEvolutionMartScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_UNIVERCITY_EVOLUTION
	closetext
	end

UnivercityMart4FElevatorScript:
	jumptext UnivercityMart4FElevatorText

UnivercityMart4FSignScript:
	jumptext UnivercityMart4FSignText

UnivercityMart4FScientistScript:
	jumptextfaceplayer Univercity4FScientistText

UnivercityMart4FErikaScript:
	jumptextfaceplayer UnivercityMart4FErikaText

UnivercityMart4FProfessorScript:
	faceplayer
	opentext
	writetext EvoProfessorIntroText
.Loop:
	loadmenu .EvoProfessorMenu
	verticalmenu
	closewindow
	ifequal 1, .Elemental
	ifequal 2, .OtherStones
	ifequal 3, .OtherItems
	ifequal 4, .Sex
	ifequal 5, .Happiness
	closetext
	end

.Elemental:
	writetext EvoElementalText
	waitbutton
	sjump .Loop

.OtherStones:
	writetext EvoOtherStonesText
	waitbutton
	sjump .Loop

.OtherItems:
	writetext EvoOtherItemsText
	waitbutton
	sjump .Loop

.Sex:
	writetext EvoSexText
	waitbutton
	sjump .Loop

.Happiness:
	writetext EvoHappinessText
	waitbutton
	sjump .Loop

.EvoProfessorMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "ELEMENTAL STONES@"
	db "OTHER STONES@"
	db "OTHER ITEMS@"
	db "SEX-BASED EVOL.@"
	db "HAPPINESS@"


UnivercityMart4FGrannyScript:
	jumptextfaceplayer UnivercityMart4FGrannyText

UnivercityMart4FGrannyText:
	text "Evolution isn't"
	line "real."

	para "#MON changing"
	line "to other #MON?"

	para "Hogwash!"

	para "Arceus created"
	line "every #MON as"
	cont "they are now."

	para "Microevolution"
	line "like CATERPIE"
	cont "into METAPOD"
	cont "is true."

	para "But MAGIKARP"
	line "to GYARADOS?"

	para "ridiculous."
	done
EvoProfessorIntroText:
	text "Hello! I am PROF."
	line "PINE."

	para "I study #MON"
	line "evolution."

	para "Particularly non-"
	line "-level based evo-"
	cont "-lution."

	para "What would you"
	line "like to know?"
	done

EvoElementalText:
 	text "First off there"
 	line "are FIRE STONES,"

 	para "GROWLITHE and"
 	line "EEVEE are the 2"
 	cont "I've studied in"
 	cont "the ARCHIPELAGO"
 	cont "that use that."

 	para "The THUNDERSTONE"
 	line "can be used on"
 	cont "CHARJABUG and"
 	cont "EEVEE of course."

 	para "The WATER STONE"
 	line "is used by LOMBRE"
 	cont "and, again, EEVEE"

 	para "The LEAF STONE is"
 	line "used by EXEGGCUTE"
 	cont "and, again, EEVEE"

 	para "The ICE STONE is"
 	line "used by, you"
 	cont "guessed it, EEVEE"

 	para "EEVEE uses a LOT"
 	line "of STONES."
 	done

EvoOtherStonesText:
	text "Let's see, there"
	line "is the DUSK STONE"
	cont "which is used by"
	cont "DOOMSTONE,"
	cont "LAMPENT, &"
	cont "MISDREAVUS."

	para "Then the MOON"
	line "STONE, used by"
	cont "ROCKRUFFs for"
	cont "their MIDNIGHT"
	cont "form."
	
	para "MUNNA, and SKITTY"
	line "also use MOON"
	cont "STONES to evolve."

	para "Then the LOVE"
	line "STONE, used by"
	cont "EEVEE to evolve"
	cont "into SYLVEON."
	done

EvoOtherItemsText:
	text "There's the BLACK"
	line "ROCK, used by"
	cont "SCYTHER to evolve"
	cont "into KLEAVOR."
	cont "It can also use a"
	cont "METAL COAT to"
	cont "evolve to SCYTHER"

	para "HAUNTER uses a"
	line "LINK CABLE now."

	para "APPLIN turns into"
	line "APPLETUN with a"
	cont "SWEET APPLE, and"
	cont "into FLAPPLE with"
	cont "a TART APPLE."

	para "Also PORYGON2"
	line "uses an UPGRADE"
	cont "to become PORY-"
	cont "-GON Z."
	done

EvoSexText:
	text "Some #MON have"
	line "sexually dimor-"
	cont "-phic evolutions."

	para "FARFETCH'D can be"
	line "SIRFETCH'D when"
	cont "male, but LUXWAN"
	cont "if female."

	para "TANGELA evolves"
	line "to JUNGELA via a"
	cont "BETA STONE, but"
	cont "once evolved"
	cont "JUNGELA can use"
	cont "TESTOSTERONE to"
	cont "become a"
	cont "TANGROWTH, and"
	cont "vice versa."

	para "Also ESPURR has a"
	line "male and female"
	cont "form with some"
	cont "differences too."

	para "CHUM ARCHIPELAGO"
	line "has a GEN II"
	cont "architecture."

	para "This is not"
	line "condusive to sex-"
	cont "-based evolution."

	para "This is why you"
	line "will need a GENDER"
	cont "CLINIC to get"
	cont "either ESTRADIOL"
	cont "or TESTOSTERONE to"
	cont "evolve these #-"
	cont "-MON."

	para "This does also"
	line "allow you to evo-"
	cont "-lve both forms"
	cont "into each other."

	para "So it can also be"
	line "convenient!"

	para "The local GENDER"
	line "CLINIC can be"
	cont "Found south of"
	cont "town."
	done

EvoHappinessText:
	text "Some #MON only"
	line "evolve when they"
	cont "are happy."

	para "Some like WOOBAT"
	line "and SNOM just"
	cont "evolve whenever"
	cont "they are at a"
	cont "certain level of"
	cont "happiness."

	para "ROCKRUFF & EEVEE"
	line "have different"
	cont "forms depending"
	cont "on what time they"
	cont "feel this way."
	done

UnivercityMart4FErikaText:
	text "Held items are"
	line "very useful in"
	cont "battle."

	para "The ones they"
	line "sell here mostly"
	cont "boost damage of"
	cont "certain types,"

	para "but there are"
	line "more out there"
	cont "that do so much"
	cont "more!"
	done

Univercity4FScientistText:
	text "Trade evolution"
	line "has been removed!"

	para "Now you just use"
	line "the items like a"
	cont "stone."

	para "They sell a lot"
	line "of them here, but"
	cont "there are a few"
	cont "they don't."

	para "Sex-based evolu-"
	line "-tion is a bit off"
	cont "in the ARCHIPELAGO"
	cont "too."

	para "You need to give"
	line "your #MON a"
	cont "huge burst of the"
	cont "appropriate sex"
	cont "hormone."

	para "Not sure where to"
	line "get that though."
	done

UnivercityMart4FSignText:
	text "  DIRECTORY - 4F "
	line "  Held Items &   " 
	cont "Evolution Stones "
	done

UnivercityMart4FElevatorText:
	text "OUT OF ORDER"

	para "Elevators have"
	line "their own unique"
	cont "code and handling"

	para "And I've already"
	line "missed like two"
	cont "deadlines, so I"
	cont "gotta make cuts."
	done


UnivercityMart4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 13,  0, UNIVERCITY_MART_3F, 2
	warp_event  2,  0, UNIVERCITY_MART_5F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 0, 0, BGEVENT_READ, UnivercityMart4FElevatorScript
	bg_event 12,  0, BGEVENT_READ, UnivercityMart4FSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityHeld1MartScript, 0
	object_event 13,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityHeld2MartScript, 0
	object_event  4,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityEvolutionMartScript, 0
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMart4FScientistScript, 0
	object_event 15,  2, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMart4FErikaScript, 0
	object_event  3,  7, SPRITE_ELM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnivercityMart4FProfessorScript, 0
	object_event 10,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMart4FGrannyScript, 0
