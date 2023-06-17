DEF GRATEGUYCASINO_MEGA_GENGAR_COINS    EQU 999
DEF GRATEGUYCASINO_MEGA_MAWILE_COINS    EQU 999
DEF GRATEGUYCASINO_FURIOUSB_COINS       EQU 9999
DEF GRATEGUYCASINO_RARE_CANDY_COINS     EQU 200
DEF GRATEGUYCASINO_NUGGET_COINS     	EQU 500
DEF GRATEGUYCASINO_MASTER_BALL_COINS	EQU 750
DEF GRATEGUYCASINO_PBR_PRICE        EQU 200
DEF GRATEGUYCASINO_GREEN_TEA_PRICE  EQU 300
DEF GRATEGUYCASINO_MONSTER_PRICE    EQU 350

	object_const_def
;	const MAPNAME_OBJECTNAME
	const GRATE_GUY_CASINO_GREETER
	const GRATE_GUY_CASINO_MON_VENDOR_1
	const GRATE_GUY_CASINO_GRATE_GUY
	const GRATE_GUY_CASINO_ITEM_VENDOR_1
	const GRATE_GUY_CASINO_BLACK_JACK_1
	const GRATE_GUY_CASINO_BLACK_JACK_2
	const GRATE_GUY_CASINO_BLACK_JACK_3
	const GRATE_GUY_CASINO_BLACK_JACK_4
	const GRATE_GUY_CASINO_COOL_TRAINER_F
	const GRATE_GUY_CASINO_COOL_TRAINER_M
	const GRATE_GUY_CASINO_PHARMACIST
	const GRATE_GUY_CASINO_FALKNER
	const GRATE_GUY_CASINO_MOBLIN
	const GRATE_GUY_CASINO_FISHER
	const GRATE_GUY_CASINO_MARIN
	const GRATE_GUY_CASINO_FAIRY
	const GRATE_GUY_CASINO_MORTY

GrateGuyCasino_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script GrateGuyCasinoFirstTime, SCENE_GRATE_GUY_CASINO_FIRST_TIME
	scene_script GrateGuyCasinoNormal, SCENE_GRATE_GUY_CASINO_NORMAL

	def_callbacks
;	callback type, script


GrateGuyCasinoNormal:
	end

GrateGuyCasinoFirstTime:
	opentext
	turnobject PLAYER, LEFT
	writetext GrateGuyCasinoGreeterFirstTime
	waitbutton
	verbosegiveitem COIN_CASE
	waitbutton
	writetext GrateGuyCasinoEnjoy
	waitbutton
	setscene SCENE_GRATE_GUY_CASINO_NORMAL
	closetext
	end

GrateGuyCasinoEnjoy:
	text "Please enjoy your"
	line "visit to GRATE"
	cont "GUY'S Casino."
	done

GrateGuyCasinoGreeterFirstTime:
	text "Ah, hello sir,"
	line "welcome to GRATE"
	cont "GUY CASINO."

	para "I see you have a"
	line "BRIGHT CARD."

	para "Here, you will"
	line "need this to"
	cont "enjoy the varied"
	cont "entertainments"
	cont "within."
	done

GrateGuyCasinoClerkScript:
	jumpstd GameCornerCoinVendorScript

GrateGuyCasinoSlots:
	refreshscreen
	setval TRUE
	special SlotMachine
	closetext
	end

GrateGuyCasinoCardFlip:
	refreshscreen
	special CardFlip
	closetext
	end

GrateGuyCasinoPrizeItemVendorScript:
	faceplayer
	opentext
	writetext GrateGuyCasinoPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GrateGuyCasinoPrizeVendor_NoCoinCaseScript
.loop
	writetext GrateGuyCasinoPrizeVendorWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .RareCandy
	ifequal 2, .Nugget
	ifequal 3, .MasterBall
	sjump GrateGuyCasinoPrizeVendor_CancelPurchaseScript

