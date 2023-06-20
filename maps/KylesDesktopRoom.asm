	object_const_def
;	const MAPNAME_OBJECTNAME
	const KYLES_DESKTOP_ROOM_KYLE
	const KYLES_DESKTOP_ROOM_BIG_FURIOUS_B

KylesDesktopRoom_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

KylesDesktopRoomDesktopLeft:
	checkevent EVENT_BEAT_KYLES_DESKTOP_ROOM_KYLE
	iftrue .Desktop
	appear KYLES_DESKTOP_ROOM_KYLE
	sjump KylesDesktopRoomKyleScript
.Desktop:
	sjump KylesDesktopRoomDesktop

KylesDesktopRoomDesktopRight:
	checkevent EVENT_BEAT_KYLES_DESKTOP_ROOM_KYLE
	iftrue .Desktop
	appear KYLES_DESKTOP_ROOM_KYLE
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomWalkRight
	sjump KylesDesktopRoomKyleScript
.Desktop:
	sjump KylesDesktopRoomDesktop

KylesDesktopRoomKyleScript:
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomWalkToPlayer
	showemote EMOTE_SHOCK, PLAYER, 30
	turnobject PLAYER, DOWN
	opentext
	writetext KylesDesktopRoomKyleIntro
	waitbutton
	closetext
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceLeft
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceLeft
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceRight
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceRight
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceRight
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceRight
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceLeft
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceLeft
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceDown
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceDown
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceUp
	opentext
	writetext KylesDesktopRoomKyleIntro2
	waitbutton
	closetext
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceLeft
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceRight
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceRight
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceLeft
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceLeft
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceDown
	opentext
	writetext KylesDesktopRoomKyleIntro3
	waitbutton
	closetext
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceUp
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceRight
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceUp
	opentext
	writetext KylesDesktopRoomKyleSeenText
	waitbutton
	closetext
	winlosstext KylesDesktopRoomKyleBeatenText, 0
	loadtrainer KYLE, KYLE2
	startbattle
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext KylesDesktopRoomKyleAfterText
	waitbutton
	setevent EVENT_BEAT_KYLES_DESKTOP_ROOM_KYLE
	changeblock 0, 0, $54
	changeblock 2, 0, $4d
	changeblock 4, 0, $4e
	changeblock 6, 0, $4f
	changeblock 8, 0, $54
	changeblock 0, 2, $50
	changeblock 2, 2, $51
	changeblock 4, 2, $52
	changeblock 6, 2, $53
	changeblock 8, 2, $50
	changeblock 0, 4, $50
	changeblock 2, 4, $50
	changeblock 4, 4, $50
	changeblock 6, 4, $50
	changeblock 8, 4, $50
	changeblock 0, 6, $50
	changeblock 2, 6, $50
	changeblock 4, 6, $50
	changeblock 6, 6, $50
	changeblock 8, 6, $50
	changeblock 0, 8, $50
	changeblock 2, 8, $50
	changeblock 4, 8, $50
	changeblock 6, 8, $50
	changeblock 8, 8, $50
	reloadmappart
	closetext
	playmusic MUSIC_DRAGONS_DEN
	special FadeOutPalettes
	disappear KYLES_DESKTOP_ROOM_KYLE
	moveobject KYLES_DESKTOP_ROOM_KYLE, 4, 3
	applymovement PLAYER, KylesDesktopRoomKylePaceRight
	applymovement PLAYER, KylesDesktopRoomKyleBackAwayDown
	appear KYLES_DESKTOP_ROOM_KYLE
	turnobject KYLES_DESKTOP_ROOM_KYLE, UP
	turnobject PLAYER, UP
	special FadeInPalettes
	opentext
	reloadmappart
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKyleBackAwayDown
	applymovement PLAYER, KylesDesktopRoomKyleBackAwayDown
	special FadeBlackQuickly
	playsound SFX_WARP_TO
	waitsfx
	special FadeInQuickly
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKyleBackAwayDown
	applymovement PLAYER, KylesDesktopRoomKyleBackAwayDown
	special FadeBlackQuickly
	playsound SFX_WARP_TO
	waitsfx
	special FadeInQuickly
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKyleBackAwayDown
	applymovement PLAYER, KylesDesktopRoomKyleBackAwayDown
	special FadeBlackQuickly
	playsound SFX_WARP_FROM
	waitsfx
	special FadeInQuickly
	appear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	pause 12
	cry FURIOUSB
	waitsfx
	writetext KylesDesktopRoomKyleAfterText2
	waitbutton
	reloadmappart
	closetext
	cry FURIOUSB
	waitsfx
	opentext
	writetext KylesDesktopRoomKyleFuriousBText1
	waitbutton
	closetext
	special FadeOutPalettes
	disappear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	moveobject KYLES_DESKTOP_ROOM_BIG_FURIOUS_B, 4, 3
	appear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	opentext
	reloadmappart
	closetext
	pause 15
	special FadeInPalettes
	pause 15
	special FadeOutPalettes
	disappear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	moveobject KYLES_DESKTOP_ROOM_BIG_FURIOUS_B, 4, 4
	appear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	opentext
	reloadmappart
	closetext
	pause 15
	special FadeInPalettes
	pause 15
	special FadeOutPalettes
	disappear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	moveobject KYLES_DESKTOP_ROOM_BIG_FURIOUS_B, 3, 4
	appear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	opentext
	reloadmappart
	closetext
	pause 15
	special FadeInPalettes
	pause 15
	opentext
	writetext KylesDesktopRoomKyleFuriousBNo
	waitbutton
	closetext
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKyleBackAwayDown
	special FadeOutPalettes
	playsound SFX_TACKLE
	waitsfx
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKylePaceLeft
	turnobject KYLES_DESKTOP_ROOM_KYLE, UP
	disappear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	moveobject KYLES_DESKTOP_ROOM_BIG_FURIOUS_B, 3, 5
	appear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	opentext
	reloadmappart
	closetext
	pause 15
	playsound SFX_TACKLE
	waitsfx
	special FadeInPalettes
	pause 15
	opentext
	writetext KylesDesktopRoomKyleFuriousBNo2
	waitbutton
	closetext
	special FadeOutPalettes
	disappear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	moveobject KYLES_DESKTOP_ROOM_BIG_FURIOUS_B, 2, 5
	appear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	opentext
	reloadmappart
	closetext
	pause 15
	playsound SFX_TACKLE
	waitsfx
	special FadeInPalettes
	pause 15
	special FadeOutPalettes
	applymovement KYLES_DESKTOP_ROOM_KYLE, KylesDesktopRoomKyleBackAwayDown
	disappear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	moveobject KYLES_DESKTOP_ROOM_BIG_FURIOUS_B, 2, 6
	appear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	opentext
	reloadmappart
	closetext
	pause 15
	playsound SFX_TACKLE
	waitsfx
	special FadeInPalettes
	pause 15
	opentext
	writetext KylesDesktopRoomKyleFuriousBNo3
	waitbutton
	closetext
	special FadeOutMusic
	special FadeOutPalettes
	playsound SFX_TACKLE
	playsound SFX_STRENGTH
	playsound SFX_POWDER
	waitsfx
	playsound SFX_TACKLE
	playsound SFX_STRENGTH
	playsound SFX_POWDER
	waitsfx
	playsound SFX_TACKLE
	playsound SFX_STRENGTH
	playsound SFX_POWDER
	waitsfx
	disappear KYLES_DESKTOP_ROOM_KYLE
	special FadeInPalettes
	pause 20
	cry FURIOUSB
	special FadeOutPalettes
	disappear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	moveobject KYLES_DESKTOP_ROOM_BIG_FURIOUS_B, 4, 2
	appear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	opentext
	reloadmappart
	closetext
	pause 15
	special FadeInPalettes
	end

