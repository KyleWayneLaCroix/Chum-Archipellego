	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_DARK_LAB_KYLE_INTRO
	const THE_DARK_LAB_BRIAN_INTRO
	const THE_DARK_LAB_THE_EMPTY_1
	const THE_DARK_LAB_THE_EMPTY_2
	const THE_DARK_LAB_POKE_BALL1
	const THE_DARK_LAB_POKE_BALL2
	const THE_DARK_LAB_POKE_BALL3


TheDarkLab_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script TheDarkLabIntro, SCENE_THE_DARK_LAB_INTRO
	scene_script TheDarkLabNormal, SCENE_THE_DARK_LAB_NORMAL

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, TheDarkLabTileCallback
	callback MAPCALLBACK_NEWMAP, TheDarkLabFlypointCallback

TheDarkLabFlypointCallback:
	blackoutmod THE_DARK_LAB
	setflag ENGINE_FLYPOINT_THE_DARK_LAB
	endcallback

TheDarkLabTileCallback:
	checkevent EVENT_THE_DARK_LAB_BOMBED_WALL
	iffalse .RightTank
	changeblock 0, 0, $11
	changeblock 2, 0, $12
	changeblock 0, 2, $47
	changeblock 2, 2, $10
	changeblock 0, 4, $47
	changeblock 2, 4, $48
	changeblock 2, 6, $46
.RightTank:
	checkevent EVENT_THE_DARK_LAB_RIGHT_TANK
	iffalse .LeftTank
	changeblock 20,  2, $32
	changeblock 20,  4, $18
.LeftTank:
	checkevent EVENT_THE_DARK_LAB_LEFT_TANK
	iffalse .Intro
	changeblock  8,  2, $32
	changeblock  8,  4, $18
.Intro:
	checkevent EVENT_SAW_DARK_LAB_INTRO
	iffalse .End
	changeblock 14,  2, $35
	changeblock 14,  4, $36
.End:
	endcallback

TheDarkLabIntro:
	pause 30
	applymovement THE_DARK_LAB_KYLE_INTRO, IntroKyleWalksIntoRoom
	opentext
	writetext TheDarkLabKyleIntro
	waitbutton
	closetext
	applymovement THE_DARK_LAB_KYLE_INTRO, TheDarkLabStepLeft
	applymovement THE_DARK_LAB_KYLE_INTRO, TheDarkLabStepRight
	applymovement THE_DARK_LAB_KYLE_INTRO, TheDarkLabStepLeft
	applymovement THE_DARK_LAB_KYLE_INTRO, TheDarkLabStepRight
	opentext
	writetext TheDarkLabKyleIntro2
	waitbutton
	closetext
	applymovement THE_DARK_LAB_KYLE_INTRO, IntroKyleLeavesRoom
	disappear THE_DARK_LAB_KYLE_INTRO
	pause 30
	applymovement THE_DARK_LAB_BRIAN_INTRO, IntroBrianEntersRoom
	showemote EMOTE_QUESTION, THE_DARK_LAB_BRIAN_INTRO, 30
	applymovement THE_DARK_LAB_BRIAN_INTRO, TheDarkLabStepUp
	turnobject THE_DARK_LAB_BRIAN_INTRO, RIGHT
	playsound SFX_ZAP_CANNON
	waitsfx
	special FadeBlackQuickly
	playsound SFX_STRENGTH
	earthquake 60
	waitsfx
	opentext
	changeblock 14,  2, $35
	changeblock 14,  4, $36
	reloadmappart
	closetext
	special FadeInQuickly
	applymovement THE_DARK_LAB_BRIAN_INTRO, IntroBrianExitsRoom
	disappear THE_DARK_LAB_BRIAN_INTRO
	disappear THE_DARK_LAB_THE_EMPTY_1
	disappear THE_DARK_LAB_THE_EMPTY_2
	setscene SCENE_THE_DARK_LAB_NORMAL
	end

IntroBrianEntersRoom:
	step RIGHT
	jump_step RIGHT
	step_end

IntroBrianExitsRoom:
	jump_step DOWN
	jump_step DOWN
	jump_step RIGHT
	jump_step DOWN
	jump_step DOWN
	step_end

TheDarkLabKyleIntro2:
	text "KYLE: I've gone"
	line "through so many."

	para "I'm running out"
	line "of material."

	para "Without a perfect"
	line "recreation, I"
	cont "can't win."

	para "I better go back"
	line "to the other lab"
	cont "before the other"
	cont "wakes up."
	done