.RareCandy:
	checkcoins GRATEGUYCASINO_RARE_CANDY_COINS
	ifequal HAVE_LESS, GrateGuyCasinoPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, RARE_CANDY
	scall GrateGuyCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse GrateGuyCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GrateGuyCasinoPrizeVendorHereYouGoText
	waitbutton
	;setval MEGA_GENGAR
	;special GameCornerPrizeMonCheckDex
	giveitem RARE_CANDY
	takecoins GRATEGUYCASINO_RARE_CANDY_COINS
	sjump .loop

.Nugget:
	checkcoins GRATEGUYCASINO_NUGGET_COINS
	ifequal HAVE_LESS, GrateGuyCasinoPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, NUGGET
	scall GrateGuyCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse GrateGuyCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GrateGuyCasinoPrizeVendorHereYouGoText
	waitbutton
	;setval MEGA_GENGAR
	;special GameCornerPrizeMonCheckDex
	giveitem NUGGET
	takecoins GRATEGUYCASINO_NUGGET_COINS
	sjump .loop

.MasterBall:
	checkcoins GRATEGUYCASINO_MASTER_BALL_COINS
	ifequal HAVE_LESS, GrateGuyCasinoPrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, MASTER_BALL
	scall GrateGuyCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse GrateGuyCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GrateGuyCasinoPrizeVendorHereYouGoText
	waitbutton
	;setval MEGA_GENGAR
	;special GameCornerPrizeMonCheckDex
	giveitem MASTER_BALL
	takecoins GRATEGUYCASINO_MASTER_BALL_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "RARE CANDY  200@"
	db "NUGGET      500@"
	db "MASTER BALL 750@"
	db "CANCEL@"

GrateGuyCasinoPrizeMonVendorScript:
	faceplayer
	opentext
	writetext GrateGuyCasinoPrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GrateGuyCasinoPrizeVendor_NoCoinCaseScript
.loop
	writetext GrateGuyCasinoPrizeVendorWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .MegaGengar
	ifequal 2, .MegaMawile
	ifequal 3, .FuriousB
	sjump GrateGuyCasinoPrizeVendor_CancelPurchaseScript

.MegaGengar:
	checkcoins GRATEGUYCASINO_MEGA_GENGAR_COINS
	ifequal HAVE_LESS, GrateGuyCasinoPrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GrateGuyCasinoPrizeMonVendor_NoRoomForPrizeScript
	getmonname STRING_BUFFER_3, MEGA_GENGAR
	scall GrateGuyCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse GrateGuyCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GrateGuyCasinoPrizeVendorHereYouGoText
	waitbutton
	;setval MEGA_GENGAR
	;special GameCornerPrizeMonCheckDex
	givepoke MEGA_GENGAR, 5
	takecoins GRATEGUYCASINO_MEGA_GENGAR_COINS
	sjump .loop

.MegaMawile:
	checkcoins GRATEGUYCASINO_MEGA_MAWILE_COINS
	ifequal HAVE_LESS, GrateGuyCasinoPrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GrateGuyCasinoPrizeMonVendor_NoRoomForPrizeScript
	getmonname STRING_BUFFER_3, MEGA_MAWILE
	scall GrateGuyCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse GrateGuyCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GrateGuyCasinoPrizeVendorHereYouGoText
	waitbutton
	;setval MEGA_MAWILE
	;special GameCornerPrizeMonCheckDex
	givepoke MEGA_MAWILE, 15
	takecoins GRATEGUYCASINO_MEGA_MAWILE_COINS
	sjump .loop

.FuriousB:
	checkcoins GRATEGUYCASINO_FURIOUSB_COINS
	ifequal HAVE_LESS, GrateGuyCasinoPrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GrateGuyCasinoPrizeMonVendor_NoRoomForPrizeScript
	getmonname STRING_BUFFER_3, FURIOUSB
	scall GrateGuyCasinoPrizeVendor_ConfirmPurchaseScript
	iffalse GrateGuyCasinoPrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GrateGuyCasinoPrizeVendorHereYouGoText
	waitbutton
	;setval FURIOUSB
	;special GameCornerPrizeMonCheckDex
	givepoke FURIOUSB, 100
	takecoins GRATEGUYCASINO_FURIOUSB_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "MEGA GENGAR 999@"
	db "MEGA MAWILE 999@"
	db "FURIOUSB   9999@"
	db "CANCEL@"

GrateGuyCasinoPrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done

GrateGuyCasinoPrizeVendorWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

GrateGuyCasinoPrizeVendorConfirmPrizeText:
	text_ram wStringBuffer3
	text "."
	line "Is that right?"
	done

GrateGuyCasinoPrizeVendorHereYouGoText:
	text "Here you go!"
	done

GrateGuyCasinoPrizeVendorNeedMoreCoinsText:
	text "Sorry! You need"
	line "more coins."
	done

GrateGuyCasinoPrizeVendorNoMoreRoomText:
	text "Sorry. You can't"
	line "carry any more."
	done

GrateGuyCasinoPrizeVendorQuitText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

GrateGuyCasinoPrizeVendorNoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

GrateGuyCasinoGrateGuy:
	faceplayer
	opentext
	writetext GrateGuyCasinoGrateGuyIntro
	waitbutton
	writetext GrateGuyCasinoGrateGuyWannaPlay
	yesorno
	iffalse .Refused
	closetext
	readvar VAR_XCOORD
	ifequal 12, .CheckY
	ifless  12, .MoveFromLeft
.MoveFromRight:
	applymovement PLAYER, MoveFromRightMovement
	opentext
	sjump .LookTheOtherWay
.MoveFromLeft:
	applymovement PLAYER, MoveFromLeftMovement
	opentext
	sjump .LookTheOtherWay
.CheckY:
	readvar VAR_YCOORD
	opentext
	ifequal 4, .LookTheOtherWay
.MoveFromBehind:
	applymovement PLAYER, MoveFromRightMovement
	opentext
	sjump .LookTheOtherWay
.LookTheOtherWay
	turnobject GRATE_GUY_CASINO_GRATE_GUY, DOWN
	turnobject PLAYER, UP
	writetext GrateGuyCasinoReady
	promptbutton
	loadmenu LookTheOtherWay_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Left
	ifequal 2, .Right
	closetext
	end
.Left:
	turnobject PLAYER, LEFT
	random 2
	ifequal 0, .WinLeft
	sjump .LoseLeft
.Right:
	turnobject PLAYER, RIGHT
	random 2
	ifequal 0, .WinRight
	sjump .LoseRight
.WinLeft:
	turnobject GRATE_GUY_CASINO_GRATE_GUY, RIGHT
	sjump .WinLook
.WinRight:
	turnobject GRATE_GUY_CASINO_GRATE_GUY, LEFT
	sjump .WinLook
.LoseLeft:
	turnobject GRATE_GUY_CASINO_GRATE_GUY, LEFT
	sjump .LoseLook
.LoseRight:
	turnobject GRATE_GUY_CASINO_GRATE_GUY, RIGHT
	sjump .LoseLook
.WinLook:
	playsound SFX_FANFARE
	waitsfx
	writetext WinLookOtherWay
	waitbutton
	turnobject GRATE_GUY_CASINO_GRATE_GUY, DOWN
	turnobject PLAYER, UP
	writetext LooktheOtherWayHaveThis
	waitbutton
	scall GiveLookTheOtherWayPrizes
	writetext PlayLookOtherWayAgain
	yesorno
	iftrue .LookTheOtherWay
	closetext
	end
.LoseLook:
	playsound SFX_WRONG
	waitsfx
	writetext GrateGuyWins
	waitbutton
	writetext PlayLookOtherWayAgain
	yesorno
	iftrue .LookTheOtherWay
	closetext
	end
.Refused:
	writetext GrateGuyRefuse
	waitbutton
	closetext
	end

GrateGuyRefuse:
	text "Well, come back"
	line "when you do!"
	done