KylesDesktopRoomKyleBackAwayDown:
	fix_facing UP
	step DOWN
	remove_fixed_facing
	step_end

KylesDesktopRoomKyleFuriousBNo:
	text "KYLE: No, attack"
	line "him!"
	done

KylesDesktopRoomKyleFuriousBNo2:
	text "KYLE: NO!"
	done

KylesDesktopRoomKyleFuriousBNo3:
	text "KYLE: NOOOOOOOO!"
	done

KylesDesktopRoomKyleFuriousBText1:
	text "FURIOUSB: DONKEY"
	line "KONG COUNTRY IS"
	cont "BETTER THAN SUPER"
	cont "MARIO WORLD."
	done

KylesDesktopRoomKyleAfterText2:
	text "KYLE: BEHOLD!"

	para "My greatest"
	line "creation!"

	para "The highest"
	line "possible stats,"
	cont "its own typing,"
	cont "powerful moves..."

	para "FURIOUS B is the"
	line "ultimate combo of"
	cont "BRIAN and #MON"
	done

KylesDesktopRoomKyleAfterText3:
	text "FURIOUS B!"

	para "Destroy them!"
	done

KylesDesktopRoomKylePaceLeft:
	step LEFT
	step_end

KylesDesktopRoomKylePaceRight:
	step RIGHT
	step_end