TheDarkLabKyleIntro:
	text "KYLE: Maybe this"
	line "is the one."
	done

IntroKyleWalksIntoRoom:
	step UP
	step UP
	step UP
	step LEFT
	step UP
	step UP
	step_end

IntroKyleLeavesRoom:
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

TheDarkLabStepLeft:
	step LEFT
	step_end

TheDarkLabStepRight:
	step RIGHT
	step_end

TheDarkLabStepUp:
	step UP
	step_end

TheDarkLabKyle:
TheDarkLabBrian:
TheDarkLabNormal:
TrainerTheEmpty1:
TrainerTheEmpty2:
	end

TheDarkLabLeftTank:
	checkevent EVENT_THE_DARK_LAB_LEFT_TANK
	iftrue .End
	opentext
	writetext TheDarkLabTankIntroText
	yesorno
	iffalse .DontOpen
	changeblock  8,  2, $32
	changeblock  8,  4, $18
	playsound SFX_TOXIC
	appear THE_DARK_LAB_THE_EMPTY_1
	reloadmappart
	closetext
	applymovement THE_DARK_LAB_THE_EMPTY_1, DarkLabEmptyTankMovement
	playsound SFX_CURSE
	waitsfx
	writetext TheDarkLabTheEmpty1SeenText
	waitbutton
	closetext
	winlosstext TheDarkLabTheEmpty1BeatenText, 0
	loadtrainer THE_EMPTY, THE_EMPTY_1
	disappear THE_DARK_LAB_THE_EMPTY_1
	startbattle
	appear THE_DARK_LAB_THE_EMPTY_1
	reloadmapafterbattle
	setevent EVENT_BEAT_THE_EMPTY_1
	setevent EVENT_THE_DARK_LAB_LEFT_TANK
	opentext
	writetext TheDarkLabEmptyVesselGoneText
	changeblock  8,  2, $32
	changeblock  8,  4, $18
	waitbutton
	reloadmappart
	closetext
	special FadeBlackQuickly
	playsound SFX_PERISH_SONG
	waitsfx
	disappear THE_DARK_LAB_THE_EMPTY_1
	special FadeInQuickly
	sjump .End
.DontOpen:
	writetext TheDarkLabDontOpenTank
	waitbutton
	closetext
.End:
	end

TheDarkLabRightTank:
	checkevent EVENT_THE_DARK_LAB_RIGHT_TANK
	iftrue .End
	opentext
	writetext TheDarkLabTankIntroText
	yesorno
	iffalse .DontOpen
	changeblock 20,  2, $32
	changeblock 20,  4, $18
	playsound SFX_TOXIC
	appear THE_DARK_LAB_THE_EMPTY_2
	reloadmappart
	closetext
	applymovement THE_DARK_LAB_THE_EMPTY_2, DarkLabEmptyTankMovement
	playsound SFX_CURSE
	waitsfx
	writetext TheDarkLabTheEmpty2SeenText
	waitbutton
	closetext
	winlosstext TheDarkLabTheEmpty2BeatenText, 0
	loadtrainer THE_EMPTY, THE_EMPTY_2
	disappear THE_DARK_LAB_THE_EMPTY_2
	startbattle
	appear THE_DARK_LAB_THE_EMPTY_2
	reloadmapafterbattle
	setevent EVENT_THE_DARK_LAB_RIGHT_TANK
	setevent EVENT_BEAT_THE_EMPTY_2
	writetext TheDarkLabEmptyVesselGoneText
	changeblock 20,  2, $32
	changeblock 20,  4, $18
	waitbutton
	reloadmappart
	closetext
	special FadeBlackQuickly
	playsound SFX_PERISH_SONG
	waitsfx
	disappear THE_DARK_LAB_THE_EMPTY_2
	special FadeInQuickly
	sjump .End
.DontOpen:
	writetext TheDarkLabDontOpenTank
	waitbutton
	closetext
.End:
	end

TheDarkLabEmptyVesselGoneText:
	text "The EMPTY VESSEL"
	line "fades away before"
	cont "your eyes."
	done

TheDarkLabTheEmpty2SeenText:
	text "???:  I  U S E D"
	line "T O  N O T  B E"
	cont " I N T O   T H E"
	
	para "D Y N A S T Y"
	line " W A R R I O R S"
	cont "G A M E S."

	para "T H E N"
	line " T H E R E  W A S"
	cont "A   Z E L D A"
	cont " O N E."
	done