GiveLookTheOtherWayPrizes:
	readmem wGrateGuyWins
	addval 1
	ifgreater 99, .GrandPrize
	random 100
	ifequal  0, .MasterBall
	ifless  40, .TenCoins
	ifless  60, .TwentyCoins
	ifless  65, .FiftyCoins
	ifless  70, .HundoCoins
	ifless  75, .Healing
	ifless  80, .PP
	ifless  85, .Revives
	ifless  90, .Held
	ifless  95, .Evolution
	ifless  96, .FiveHundoCoins
	ifless  97, .Nugget
	ifless  98, .Heart
	ifless  99, .Rupee
	sjump .MasterBall
.Evolution:
	random 16
	ifequal  0, .FireStone
	ifequal  1, .ThunderStone
	ifequal  2, .WaterStone
	ifequal  3, .LeafStone
	ifequal  4, .MoonStone
	ifequal  5, .SunStone
	ifequal  6, .DuskStone
	ifequal  7, .Estradiol
	ifequal  8, .SunStone
	ifequal  9, .Testosterone
	ifequal 10, .LinkCable
	ifequal 11, .IceStone
	ifequal 12, .Upgrade
	ifequal 13, .TartApple
	ifequal 14, .SweetApple
	ifequal 15, .LoveStone
	verbosegiveitem MOON_STONE
	waitbutton
	end
.FireStone:
	verbosegiveitem FIRE_STONE
	waitbutton
	end
.ThunderStone:
	verbosegiveitem THUNDERSTONE
	waitbutton
	end
.WaterStone:
	verbosegiveitem WATER_STONE
	waitbutton
	end
.LeafStone:
	verbosegiveitem LEAF_STONE
	waitbutton
	end
.MoonStone:
	verbosegiveitem MOON_STONE
	waitbutton
	end
.SunStone:
	verbosegiveitem SUN_STONE
	waitbutton
	end
.DuskStone:
	verbosegiveitem DUSK_STONE
	waitbutton
	end
.IceStone:
	verbosegiveitem ICE_STONE
	waitbutton
	end
.LoveStone:
	verbosegiveitem LOVE_STONE
	waitbutton
	end
.Estradiol:
	verbosegiveitem ESTRADIOL
	waitbutton
	end
.Testosterone:
	verbosegiveitem TESTOSTERONE
	waitbutton
	end
.LinkCable:
	verbosegiveitem LINK_CABLE
	waitbutton
	end
.Upgrade:
	verbosegiveitem UP_GRADE
	waitbutton
	end
.TartApple:
	verbosegiveitem TART_APPLE
	waitbutton
	end
.SweetApple:
	verbosegiveitem SWEET_APPLE
	waitbutton
	end
.GrandPrize:
	writetext YouWinGrandPrize
	waitbutton
	verbosegiveitem MASTER_BALL, 50
	waitbutton
	verbosegiveitem RARE_CANDY, 50
	waitbutton
	verbosegiveitem PP_UP, 50
	waitbutton
	verbosegiveitem NUGGET, 50
	waitbutton
	verbosegiveitem STARDUST, 50
	waitbutton
	verbosegiveitem STAR_PIECE, 50
	waitbutton
	givepoke FURIOUSB, 100
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	writetext GiveMaxCoinsText
	givecoins 9999
	special DisplayCoinCaseBalance
	waitbutton
	end
.FiftyCoins:
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	writetext GiveFiftyCoinsText
	givecoins 50
	special DisplayCoinCaseBalance
	waitbutton
	end
.TenCoins:
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	writetext GiveTenCoinsText
	givecoins 10
	special DisplayCoinCaseBalance
	waitbutton
	end
.TwentyCoins:
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	writetext GiveTwentyCoinsText
	givecoins 20
	special DisplayCoinCaseBalance
	waitbutton
	end
.HundoCoins:
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	writetext GiveHundoCoinsText
	givecoins 100
	special DisplayCoinCaseBalance
	waitbutton
	end
.FiveHundoCoins:
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkcoins MAX_COINS - 1
	ifequal HAVE_MORE, .FullCoinCase
	writetext GiveFiveHundoCoinsText
	givecoins 500
	special DisplayCoinCaseBalance
	waitbutton
	end