KylesDesktopRoomKylePaceUp:
	step UP
	step_end

KylesDesktopRoomKylePaceDown:
	step DOWN
	step_end

KylesDesktopRoomKyleAfterText:
	text "KYLE: I shouldn't"
	line "have played fair."

	para "Well, I'm not"
	line "going to now..."

	para "COMPUTER, SUMMON"
	line "THE BEAST."
	done


KylesDesktopRoomKyleBeatenText:
	text "KYLE: I should've"
	line "given myself a"
	cont "full team of"
	cont "level 200s."
	done

KylesDesktopRoomKyleSeenText:
	text "KYLE: It's time"
	line "to put you down"
	cont "once and for all."

	para "I made you."

	para "I can unmake you!"
	done

KylesDesktopRoomKyleIntro3:
	text "KYLE: You think"
	line "that because you"
	cont "didn't finish"
	cont "BRO ISLAND, you"
	cont "can end my CHUM"
	cont "ARCHIPELAGO"
	cont "before it's"
	cont "complete!?!?"

	para "Not a chance!"
	done

KylesDesktopRoomKyleIntro2:
	text "KYLE: I can't let"
	line "you use that"
	cont "COMPUTER."

	para "CHUM ARCHIPELAGO"
	line "isn't done yet."

	para "I have plans for"
	line "Four CYBERSPACE"
	cont "areas and I only"
	cont "have like two."

	para "That second one"
	line "wasn't even"
	cont "labeled as one!"

	para "I have all the"
	line "maps for a SANHA"
	cont "focused area,"
	cont "but I haven't"
	cont "scripted them"
	cont "yet."

	para "I have a couple"
	line "legendaries I"
	cont "haven't made yet."

	para "Hell, the #DEX"
	line "still doesn't"
	cont "work!"

	para "That's why you"
	line "don't have one!"
	done

KylesDesktopRoomKyleIntro:
	text "KYLE: So. You've"
	line "made it."

	para "You finally know"
	line "who you really"
	cont "are."

	para "I see you were"
	line "the PICCOLO."

	para "As expected from"
	line "my creation."
	done

KylesDesktopRoomDesktop:
	playsound SFX_BOOT_PC
	waitsfx
	playsound SFX_TWO_PC_BEEPS
	waitsfx
	opentext
	writetext KylesDesktopRoomDesktopTextIntro
	waitbutton
.Loop:
	loadmenu .KylesDesktopRoomDesktopMenu
	verticalmenu
	closewindow
	ifequal 1, .ResetEvents
	ifequal 2, .GiveMoney
	ifequal 3, .MasterBall
	ifequal 4, .ExtraStarter
	ifequal 5, .Credits
	closetext
	end

.ResetEvents:
	writetext ResetEventsText
	yesorno
	iftrue .ResetEventsActivate
	sjump .Loop

.ResetEventsActivate:
	scall ClearEvents
	playsound SFX_FULL_HEAL
	writetext KylesComputerClearedEvents
	waitbutton
	sjump .Loop

.GiveMoney:
	writetext GiveMoneyText
	yesorno
	iftrue .GiveMoneyActivate
	sjump .Loop
.GiveMoneyActivate:
	givemoney 0, 999999
	playsound SFX_TRANSACTION
	sjump .Loop

.MasterBall:
	writetext MasterBallText
	yesorno
	iftrue .MasterBallActivate
	sjump .Loop
.MasterBallActivate:
	verbosegiveitem MASTER_BALL
	waitbutton
	sjump .Loop

.ExtraStarter:
	writetext LastStarterText
	yesorno
	iftrue .ExtraStarterActivate
	sjump .Loop

.ExtraStarterActivate:
	givepoke BURGELA, 5
	givepoke PORYGON, 5
	givepoke SPIRRIP, 5
	sjump .Loop