TheDarkLabTheEmpty2BeatenText:
	text "???: I  W O U L D"
	line "N O T  L I E  T O"
	cont " Y O U."

	para "I  O N L Y"
	line "  S P E A K"
	cont " T R U T H"
	done


TheDarkLabTheEmpty1SeenText:
	text "???:  W H Y"
	line " D O E S  I T"
	cont "S E E M  L I K E"
	cont " X B O X  H A S"
	cont "N O  I D E A S"
	cont "    L A T E L Y ?"

	para "N I N T E N D O"
	line " W O U L D   D O"
	cont "B E T T E R."
	done

TheDarkLabTheEmpty1BeatenText:
	text "???: I T  IS"
	line "  L I K E  I  A M"
	cont " O N  M Y  O W N"
	cont "D O N K E Y"
	cont "     K O N G"
	cont "C O U N T R Y  2"
	cont " D I D D Y ' S"
	cont "K O N G"
	cont " Q U E S T"

	para "O F"
	line " F A I L U R E"
	done

DarkLabEmptyTankMovement:
	step DOWN
	step LEFT
	step_end

TheDarkLabDontOpenTank:
	text "Yeah, that's"
	line "probably a good"
	cont "idea."
	done

TheDarkLabTankIntroText:
	text "The thing in the"
	line "tank seems to be"
	cont "moving."

	para "Let it out?"
	done

TheDarkLabPlayerRoomSignText:
	text "<PLAY_G>?"
	done

TheDarkLabBrendanRoomSignText:
	text "UNKNOWN SUBJECT"
	line "EMPTY VESSEL"
	done

TheDarkLabDawnRoomSignText:
	text "UNKNOWN SUBJECT"
	line "EMPTY VESSEL"
	done

TheDarkLabBrokenRoomSignText:
	text "UNKNOWN SUBJECT"
	line "DAMAGED VESSEL"

	para "SOME SIGNS OF"
	line "CONSCIOUSNESS."
	done

TheDarkLabPlayerRoomSign:
	jumptext TheDarkLabPlayerRoomSignText

TheDarkLabBrendanRoomSign:
	jumptext TheDarkLabBrendanRoomSignText

TheDarkLabBrokenRoomSign:
	jumptext TheDarkLabBrokenRoomSignText

TheDarkLabDawnRoomSign:
	jumptext TheDarkLabDawnRoomSignText

TheDarkLabBombableWall:
	checkevent EVENT_THE_DARK_LAB_BOMBED_WALL
	iftrue .End
	opentext
	writetext TheDarkLabBombableWallText
	yesorno
	iffalse .Refused
	closetext
	applymovement PLAYER, TheDarkLabBombWallMovement
	pause 10
	playsound SFX_STRENGTH
	earthquake 60
	waitsfx
	setevent EVENT_THE_DARK_LAB_BOMBED_WALL
	changeblock 0, 0, $11
	changeblock 2, 0, $12
	changeblock 0, 2, $47
	changeblock 2, 2, $10
	changeblock 0, 4, $47
	changeblock 2, 4, $48
	changeblock 2, 6, $46
	applymovement PLAYER, TheDarkLabBombWallMovementBack
.Refused:
	closetext
.End:
	end

TheDarkLabBombableWallText:
	text "The wall here"
	line "looks like it was"
	cont "recently repaired"

	para "You could blow it"
	line "open with a BOMB"
	cont "if you want."

	para "Blow it up?"
	done

TheDarkLabBombWallMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end

TheDarkLabBombWallMovementBack:
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step_end

TheDarkLabSecretRoomChalkboard:
	jumptext TheDarkLabSecretRoomChalkboardText

TheDarkLabSecretRoomChalkboardText:
	text "The chalkboard is"
	line "covered with a"
	cont "crude map of BRO"
	cont "ISLAND, with a"
	cont "series of lines"
	cont "cutting it into"
	cont "different shapes."

	para "They seem to be"
	line "in the shape of"
	cont "the ARCHIPELAGO"
	cont "islands."

	para "Above it is"
	line "written"

	para "CHUM ARCHIPELAGO"
	line "    PHASE 1     "
	done


TheDarkLabSecretRoomStickyNote:
	opentext
	writetext TheDarkLabSecretRoomStickyNoteText
	waitbutton
	setevent EVENT_READ_STICKY_NOTE_PASSWORD
	closetext
	end