.MasterBall:
	verbosegiveitem MASTER_BALL
	waitbutton
	end
.Healing:
	readmem GrateGuyWins
	ifless  3, .Potion
	ifless  6, .SuperPotion
	ifless 10, .HyperPotion
	ifless 15, .MaxPotion
	verbosegiveitem FULL_RESTORE
	waitbutton
	end
.Potion:
	verbosegiveitem POTION
	waitbutton
	end
.SuperPotion:
	verbosegiveitem SUPER_POTION
	waitbutton
	end
.HyperPotion:
	verbosegiveitem HYPER_POTION
	waitbutton
	end
.MaxPotion
	verbosegiveitem MAX_POTION
	waitbutton
	end
.PP:
	random 1
	ifequal 0, .Elixers
.Ethers:
	readmem GrateGuyWins
	ifless 15, .Ether
	verbosegiveitem MAX_ETHER
	waitbutton
	end
.Ether:
	verbosegiveitem ETHER
	waitbutton
	end
.Elixers:
	readmem GrateGuyWins
	ifless 20, .Elixer
	verbosegiveitem MAX_ELIXER
	waitbutton
	end
.Elixer:
	verbosegiveitem ELIXER
	waitbutton
	end
.Revives:
	readmem GrateGuyWins
	ifless 38, .Revive
	verbosegiveitem MAX_REVIVE
	waitbutton
	end
.Revive:
	verbosegiveitem REVIVE
	waitbutton
	end
.Held:
	random 12
	ifequal 0, .AmuletCoin
	ifequal 1, .BerserkGene
	ifequal 2, .BrightPowder
	ifequal 3, .CleanseTag
	ifequal 4, .Everstone
	ifequal 5, .XPShare
	ifequal 6, .Leftovers
	ifequal 7, .LuckyEgg
	ifequal 8, .MetalPowder
	ifequal 9, .QuickClaw
	ifequal 10, .ScopeLens
	verbosegiveitem FOCUS_BAND
	waitbutton
	end
.AmuletCoin:
	verbosegiveitem AMULET_COIN
	waitbutton
	end
.BerserkGene:
	verbosegiveitem BERSERK_GENE
	waitbutton
	end
.BrightPowder:
	verbosegiveitem BRIGHTPOWDER
	waitbutton
	end
.CleanseTag:
	verbosegiveitem CLEANSE_TAG
	waitbutton
	end
.Everstone:
	verbosegiveitem EVERSTONE
	waitbutton
	end
.XPShare:
	verbosegiveitem EXP_SHARE
	waitbutton
	end
.Leftovers:
	verbosegiveitem LEFTOVERS
	waitbutton
	end
.LuckyEgg:
	verbosegiveitem LUCKY_EGG
	waitbutton
	end
.MetalPowder:
	verbosegiveitem METAL_POWDER
	waitbutton
	end
.QuickClaw:
	verbosegiveitem QUICK_CLAW
	waitbutton
	end
.ScopeLens:
	verbosegiveitem SCOPE_LENS
	waitbutton
	end
.Nugget:
	verbosegiveitem NUGGET
	waitbutton
	end
.Heart:
	verbosegiveitem HEART
	waitbutton
	end
.Rupee:
	verbosegiveitem RUPEE
	waitbutton
	end

.GiveCoins:
	jumpstd ReceiveItemScript
	end

.coinname
	db "COIN@"

.NoCoinCase:
	writetext NoCoinCaseText
	waitbutton
	end

.FullCoinCase:
	writetext GrateGuyFullCoinCaseText
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end


LookTheOtherWay_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 6, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 2 ; items
	db "Left@"
	db "Right@"

MoveFromBehindMovement:
	step RIGHT
	step DOWN
	step DOWN
	step LEFT
	step_end

MoveFromLeftMovement:
	step DOWN
	step RIGHT
	step_end

MoveFromRightMovement:
	step DOWN
	step LEFT
	step_end

NoCoinCaseText:
	text "You don't have"
	line "your COIN CASE."

	para "Get it out of"
	line "the PC, you"
	cont "joker."
	done