.Credits
	writetext CreditsText
	yesorno
	iftrue .CreditsActivate
	sjump .Loop

.CreditsActivate:
	halloffame
	end

.KylesDesktopRoomDesktopMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "RESET EVENTS@"
	db "GIVE MONEY@"
	db "MASTER BALL@"
	db "GET STARTERS@"
	db "CREDITS@"

.End:
	closetext
	end

ResetEventsText:
	text "RESET EVENTS"

	para "This option will"
	line "reset certain"
	cont "events, such as"
	cont "gift or overworld"
	cont "#MON, allowing"
	cont "you to collect"
	cont "them again."

	para "Reset events?"
	done

KylesComputerClearedEvents:
	text "Events have been"
	line "cleared."

	para "Enjoy the reruns."
	done

ClearEvents:
	clearevent EVENT_NORTHERNFOREST_MORELULL1
	clearevent EVENT_NORTHERNFOREST_MORELULL2
	clearevent EVENT_NORTHERNFOREST_SUICUNE
	clearevent EVENT_METROID_INTRO_ZOOMER_1
	clearevent EVENT_METROID_INTRO_ZOOMER_2
	clearevent EVENT_METROID_HALLWAY_ZOOMER_1
	clearevent EVENT_METROID_END_ZOOMER_1
	clearevent EVENT_METROID_END_ZOOMER_2
	clearevent EVENT_METROID_END_ZOOMER_3
	clearevent EVENT_EEVEE_RANCH_HIVES_COMBEE1
	clearevent EVENT_EEVEE_RANCH_HIVES_COMBEE2
	clearevent EVENT_EEVEE_RANCH_HIVES_COMBEE3
	clearevent EVENT_EEVEE_RANCH_HIVES_COMBEE4
	clearevent EVENT_EEVEE_RANCH_HIVES_COMBEE5
	clearevent EVENT_EEVEE_RANCH_HIVES_COMBEE6
	clearevent EVENT_ROUTE_G_METROID_CAVE_ZOOMER_1
	clearevent EVENT_ROUTE_G_METROID_CAVE_ZOOMER_2
	clearevent EVENT_FOUGHT_REGIMAGMA
	clearevent EVENT_OVERWORLD_DRAMPA
	clearevent EVENT_BEAT_CRAB_1
	clearevent EVENT_BEAT_CRAB_2
	clearevent EVENT_BEAT_CRAB_3
	clearevent EVENT_BEAT_CRAB_4
	clearevent EVENT_BEAT_CRAB_5
	clearevent EVENT_BEAT_CRAB_6
	clearevent EVENT_BEAT_CRAB_7
	clearevent EVENT_BEAT_CRAB_8
	clearevent EVENT_MISPLACED_WOODS_GEL_1
	clearevent EVENT_MISPLACED_WOODS_GEL_2
	clearevent EVENT_MISPLACED_WOODS_GEL_3
	clearevent EVENT_MISPLACED_WOODS_GEL_4
	clearevent EVENT_MISPLACED_WOODS_GEL_5
	clearevent EVENT_MISPLACED_WOODS_GEL_6
	clearevent EVENT_MISPLACED_CAVERN_2F_GEL_1
	clearevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_1
	clearevent EVENT_BEAT_MISPLACED_CAVERN_1F_KEESE_2
	clearevent EVENT_BEAT_MISPLACED_CAVERN_2F_KEESE_1
	clearevent EVENT_GOT_POPPY
	clearevent EVENT_GOT_DAISY
	clearevent EVENT_GOT_APPLIN
	clearevent EVENT_GOT_TART_APPLE
	clearevent EVENT_GOT_SWEET_APPLE
	clearevent EVENT_GOT_UMBREON
	clearevent EVENT_EARNED_ODD_EGG
	clearevent EVENT_GOT_MORPHBALL
	clearevent EVENT_BOUGHT_BELDUM
	clearevent EVENT_BEAT_MEWTHREE
	clearevent EVENT_BEAT_CHOMP
	clearevent EVENT_BEAT_DANK_CAVE_LAPRAS
	clearevent EVENT_NORTHERNFOREST_LEFT_HONEY
	clearevent EVENT_NORTHERNFOREST_RIGHT_HONEY
	clearevent EVENT_EEVEE_RANCH_HIVES_HIDDEN_HONEY1
	clearevent EVENT_EEVEE_RANCH_HIVES_HIDDEN_HONEY2
	clearevent EVENT_EEVEE_RANCH_HIVES_HIDDEN_HONEY3
	clearevent EVENT_EEVEE_RANCH_HIVES_HIDDEN_HONEY4
	clearevent EVENT_EEVEE_RANCH_HIVES_HIDDEN_BASIL
	clearevent EVENT_BEAT_FOREST_CAVE_ZACIAN
	clearevent EVENT_BEAT_THE_BETWEENS_TOWN_SNORLAX
	end