TheDarkLabSecretRoomStickyNoteText:
	text "PASSWORD:"

	para "pass123"
	done

TheDarkLabComputer1:
	opentext
	writetext TheDarkLabComputer1TextIntro
	waitbutton
	checkevent EVENT_READ_STICKY_NOTE_PASSWORD
	iffalse .End
	writetext TheDarkLabComputer1EnterPassword
	waitbutton
.Loop:
	loadmenu .TheDarkLabComputer1Menu
	verticalmenu
	closewindow
	ifequal 1, .BroIsland
	ifequal 2, .ChumArchipelago
	ifequal 3, .Brian
	ifequal 4, .CrystalRomHack
	ifequal 5, .DeveloperTools
	closetext
	end

.BroIsland:
	writetext BroIslandText
	waitbutton
	sjump .Loop

.ChumArchipelago:
	writetext ChumArchipelagoText
	waitbutton
	sjump .Loop

.Brian:
	writetext BrianText
	waitbutton
	sjump .Loop

.CrystalRomHack:
	writetext CrystalRomHackText
	waitbutton
	sjump .Loop

.DeveloperTools
	writetext DeveloperToolsText
	waitbutton
	sjump .Loop

.TheDarkLabComputer1Menu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "BRO ISLAND@"
	db "CHUM ARCHIPELAGO@"
	db "BRIAN@"
	db "CRYSTAL ROM HACK@"
	db "DEVELOPER TOOLS@"

.End:
	closetext
	end

DeveloperToolsText:
	text "DEVELOPER TOOLS"

	para "DEVELOPER TOOLS"
	line "cannot be"
	cont "accessed from"
	cont "this terminal."
	done

BroIslandText:
	text "BRO ISLAND"

	para "BRIAN is never"
	line "going to finish"
	cont "BRO ISLAND."

	para "He brings it up"
	line "every few years"
	cont "with promises to"
	cont "finish it, but I"
	cont "know he won't."

	para "He never finishes"
	line "these things."
	done

ChumArchipelagoText:
	text "CHUM ARCHIPELAGO"

	para "ENTRY 1"

	para "This'll show"
	line "BRIAN."

	para "My SUPER MARIO"
	line "RPG ROM Hack"
	cont "will outdo BRO"
	cont "ISLAND in every"
	cont "way!"

	para "ENTRY 2"

	para "Shit man, hacking"
	line "SMRPG is tough."

	para "Maybe I'll try"
	line "again later."
	done

BrianText:
	text "    BRIAN"

	para "I will complete"
	line "my friendship-"
	cont "-based RPG game"
	cont "before BRIAN."

	para "It'll be easy."

	para "He never finishes"
	line "what he starts."

	para "Unlike me, who"
	line "always does."

	para "But I should make"
	line "sure he can't do"
	cont "it before me..."

	para "Just to be safe."

	done

CrystalRomHackText:
	text "CRYSTAL ROM HACK"

	para "ENTRY 1"

	para "Apparently, #-"
	line "-MON CRYSTAL has"
	cont "been completely"
	cont "disassembled."

	para "This access to"
	line "the SOURCE CODE"
	cont "will allow me to"
	cont "quickly complete"
	cont "CHUM ARCHIPELAGO"
	cont "before BRIAN"
	cont "knows what hit"
	cont "him."

	para "I'll just make a"
	line "simple GYM LEADER"
	cont "and #MON swap"
	cont "and be done by"
	cont "CHRISTMAS."

	para "ENTRY 2"

	para "Well I do need a"
	line "whole new INTRO"
	cont "to make it all"
	cont "work out."

	para "ENTRY 3"

	para "I'll be done by"
	line "NEW YEARS. I've"
	cont "made a few new"
	cont "maps, but this'll"
	cont "work out."

	para "ENTRY 54"

	para "It's been over 6"
	line "months."

	para "I think people"
	line "may notice his"
	cont "absence soon."

	para "I have to finish"
	line "this."
	done

TheDarkLabComputer1TextIntro:
	text "The screen shows"
	line "a password prompt"
	done

TheDarkLabComputer1EnterPassword:
	text "You input the"
	line "password into the"
	cont "terminal!"

	para "A menu appears."
	line "Choose:"
	done