GrateGuyFullCoinCaseText:
	text "Looks like your"
	line "COIN CASE is full"

	para "Come back after"
	line "spending some"
	cont "coins!"
	done

BlackjackIntro:
	text "Welcome to the"
	line "Blackjack table."

	para "Play a round"
	line "with me sir?"
	done

GrateGuyCasinoGrateGuyIntro:
	text "Hey, <PLAY_G>,"
	line "welcome to my"
	cont "casino!"
	done

GrateGuyCasinoGrateGuyWannaPlay:
	text "Want to play"
	line "'Look the other"
	cont "way' with me?"
	done

GrateGuyCasinoReady:
	text "Ready... Look"
	line "the other..."
	done

GrateGuyCasinoWay:
	text "Way!"
	done

GrateGuyWins:
	text "Gotcha!"
	line "I win."
	done

WinLookOtherWay:
	text "Ooh, you didn't"
	line "get caught!"

	para "I lost this"
	line "round."
	done

LooktheOtherWayHaveThis:
	text "Here, have this."
	done

PlayLookOtherWayAgain:
	text "Would you like to"
	line "play again?"
	done

YouWinGrandPrize:
	text "You've beaten me"
	line "100 times!"

	para "You win the grand"
	line "prize!"
	done

GrateGuyCasinoPrizeVendor_ConfirmPurchaseScript:
	writetext GrateGuyCasinoPrizeVendorConfirmPrizeText
	yesorno
	end

;GrateGuyCasinoTMVendor_FinishScript:
;	waitsfx
;	playsound SFX_TRANSACTION
;	writetext GrateGuyCasinoPrizeVendorHereYouGoText
;	waitbutton
;	sjump GrateGuyCasinoTMVendor_LoopScript

GrateGuyCasinoPrizeVendor_NotEnoughCoinsScript:
	writetext GrateGuyCasinoPrizeVendorNeedMoreCoinsText
	waitbutton
	closetext
	end

GrateGuyCasinoPrizeMonVendor_NoRoomForPrizeScript:
	writetext GrateGuyCasinoPrizeVendorNoMoreRoomText
	waitbutton
	closetext
	end

GrateGuyCasinoPrizeVendor_CancelPurchaseScript:
	writetext GrateGuyCasinoPrizeVendorQuitText
	waitbutton
	closetext
	end

GrateGuyCasinoPrizeVendor_NoCoinCaseScript:
	writetext GrateGuyCasinoPrizeVendorNoCoinCaseText
	waitbutton
	closetext
	end

GiveFiftyCoinsText:
	text "YOU GOT 50 COINS"
	done

GiveTenCoinsText:
	text "YOU GOT 10 COINS"
	done

GiveTwentyCoinsText:
	text "YOU GOT 20 COINS"
	done

GiveHundoCoinsText:
	text "YOU GOT 100 COINS"
	done

GiveFiveHundoCoinsText:
	text "YOU GOT 500 COINS"
	done

GiveMaxCoinsText:
	text "YOU GOT 9999 COINS"
	done

GrateGuyCasinoGreeter:
	jumptextfaceplayer GrateGuyCasinoGreeterText
	end

GrateGuyCasinoGreeterText:
	text "Hello sir, I hope"
	line "you enjoy your"
	cont "visit to the"
	cont "GRATE GUY CASINO."
	done


GrateGuyCasinoCoinVendorScript:
	jumpstd GameCornerCoinVendorScript

GrateGuyCasinoBlackJack1Script:
GrateGuyCasinoBlackJack2Script:
GrateGuyCasinoBlackJack3Script:
GrateGuyCasinoBlackJack4Script:
	faceplayer
	opentext
	writetext GrateGuyCasinoBlackJackNotAvailableText
	waitbutton
	closetext
	turnobject GRATE_GUY_CASINO_BLACK_JACK_1, DOWN
	turnobject GRATE_GUY_CASINO_BLACK_JACK_2, DOWN
	turnobject GRATE_GUY_CASINO_BLACK_JACK_3, DOWN
	turnobject GRATE_GUY_CASINO_BLACK_JACK_4, DOWN
	end