LastStarterText:
	text "This will give"
	line "you one more of"
	cont "each starter."

	para "Do you want the"
	line "starters?"
	done

GiveMoneyText:
	text "This option gives"
	line "you money."

	para "Want money?"
	done

MasterBallText:
	text "This option gives"
	line "you a MASTER BALL"

	para "Want a MASTER"
	line "BALL?"
	done

CreditsText:
	text "This option will"
	line "trigger the HALL"
	cont "OF FAME, and the"
	cont "end of the game."
	done
KylesDesktopRoomBigFuriousBScript:
	cry FURIOUSB
	waitsfx
	opentext
	writetext BigFuriousBSeenText
	waitbutton
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon FURIOUSB, 69
	startbattle
	reloadmapafterbattle
	earthquake 120
	playsound SFX_AEROBLAST
	waitsfx
	special FadeOutPalettes
	playsound SFX_HYPER_BEAM
	waitsfx
	playsound SFX_MIND_READER
	waitsfx
	disappear KYLES_DESKTOP_ROOM_BIG_FURIOUS_B
	special FadeInPalettes
	earthquake 30
	waitsfx
	opentext
	showemote EMOTE_SHOCK, PLAYER, 30
	applymovement PLAYER, KylesDesktopRoomKylePaceUp
	reloadmappart
	earthquake 30
	waitsfx
	applymovement PLAYER, KylesDesktopRoomKylePaceUp
	reloadmappart
	closetext
	playsound SFX_BOOT_PC
	waitsfx
	opentext
	writetext MustDoCreditsWarp
	waitbutton
	playsound SFX_TWO_PC_BEEPS
	waitsfx
	writetext MustDoCreditsWarp2
	waitbutton
	playsound SFX_GLASS_TING
	waitsfx
	playsound SFX_GLASS_TING
	waitsfx
	playsound SFX_GLASS_TING
	waitsfx
	playsound SFX_GLASS_TING
	waitsfx
	writetext MustDoCreditsWarp3
	waitbutton
	special HealParty
	halloffame
	end

MustDoCreditsWarp3:
	text "× 5. CREDITS"
	done

KylesDesktopRoomDesktopTextIntro:
MustDoCreditsWarp:
	text "YOU boot up the"
	line "PC."
	done

MustDoCreditsWarp2:
	text "DEVELOPER MENU"

	para "1. RESET EVENTS"

	para "2. GIVE MONEY"

	para "3. MASTER BALL"

	para "4. LAST STARTER"

	para "5. CREDITS"
	done


BigFuriousBSeenText:
	text "PUNY MINI-ME."

	para "YOU DO NOT HAVE"
	line "THE POWER."

	para "THE WIT."

	para "THE DRIVE."

	para "THE BASE STAT"
	line "TOTAL."

	para "THAT IT WILL TAKE"
	line "TO DEFEAT ME."

	para "PREPARE TO MEET"
	line "YOUR END IN A"
	cont "DRAMATICALLY"
	cont "APPROPRIATE FINAL" 
	cont "BATTLE!"
	done

KylesDesktopRoomWalkRight:
	step RIGHT
	step_end

KylesDesktopRoomWalkToPlayer:
	step UP
	step UP
	step UP
	step_end

KylesDesktopRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4,  9, THE_BETWEENS_ICE_PATH, 3
	warp_event  5,  9, THE_BETWEENS_ICE_PATH, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  4,  1, BGEVENT_READ, KylesDesktopRoomDesktopLeft
	bg_event  5,  1, BGEVENT_READ, KylesDesktopRoomDesktopRight

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  4,  6, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KylesDesktopRoomKyleScript, EVENT_BEAT_KYLE_2
	object_event  4,  2, SPRITE_BIG_FURIOUSB, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KylesDesktopRoomBigFuriousBScript, EVENT_BEAT_BIG_FURIOUS_B