PorygonTheDarkLabPokeBallScript:
	refreshscreen
	pokepic PORYGON2
	cry PORYGON2
	waitbutton
	closepokepic
	opentext
	writetext TakePorygon2Text
	yesorno
	iffalse DidntChooseSecondStarterScript
	disappear THE_DARK_LAB_POKE_BALL1
	disappear THE_DARK_LAB_POKE_BALL2
	disappear THE_DARK_LAB_POKE_BALL3
	setevent EVENT_GOT_PORYGON_STARTER
	setevent EVENT_GOT_A_SECOND_STARTER
	writetext ChoseSecondStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, PORYGON2
	writetext ReceivedSecondStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke PORYGON2, 32, UP_GRADE
	closetext
	end

BurgelaTheDarkLabPokeBallScript:
	refreshscreen
	pokepic TANGELA
	cry TANGELA
	waitbutton
	closepokepic
	opentext
	writetext TakeTangelaText
	yesorno
	iffalse DidntChooseSecondStarterScript
	disappear THE_DARK_LAB_POKE_BALL1
	disappear THE_DARK_LAB_POKE_BALL2
	disappear THE_DARK_LAB_POKE_BALL3
	setevent EVENT_GOT_BURGELA_STARTER
	setevent EVENT_GOT_A_SECOND_STARTER
	writetext ChoseSecondStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, TANGELA
	writetext ReceivedSecondStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke TANGELA, 32, ESTRADIOL
	closetext
	end

SpirripTheDarkLabPokeBallScript:
	refreshscreen
	pokepic DOOMSTONE
	cry DOOMSTONE
	waitbutton
	closepokepic
	opentext
	writetext TakeDoomstoneText
	yesorno
	iffalse DidntChooseSecondStarterScript
	disappear THE_DARK_LAB_POKE_BALL1
	disappear THE_DARK_LAB_POKE_BALL2
	disappear THE_DARK_LAB_POKE_BALL3
	setevent EVENT_GOT_SPIRRIP_STARTER
	setevent EVENT_GOT_A_SECOND_STARTER
	writetext ChoseSecondStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, DOOMSTONE
	writetext ReceivedSecondStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke DOOMSTONE, 32, DUSK_STONE
	closetext
	end

DidntChooseSecondStarterScript:
	writetext DidntChooseSecondStarterText
	waitbutton
	closetext
	end


ChoseSecondStarterText:
	text "You got your first"
	line "#MON!"
	done

ReceivedSecondStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done


DidntChooseSecondStarterText:
	text "Think it over"
	line "carefully."

	para "Your choice will"
	line "follow you until"
	cont "this is all done."
	done

TakePorygon2Text:
	text "You'll take"
	line "PORYGON2, the"
	cont "digital mon?"
	done

TakeTangelaText:
	text "Do you want"
	line "TANGELA, the"
	cont "GRASS mon?"
	done

TakeDoomstoneText:
	text "So, you like"
	line "DOOMSTONE, the"
	cont "rock ghost?"
	done

TheDarkLabCabinet:
	checkevent EVENT_GOT_MASTER_BALL
	iftrue .End
	opentext
	writetext LookInDarkLabCabinet1
	waitbutton
	verbosegiveitem MASTER_BALL
	waitbutton
	writetext LookInDarkLabCabinet2
	waitbutton
	closetext
	setevent EVENT_GOT_MASTER_BALL
.End:
	end

LookInDarkLabCabinet1:
	text "You open up the"
	line "cabinet and"
	cont "rummage around"
	cont "until you find"
	cont "something round."
	done

LookInDarkLabCabinet2:
	text "There's a note"
	line "taped to the"
	cont "MASTER BALL:"

	para "'You should save"
	line "this for a time"
	cont "that is dramatic"
	cont "and appropriate."

	para "You'll know when."

	para "  - A friend.'"
	done


DarkLabHealingMachine:
	opentext
	writetext DarkLabHealingMachineText
	yesorno
	iftrue DarkLabHealingMachine_HealParty
	closetext
	end

DarkLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_HEAL
	pause 30
	special FadeBlackQuickly
	special RestartMapMusic
	pause 15
	special FadeInQuickly
	writetext DarkLabHealingMachineHealed
	waitbutton
	closetext
	end

DarkLabHealingMachineHealed:
	text "Your #MON"
	line "are healed!"
	done

DarkLabHealingMachineText:
	text "This machine can"
	line "heal your party"
	cont "of #MON."

	para "Use the healing"
	line "machine?"
	done