GrateGuyCasinoBlackJackNotAvailableText:
	text "Hello, welcome to"
	line "the BLACKJACK"
	cont "TABLE."

	para "I'm sorry, but"
	line "PLAYERs cannot"
	cont "play due to dev"
	cont "time constraints."

	para "Perhaps check in"
	line "during the"
	cont "CHRISTMAS DLC."
	done

GrateGuyCasinoCoolTrainerF:
	jumptextfaceplayer GrateGuyCasinoCoolTrainerFText

GrateGuyCasinoCoolTrainerFText:
	text "I'm here with my"
	line "boyfriend!"

	para "He's richer than"
	line "me, so I'm tak-"
	cont "-ing him for all"
	cont "he's worth!"
	done


GrateGuyCasinoCoolTrainerM:
	jumptextfaceplayer GrateGuyCasinoCoolTrainerMText

GrateGuyCasinoCoolTrainerMText:
	text "I'm here with my"
	line "girlfriend."

	para "I think she's"
	line "cheating."
	done

GrateGuyCasinoPharmacist:
	jumptextfaceplayer GrateGuyCasinoPharmacistText

GrateGuyCasinoPharmacistText:
	text "Hit me!"

	para "Like as in, give"
	line "me a new card."

	para "I am not giving"
	line "you permission"
	cont "to physically"
	cont "strike me."
	done

GrateGuyCasinoFalkner:
	jumptextfaceplayer GrateGuyCasinoFalknerText

GrateGuyCasinoFalknerText:
	text "I don't really"
	line "get this game."

	para "I'm just pressing"
	line "things at random."

	para "But since I'm"
	line "gambling, I guess"
	cont "that's fine."
	done

GrateGuyCasinoMoblin:
	jumptextfaceplayer GrateGuyCasinoMoblinText

GrateGuyCasinoMoblinText:
	text "I think these"
	line "slot machines are"
	cont "rigged..."

	para "IN MY FAVORRRRRR!"

	para "I'm so fucking"
	line "rich!"
	done


GrateGuyCasinoFisher:
	jumptextfaceplayer GrateGuyCasinoFisherText

GrateGuyCasinoFisherText:
	text "Did you know that"
	line "you can win at"
	cont "slots by pressing"
	cont "the A button at"
	cont "the right time?"

	para "That's what I've"
	line "heard at least."
	cont "and the system"
	cont "works for me."
	done

GrateGuyCasinoMarin:
	jumptextfaceplayer GrateGuyCasinoMarinText

GrateGuyCasinoMarinText:
	text "They don't have"
	line "gambling in my"
	cont "game."
	done


GrateGuyCasinoFairy:
	jumptextfaceplayer GrateGuyCasinoFairyText

GrateGuyCasinoFairyText:
	text "Did you know that"
	line "the AUSTRALIAN"
	cont "version of GOLD &"
	cont "SILVER has"
	cont "completely diff-"
	cont "-erent dialogue"
	cont "in the GAME"
	cont "CORNER?"

	para "It's cause they"
	line "apparently didn't"
	cont "like the idea of"
	cont "promoting gamb-"
	cont "-ling to kids."

	para "Thankfully this"
	line "ROM Hack is made"
	cont "for adults."

	para "In America."
	done

GrateGuyCasinoMorty:
	jumptextfaceplayer GrateGuyCasinoMortyText

GrateGuyCasinoMortyText:
	text "I prefer VOLTORB"
	line "FLIP from HEART"
	cont "GOLD and SOUL"
	cont "SILVER myself."
	done