DarkLabBookshelfScript:
	jumptext DarkLabBookshelfText

DarkLabBookshelfText:
	text "All of the books"
	line "are blank."
	done

DarkLabEmptyTankScript:
	jumptext DarkLabEmptyTankText

DarkLabEmptyTankText:
	text "An empty tank."
	done

WalkToDarkLabCabinet:
	checkevent EVENT_GOT_MASTER_BALL
	iftrue .End
	applymovement PLAYER, WalkToDarkLabCabinetMovement
	turnobject PLAYER, UP
	sjump TheDarkLabCabinet
.End:
	end

WalkToDarkLabCabinetMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step RIGHT
	step_end

TheDarkLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 24, 19, THE_DARK_LAB_BRIAN_ROOM , 1
	warp_event 25, 19, THE_DARK_LAB_BRIAN_ROOM , 2

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 14,  8, -1, WalkToDarkLabCabinet

	def_bg_events
;	bg_event x, y, type, script
	bg_event 20, 3, BGEVENT_READ, TheDarkLabRightTank
	bg_event 21,  4, BGEVENT_READ, TheDarkLabRightTank
	bg_event 20,  4, BGEVENT_READ, TheDarkLabRightTank
	bg_event  9,  4, BGEVENT_READ, TheDarkLabLeftTank
	bg_event  8,  4, BGEVENT_READ, TheDarkLabLeftTank
	bg_event  8,  3, BGEVENT_READ, TheDarkLabLeftTank
	bg_event  25,  7, BGEVENT_READ, TheDarkLabPlayerRoomSign
	bg_event 19,  7, BGEVENT_READ, TheDarkLabBrendanRoomSign
	bg_event 13,  7, BGEVENT_READ, TheDarkLabBrokenRoomSign
	bg_event  7,  7, BGEVENT_READ, TheDarkLabDawnRoomSign
	bg_event  2,  7, BGEVENT_READ, TheDarkLabBombableWall
	bg_event  1,  0, BGEVENT_READ, TheDarkLabSecretRoomChalkboard
	bg_event  3,  0, BGEVENT_READ, TheDarkLabSecretRoomChalkboard
	bg_event  2,  0, BGEVENT_READ, TheDarkLabSecretRoomChalkboard
	bg_event  2,  4, BGEVENT_READ, TheDarkLabSecretRoomStickyNote
	bg_event  4, 14, BGEVENT_READ, TheDarkLabComputer1
	bg_event  5, 14, BGEVENT_READ, TheDarkLabComputer1
	bg_event 27,  8, BGEVENT_READ, TheDarkLabCabinet
	bg_event 24, 12, BGEVENT_READ, DarkLabHealingMachine
	bg_event 27, 13, BGEVENT_READ, DarkLabHealingMachine
	bg_event 26, 13, BGEVENT_READ, DarkLabHealingMachine
	bg_event 25, 12, BGEVENT_READ, DarkLabHealingMachine
	bg_event 23, 12, BGEVENT_READ, DarkLabBookshelfScript
	bg_event 22, 12, BGEVENT_READ, DarkLabBookshelfScript
	bg_event 21, 12, BGEVENT_READ, DarkLabBookshelfScript
	bg_event 20, 12, BGEVENT_READ, DarkLabBookshelfScript
	bg_event 26,  3, BGEVENT_READ, DarkLabEmptyTankScript
	bg_event 26,  4, BGEVENT_READ, DarkLabEmptyTankScript
	bg_event 27,  4, BGEVENT_READ, DarkLabEmptyTankScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 14,  8, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TheDarkLabKyle, EVENT_SAW_DARK_LAB_INTRO
	object_event 10,  3, SPRITE_RED, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheDarkLabBrian, EVENT_SAW_DARK_LAB_INTRO
	object_event  9,  3, SPRITE_THE_EMPTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerTheEmpty1, EVENT_BEAT_THE_EMPTY_1
	object_event 21,  3, SPRITE_THE_EMPTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerTheEmpty2, EVENT_BEAT_THE_EMPTY_2
	object_event 12, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PorygonTheDarkLabPokeBallScript, EVENT_GOT_PORYGON_STARTER
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurgelaTheDarkLabPokeBallScript, EVENT_GOT_BURGELA_STARTER
	object_event 14, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpirripTheDarkLabPokeBallScript, EVENT_GOT_SPIRRIP_STARTER