GrateGuyVendingMachine:
	opentext
	writetext GrateGuyVendingText
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
	checkmoney YOUR_MONEY, GRATEGUYCASINO_PBR_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GRATEGUYCASINO_PBR_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.GreenTea:
	checkmoney YOUR_MONEY, GRATEGUYCASINO_GREEN_TEA_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GRATEGUYCASINO_GREEN_TEA_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Monster:
	checkmoney YOUR_MONEY, GRATEGUYCASINO_MONSTER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GRATEGUYCASINO_MONSTER_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext GrateGuyClangText
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	writetext GrateGuyVendingNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	writetext GrateGuyVendingNoSpaceText
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
	db "P.B.R.       ¥{d:GRATEGUYCASINO_PBR_PRICE}@"
	db "GREEN TEA    ¥{d:GRATEGUYCASINO_GREEN_TEA_PRICE}@"
	db "MONSTER      ¥{d:GRATEGUYCASINO_MONSTER_PRICE}@"
	db "CANCEL@"


GrateGuyVendingText:
	text "A vending machine!"
	line "Here's the menu."
	done

GrateGuyClangText:
	text "Clang!"

	para "@"
	text_ram wStringBuffer3
	text_start
	line "popped out."
	done

GrateGuyVendingNoMoneyText:
	text "Oops, not enough"
	line "money…"
	done

GrateGuyVendingNoSpaceText:
	text "There's no more"
	line "room for stuff…"
	done

GrateGuyPhoneScript:
	jumptextfaceplayer GrateGuyPhoneText

GrateGuyPhoneText:
	text "KYLE: Oh hey!"

	para "I'm borrowing"
	line "the OLD MAN's"
	cont "phone again."

	para "Hope you're"
	line "enjoying GRATE"
	cont "GUY'S CASINO."

	para "I programmed the"
	line "whole thing the"
	cont "day before."

	para "I was going to"
	line "add BLACKJACK"
	cont "too so it would"
	cont "have all of the"
	cont "games it has in"
	cont "SMRPG, but I"
	cont "figured it'd be"
	cont "better to get"
	cont "other stuff done"
	cont "instead."

	para "Maybe for the"
	line "CHRISTMAS DLC."
	done

GrateGuyCasino_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 12, 15, DOG_LADY_HOUSE, 4
	warp_event 13, 15, DOG_LADY_HOUSE, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 21, 12, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 21, 13, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 20, 13, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 20, 12, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 20, 11, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 20, 10, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 20,  9, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 20,  8, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 21, 11, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 21, 10, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 21,  9, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event 21,  8, BGEVENT_READ, GrateGuyCasinoCardFlip
	bg_event  5, 13, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  5, 12, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  5, 11, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  5, 10, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  5,  9, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  5,  8, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  4, 13, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  4, 12, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  4, 11, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  4, 10, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  4,  9, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event  4,  8, BGEVENT_READ, GrateGuyCasinoSlots
	bg_event 15,  1, BGEVENT_READ, GrateGuyVendingMachine
	bg_event 14,  1, BGEVENT_READ, GrateGuyVendingMachine
	bg_event  9,  1, BGEVENT_READ, GrateGuyVendingMachine
	bg_event  8,  1, BGEVENT_READ, GrateGuyVendingMachine
	bg_event 17,  1, BGEVENT_READ, GrateGuyPhoneScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 11, 15, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoGreeter,0
	object_event 19,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoPrizeMonVendorScript, 0
	object_event 12,  4, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoGrateGuy, 0
	object_event  4,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoCoinVendorScript, 0
	object_event 21,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoPrizeItemVendorScript, 0
	object_event 10, 10, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoBlackJack1Script, 0
	object_event 14,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoBlackJack2Script, 0
	object_event 15, 11, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoBlackJack3Script, 0
	object_event 11,  7, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoBlackJack4Script, 0
	object_event 13,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoCoolTrainerF, 0
	object_event 10,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoCoolTrainerM, 0
	object_event 14, 13, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoPharmacist, 0
	object_event 19, 12, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoFalkner, 0
	object_event  6, 13, SPRITE_MOBLIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoMoblin, 0
	object_event  3, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoFisher, 0
	object_event  9,  8, SPRITE_MARIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoMarin, 0
	object_event 15, 10, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoFairy, 0
	object_event 22,  9, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GrateGuyCasinoMorty, 0
