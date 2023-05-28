DEF MAYBE_VILLAGE_BRIGHT_CARD_PRICE EQU 999999
DEF MAYBE_VILLAGE_ULTRA_BALL_PRICE EQU 1200
DEF MAYBE_VILLAGE_HEART_PRICE EQU 600
DEF MAYBE_VILLAGE_LUCKY_EGG_PRICE EQU 2500
DEF MAYBE_VILLAGE_TM_PRICE EQU 4800

	object_const_def
;	const MAPNAME_OBJECTNAME
	const MAYBE_VILLAGE_MART_SHOPKEEPER
	const MAYBE_VILLAGE_MART_BRIGHT_CARD
	const MAYBE_VILLAGE_MART_ULTRA_BALL
	const MAYBE_VILLAGE_MART_HEART
	const MAYBE_VILLAGE_MART_LUCKY_EGG
	const MAYBE_VILLAGE_MART_TM
	const MAYBE_VILLAGE_MART_ANGRY_SHOPKEEPER


MaybeVillageMart_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script MaybeVillageMartNotStolen, SCENE_MAYBE_VILLAGE_MART_NOT_STOLEN
	scene_script MaybeVillageMartJustStole, SCENE_MAYBE_VILLAGE_MART_JUST_STOLE
	scene_script MaybeVillageMartHaveStolen, SCENE_MAYBE_VILLAGE_MART_HAVE_STOLEN
	scene_script MaybeVillageMartBeatShopkeeper, SCENE_MAYBE_VILLAGE_MART_BEAT_SHOPKEEPER

	def_callbacks
;	callback type, script

MaybeVillageMartNotStolen:
MaybeVillageMartHaveStolen:
MaybeVillageMartBeatShopkeeper:
	end

MaybeVillageMartJustStole:
	appear MAYBE_VILLAGE_MART_ANGRY_SHOPKEEPER
	clearevent EVENT_HAS_STOLEN
	setevent EVENT_HAVE_NOT_STOLEN
	setscene SCENE_MAYBE_VILLAGE_MART_HAVE_STOLEN
	end

AngryShopkeeper:
	trainer SHOPKEEPER_T, SHOPKEEPER_1, EVENT_BEAT_SHOPKEEPER, AngryShopkeeperSeenText, AngryShopkeeperBeatenText, 0, .Script
.Script:
	opentext
	writetext AngryShopkeeperAfterText
	waitbutton
	closetext
	disappear MAYBE_VILLAGE_MART_ANGRY_SHOPKEEPER
	pause 60
	opentext
	verbosegiveitem MASTER_BALL, 99
	waitbutton
	closetext
	setscene SCENE_MAYBE_VILLAGE_MART_BEAT_SHOPKEEPER
	end

AngryShopkeeperSeenText:
	text "I wasn't kidding"
	line "when I said pay!"

	para "Now, you'll pay"
	line "the ultimate"
	cont "price!!"
	done

AngryShopkeeperBeatenText:
	text "It looks like I"
	line "was the one to"
	cont "pay the ultimate"
	cont "price."
	done

AngryShopkeeperAfterText:
	text "You have defeated"
	line "me in capitalism."

	para "The store is now"
	line "yours..."
	done

LAShopkeeper:
	opentext
	checkevent EVENT_FOLLOWED_BY_CARD
	iftrue .BrightCard
	checkevent EVENT_FOLLOWED_BY_ULTRA_BALL
	iftrue .UltraBall
	checkevent EVENT_FOLLOWED_BY_HEART
	iftrue .Heart
	checkevent EVENT_FOLLOWED_BY_LUCKY_EGG
	iftrue .LuckyEgg
	checkevent EVENT_FOLLOWED_BY_TM
	iftrue .TM
	writetext LAShopkeeperInstructionsText
.BrightCard:
	writetext LAShopkeeperBrightCard
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAYBE_VILLAGE_BRIGHT_CARD_PRICE
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAYBE_VILLAGE_BRIGHT_CARD_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	verbosegiveitem BRITE_CARD
	waitbutton
	writetext LAShopkeeperAfterPurchase
	waitbutton
	disappear MAYBE_VILLAGE_MART_BRIGHT_CARD
	closetext
	stopfollow
	refreshscreen
	clearevent EVENT_FOLLOWED_BY_CARD
	end
.UltraBall:
	writetext LAShopkeeperUltraBall
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAYBE_VILLAGE_ULTRA_BALL_PRICE
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAYBE_VILLAGE_ULTRA_BALL_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	verbosegiveitem ULTRA_BALL
	waitbutton
	writetext LAShopkeeperAfterPurchase
	waitbutton
	disappear MAYBE_VILLAGE_MART_ULTRA_BALL
	closetext
	appear MAYBE_VILLAGE_MART_ULTRA_BALL
	refreshscreen
	clearevent EVENT_FOLLOWED_BY_ULTRA_BALL
	end
.Heart:
	writetext LAShopkeeperHeart
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAYBE_VILLAGE_HEART_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAYBE_VILLAGE_HEART_PRICE
	verbosegiveitem HEART
	waitbutton
	writetext LAShopkeeperAfterPurchase
	waitbutton
	disappear MAYBE_VILLAGE_MART_HEART
	closetext
	refreshscreen
	clearevent EVENT_FOLLOWED_BY_ULTRA_BALL
	end
.LuckyEgg:
	writetext LAShopkeeperLuckyEgg
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAYBE_VILLAGE_LUCKY_EGG_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAYBE_VILLAGE_LUCKY_EGG_PRICE
	verbosegiveitem LUCKY_EGG
	waitbutton
	writetext LAShopkeeperAfterPurchase
	waitbutton
	disappear MAYBE_VILLAGE_MART_LUCKY_EGG
	closetext
	refreshscreen
	clearevent EVENT_FOLLOWED_BY_LUCKY_EGG
	end
.TM:
	checkevent EVENT_BOUGHT_PSYCHIC
	iffalse .Psychic
	checkevent EVENT_BOUGHT_SIGNAL_BEAM
	iffalse .SignalBeam
	checkevent EVENT_BOUGHT_OMINOUS_WIND
	iffalse .OminousWind
	checkevent EVENT_BOUGHT_PLAY_ROUGH
	iffalse .PlayRough
	writetext LAShopkeeperNoMoreTMs
	closetext
	end
.Psychic:
	writetext LAShopkeeperPsychic
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAYBE_VILLAGE_TM_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAYBE_VILLAGE_TM_PRICE
	verbosegiveitem TM_PSYCHIC_M
	sjump .PostPurchase
.SignalBeam:
	writetext LAShopkeeperSignalBeam
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAYBE_VILLAGE_TM_PRICE
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAYBE_VILLAGE_TM_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	verbosegiveitem TM_SIGNAL_BEAM
	sjump .PostPurchase
.OminousWind:
	writetext LAShopkeeperOminousWind
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAYBE_VILLAGE_TM_PRICE
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAYBE_VILLAGE_TM_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	verbosegiveitem TM_OMINOUS_WIND
	sjump .PostPurchase
.PlayRough:
	writetext LAShopkeeperPlayRough
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MAYBE_VILLAGE_TM_PRICE
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MAYBE_VILLAGE_TM_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	verbosegiveitem TM_PLAY_ROUGH
	sjump .PostPurchase
.PostPurchase:
	waitbutton
	writetext LAShopkeeperAfterPurchase
	waitbutton
	disappear MAYBE_VILLAGE_MART_TM
	closetext
	refreshscreen
	clearevent EVENT_FOLLOWED_BY_TM
	end
.Refused:
	writetext LAShopkeeperRefused
	waitbutton
	closetext
	end
.NotEnoughMoney:
	writetext LAShopkeeperNotEnoughMoney
	waitbutton
	closetext
	end

MaybeVillageMartUltraBall:
	checkevent EVENT_FOLLOWED_BY_ULTRA_BALL
	iftrue .Got
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartItemDown
	follow PLAYER, MAYBE_VILLAGE_MART_ULTRA_BALL
	setevent EVENT_FOLLOWED_BY_ULTRA_BALL
	setval 2 ; Right
	writemem wShopDirection
	end
.Got:
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Up:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartUpSwap
	follow PLAYER, MAYBE_VILLAGE_MART_ULTRA_BALL
	setval 3 ; Down
	writemem wShopDirection
	end
.Right:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartRightSwap
	follow PLAYER, MAYBE_VILLAGE_MART_ULTRA_BALL
	setval 4 ; Left
	writemem wShopDirection
	end
.Down:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartDownSwap
	follow PLAYER, MAYBE_VILLAGE_MART_ULTRA_BALL
	setval 1 ; Up
	writemem wShopDirection
	end
.Left:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartLeftSwap
	follow PLAYER, MAYBE_VILLAGE_MART_ULTRA_BALL
	setval 2 ; Right
	writemem wShopDirection
	end

MaybeVillageMartHeart:
	checkevent EVENT_FOLLOWED_BY_HEART
	iftrue .Got
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartItemDown
	follow PLAYER, MAYBE_VILLAGE_MART_HEART
	setevent EVENT_FOLLOWED_BY_HEART
	setval 2 ; Right
	writemem wShopDirection
	end
.Got:
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Up:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartUpSwap
	follow PLAYER, MAYBE_VILLAGE_MART_HEART
	setval 3 ; Down
	writemem wShopDirection
	end
.Right:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartRightSwap
	follow PLAYER, MAYBE_VILLAGE_MART_HEART
	setval 4 ; Left
	writemem wShopDirection
	end
.Down:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartDownSwap
	follow PLAYER, MAYBE_VILLAGE_MART_HEART
	setval 1 ; Up
	writemem wShopDirection
	end
.Left:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartLeftSwap
	follow PLAYER, MAYBE_VILLAGE_MART_HEART
	setval 2 ; Right
	writemem wShopDirection
	end

MaybeVillageMartLuckyEgg:
	checkevent EVENT_FOLLOWED_BY_LUCKY_EGG
	iftrue .Got
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartItemDown
	follow PLAYER, MAYBE_VILLAGE_MART_LUCKY_EGG
	setevent EVENT_FOLLOWED_BY_LUCKY_EGG
	setval 2 ; Right
	writemem wShopDirection
	end
.Got:
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Up:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartUpSwap
	follow PLAYER, MAYBE_VILLAGE_MART_LUCKY_EGG
	setval 3 ; Down
	writemem wShopDirection
	end
.Right:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartRightSwap
	follow PLAYER, MAYBE_VILLAGE_MART_LUCKY_EGG
	setval 4 ; Left
	writemem wShopDirection
	end
.Down:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartDownSwap
	follow PLAYER, MAYBE_VILLAGE_MART_LUCKY_EGG
	setval 1 ; Up
	writemem wShopDirection
	end
.Left:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartLeftSwap
	follow PLAYER, MAYBE_VILLAGE_MART_LUCKY_EGG
	setval 2 ; Right
	writemem wShopDirection
	end

MaybeVillageMartTM:
	checkevent EVENT_FOLLOWED_BY_TM
	iftrue .Got
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartItemDown
	follow PLAYER, MAYBE_VILLAGE_MART_TM
	setevent EVENT_FOLLOWED_BY_TM
	setval 2 ; Right
	writemem wShopDirection
	end
.Got:
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Up:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartUpSwap
	follow PLAYER, MAYBE_VILLAGE_MART_TM
	setval 3 ; Down
	writemem wShopDirection
	end
.Right:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartRightSwap
	follow PLAYER, MAYBE_VILLAGE_MART_TM
	setval 4 ; Left
	writemem wShopDirection
	end
.Down:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartDownSwap
	follow PLAYER, MAYBE_VILLAGE_MART_TM
	setval 1 ; Up
	writemem wShopDirection
	end
.Left:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartLeftSwap
	follow PLAYER, MAYBE_VILLAGE_MART_TM
	setval 2 ; Right
	writemem wShopDirection
	end

MaybeVillageMartBrightCard:
	checkevent EVENT_FOLLOWED_BY_CARD
	iftrue .Got
	applymovement MAYBE_VILLAGE_MART_BRIGHT_CARD, MaybeVillageMartItemDown
	follow PLAYER, MAYBE_VILLAGE_MART_BRIGHT_CARD
	setevent EVENT_FOLLOWED_BY_CARD
	setval 2 ; Right
	writemem wShopDirection
	end
.Got:
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Up:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartUpSwap
	follow PLAYER, MAYBE_VILLAGE_MART_BRIGHT_CARD
	setval 3 ; Down
	writemem wShopDirection
	end
.Right:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartRightSwap
	follow PLAYER, MAYBE_VILLAGE_MART_BRIGHT_CARD
	setval 4 ; Left
	writemem wShopDirection
	end
.Down:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartDownSwap
	follow PLAYER, MAYBE_VILLAGE_MART_BRIGHT_CARD
	setval 1 ; Up
	writemem wShopDirection
	end
.Left:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	applymovement PLAYER, MaybeVillageMartLeftSwap
	follow PLAYER, MAYBE_VILLAGE_MART_BRIGHT_CARD
	setval 2 ; Right
	writemem wShopDirection
	end

MaybeVillageMart55:
	readmem wShopItemX
	ifless 5, .Left
	readmem wShopItemY
	ifless 5, .Up
	ifequal 5, .Right
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Right:
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Facing:
	sjump MaybeVillageMartShopkeeperLeft
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMart56:
	readmem wShopItemX
	ifless 5, .Left
	readmem wShopItemY
	ifless 5, .Up
	ifequal 5, .Right
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Right:
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Facing:
	sjump MaybeVillageMartShopkeeperLeft
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMart57:
	setmapscene MAYBE_VILLAGE, SCENE_MAYBE_VILLAGE_NORMAL
	readmem wShopItemX
	ifless 5, .Left
	readmem wShopItemY
	ifless 7, .Up
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Facing:
	sjump MaybeVillageMartShopkeeperDown
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMartShop65:
	readmem wShopItemX
	ifless 6, .Left
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 5
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	ifequal 1, MaybeVillageMartShopkeeperUp
	ifequal 2, MaybeVillageMartShopkeeperUp
	ifequal 3, MaybeVillageMartShopkeeperLeft
	ifequal 4, MaybeVillageMartShopkeeperLeft
	end

MaybeVillageMartShop75:
	readmem wShopItemX
	ifless 7, .Left
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 5
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	sjump MaybeVillageMartShopkeeperUp
	end

MaybeVillageMartShop85:
	readmem wShopItemX
	ifless 8, .Left
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 5
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	sjump MaybeVillageMartShopkeeperUp
	end

MaybeVillageMartShop95:
	readmem wShopItemX
	ifless 9, .Left
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 5
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	ifequal 1, MaybeVillageMartShopkeeperUp
	ifequal 2, MaybeVillageMartShopkeeperUp
	ifequal 3, MaybeVillageMartShopkeeperRight
	ifequal 4, MaybeVillageMartShopkeeperRight
	end

MaybeVillageMartShop96:
	readmem wShopItemY
	ifless 6, .Up
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 5
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	sjump MaybeVillageMartShopkeeperRight
	end

MaybeVillageMartShop97:
	readmem wShopItemX
	ifless 9, .Left
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 5
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	ifequal 1, MaybeVillageMartShopkeeperDown
	ifequal 2, MaybeVillageMartShopkeeperDown
	ifequal 3, MaybeVillageMartShopkeeperRight
	ifequal 4, MaybeVillageMartShopkeeperRight
	end

MaybeVillageMartShop87:
	readmem wShopItemX
	ifless 8, .Left
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 2
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	sjump MaybeVillageMartShopkeeperDown
	end

MaybeVillageMartShop77:
	readmem wShopItemX
	ifless 7, .Left
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 2
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	sjump MaybeVillageMartShopkeeperDown
	end

MaybeVillageMartShop67:
	setmapscene MAYBE_VILLAGE, SCENE_MAYBE_VILLAGE_NORMAL
	readmem wShopItemX
	ifless 6, .Left
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 5
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	ifequal 1, MaybeVillageMartShopkeeperDown
	ifequal 2, MaybeVillageMartShopkeeperNoChange
	ifequal 3, MaybeVillageMartShopkeeperNoChange
	ifequal 4, MaybeVillageMartShopkeeperNoChange
	end

MaybeVillageMartShop66:
	readmem wShopItemY
	ifless 6, .Up
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	random 5
	ifequal 0, MaybeVillageMartShopkeeperNoChange
	sjump MaybeVillageMartShopkeeperLeft
	end

MaybeVillageMartShopkeeperUp:
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, UP
	setval 1
	writemem wShopkeeperFacing
	end

MaybeVillageMartShopkeeperRight:
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, RIGHT
	setval 2
	writemem wShopkeeperFacing
	end

MaybeVillageMartShopkeeperDown:
	readmem wShopkeeperFacing
	ifequal 1, MaybeVillageMartShopkeeperRight
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, DOWN
	setval 3
	writemem wShopkeeperFacing
	end

MaybeVillageMartShopkeeperLeft:
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, LEFT
	setval 4
	writemem wShopkeeperFacing
	end

MaybeVillageMartShopkeeperNoChange:
	end

MaybeVillageMart45:
	readmem wShopItemX
	ifless 4, .Left
	readmem wShopItemY
	ifless 5, .Up
	ifequal 5, .Right
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Right:
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMart46:
	readmem wShopItemX
	ifless 4, .Left
	readmem wShopItemY
	ifless 6, .Up
	ifequal 6, .Right
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Right:
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end


MaybeVillageMart47:
	readmem wShopItemX
	ifless 4, .Left
	readmem wShopItemY
	ifless 7, .Up
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMart35:
	readmem wShopItemX
	ifless 3, .Left
	readmem wShopItemY
	ifless 5, .Up
	ifequal 5, .Right
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Right:
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMart36:
	readmem wShopItemX
	ifless 3, .Left
	readmem wShopItemY
	ifless 6, .Up
	ifequal 6, .Right
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Right:
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end


MaybeVillageMart37:
	readmem wShopItemX
	ifless 3, .Left
	readmem wShopItemY
	ifless 7, .Up
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Left:
	setval 4 ; Left
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMart25:
	readmem wShopItemY
	ifequal 5, .Right
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Right:
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMart26:
	readmem wShopItemY
	ifless 6, .Up
	ifequal 6, .Right
	setval 3 ; Down
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Right:
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end


MaybeVillageMart27:
	readmem wShopItemY
	ifless 7, .Up
	setval 2 ; Right
	writemem wShopDirection
	sjump .Facing
.Up:
	setval 1 ; Up
	writemem wShopDirection
	sjump .Facing
.Facing:
	readvar VAR_XCOORD
	writemem wShopItemX
	readvar VAR_YCOORD
	writemem wShopItemY
	end

MaybeVillageMartTryingToLeave:
	checkevent EVENT_FOLLOWED_BY_CARD
	iftrue .HaveCard
	checkevent EVENT_FOLLOWED_BY_ULTRA_BALL
	iftrue .HaveBall
	checkevent EVENT_FOLLOWED_BY_HEART
	iftrue .HaveHeart
	checkevent EVENT_FOLLOWED_BY_LUCKY_EGG
	iftrue .HaveLuckyEgg
	checkevent EVENT_FOLLOWED_BY_TM
	iftrue .HaveTM
	end
.HaveCard
	setval 1
	writemem wStolenItem
	sjump .HaveItem
.HaveBall
	setval 2
	writemem wStolenItem
	sjump .HaveItem
.HaveHeart
	setval 3
	writemem wStolenItem
	sjump .HaveItem
.HaveLuckyEgg
	setval 4
	writemem wStolenItem
	sjump .HaveItem
.HaveTM
	setval 5
	writemem wStolenItem
	sjump .HaveItem
.HaveItem:
	readmem wShopkeeperFacing
	ifequal 3, .Caught
	ifequal 4, .Caught
	stopfollow
	clearevent EVENT_FOLLOWED_BY_CARD
	clearevent EVENT_FOLLOWED_BY_ULTRA_BALL
	clearevent EVENT_FOLLOWED_BY_HEART
	clearevent EVENT_FOLLOWED_BY_LUCKY_EGG
	clearevent EVENT_FOLLOWED_BY_TM
	setmapscene MAYBE_VILLAGE, SCENE_MAYBE_VILLAGE_JUST_STOLE
	end
.Caught:
	opentext
	writetext LAShopkeeperGottaPay
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement PLAYER, MaybeVillageMartUpSwap
	applymovement PLAYER, MaybeVillageMartUpSwap
	turnobject PLAYER, RIGHT
	opentext
	writetext LAShopkeeperGottaPay2
	waitbutton
	closetext
	end

LAShopkeeperGottaPay:
	text "Shopkeeper: HEY!"

	para "You! Stop!"
	done

LAShopkeeperGottaPay2:
	text "You gotta pay!"

	para "Put it back!"
	done

LAShopkeeperInstructionsText:
	text "Shopkeeper: Hey!"
	para "Welcome!"

	para "See anything you"
	line "like?!"

	para "Just bring it"
	line "here!"
	done

LAShopkeeperAfterPurchase:
	text "Thanks a lot!"

	para "And come again!"
	done

LAShopkeeperRefused:
	text "You're killing me"
	line "kid!"

	para "Buy something"
	line "then!"
	done

LAShopkeeperNotEnoughMoney:
	text "Aye Caramba! Kid,"
	line "you have a lot to"
	cont "learn, trying to"
	cont "buy something you"
	cont "can't afford!?!"
	done

LAShopkeeperStolen:
	text "I wasn't kidding"
	line "when I said pay!"

	para "Now, you'll pay"
	line "the ultimate"
	cont "price!!"
	done

LAShopkeeperHeart:
	text "That's a HEART,"
	line "it heals for"
	cont "120 HP!"

	para "That'll cost you"
	line "¥600!"
	cont "You interested?"
	done


LAShopkeeperLuckyEgg:
	text "That's a LUCKY"
	line "EGG!"

	para "It doubles the XP"
	line "gained by the"
	cont "#MON that is"
	cont "holding it!"

	para "That'll cost you"
	line "¥2500!"
	cont "You interested?"
	done

LAShopkeeperUltraBall:
	text "That's an ULTRA"
	line "BALL."

	para "It's very good at"
	line "catching the"
	cont "POCKET MONSTERS."

	para "That'll cost you"
	line "¥1200!"
	cont "You interested?"
	done

LAShopkeeperBrightCard:
	text "That's a rare"
	line "item indeed."

	para "That's a BRIGHT"
	line "CARD."

	para "It grants you"
	line "entry into the"
	cont "GRATE GUY CASINO."
	
	para "That'll cost you"
	line "¥999,999!"
	cont "You interested?"
	done

LAShopkeeperPsychic:
	text "That's a TM for"
	line "the PSYCHIC type"
	cont "move PSYCHIC."

	para "That'll cost you"
	line "¥4,800!"
	cont "You interested?"
	done

LAShopkeeperSignalBeam:
	text "That's a TM for"
	line "the BUG type"
	cont "move SIGNAL BEAM."

	para "That'll cost you"
	line "¥4,800!"
	cont "You interested?"
	done

LAShopkeeperOminousWind:
	text "That's a TM for"
	line "the GHOST type"
	cont "move OMINOUS WIND"

	para "That'll cost you"
	line "¥4,800!"
	cont "You interested?"
	done

LAShopkeeperPlayRough:
	text "That's a TM for"
	line "the FAIRY type"
	cont "move PLAY ROUGH."

	para "That'll cost you"
	line "¥4,800!"
	cont "You interested?"
	done

LAShopkeeperNoMoreTMs:
	text "I'm sold out of"
	line "TMs, it shouldn't"
	cont "be possible for"
	cont "you to have that."

	para "Are you a hacker?"
	done

MaybeVillageMartItemDown:
	step DOWN
	step RIGHT
	step DOWN
	step_end

MaybeVillageMartLeftSwap:
	step LEFT
	step_end
MaybeVillageMartRightSwap:
	step RIGHT
	step_end
MaybeVillageMartUpSwap:
	step UP
	step_end
MaybeVillageMartDownSwap:
	step DOWN
	step_end

MaybeVillageMartCardReturn:
	checkevent EVENT_FOLLOWED_BY_CARD
	iffalse .End
	clearevent EVENT_FOLLOWED_BY_CARD
	stopfollow
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Right:
	applymovement MAYBE_VILLAGE_MART_BRIGHT_CARD, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_BRIGHT_CARD, MaybeVillageMartLeftSwap
	applymovement MAYBE_VILLAGE_MART_BRIGHT_CARD, MaybeVillageMartUpSwap
	end
.Down:
	applymovement PLAYER, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_BRIGHT_CARD, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_BRIGHT_CARD, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_BRIGHT_CARD, MaybeVillageMartUpSwap
.Up:
.Left:	
.End:
	end

MaybeVillageMartUltraBallReturn:
	checkevent EVENT_FOLLOWED_BY_ULTRA_BALL
	iffalse .End
	clearevent EVENT_FOLLOWED_BY_ULTRA_BALL
	stopfollow
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Left:
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartUpSwap
	end
.Right:
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartLeftSwap
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartUpSwap
	end
.Down:
	applymovement PLAYER, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_ULTRA_BALL, MaybeVillageMartUpSwap
	end
.Up:
.End:
	end

MaybeVillageMartHeartReturn:
	checkevent EVENT_FOLLOWED_BY_HEART
	iffalse .End
	clearevent EVENT_FOLLOWED_BY_HEART
	stopfollow
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Left:
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartUpSwap
	end
.Right:
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartLeftSwap
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartUpSwap
	end
.Down:
	applymovement PLAYER, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_HEART, MaybeVillageMartUpSwap
	end
.Up:
.End:
	end

MaybeVillageMartLuckyEggReturn:
	checkevent EVENT_FOLLOWED_BY_LUCKY_EGG
	iffalse .End
	clearevent EVENT_FOLLOWED_BY_LUCKY_EGG
	stopfollow
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Left:
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartUpSwap
	end
.Right:
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartLeftSwap
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartUpSwap
	end
.Down:
	applymovement PLAYER, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_LUCKY_EGG, MaybeVillageMartUpSwap
.Up:
.End:
	end

MaybeVillageMartTMReturn:
	checkevent EVENT_FOLLOWED_BY_TM
	stopfollow
	clearevent EVENT_FOLLOWED_BY_LUCKY_EGG
	readmem wShopDirection
	ifequal 1, .Up
	ifequal 2, .Right
	ifequal 3, .Down
	ifequal 4, .Left
.Left:
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartUpSwap
	end
.Right:
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartLeftSwap
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartUpSwap
	end
.Down:
	applymovement PLAYER, MaybeVillageMartRightSwap
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartUpSwap
	applymovement MAYBE_VILLAGE_MART_TM, MaybeVillageMartUpSwap
.Up:
.End:
	end

MaybeVillageMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MAYBE_VILLAGE, 8
	warp_event 6, 8, MAYBE_VILLAGE, 8

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event  8,  5, -1, MaybeVillageMartShop85
	coord_event  7,  5, -1, MaybeVillageMartShop75
	coord_event  9,  5, -1, MaybeVillageMartShop95
	coord_event  6,  6, -1, MaybeVillageMartShop66
	coord_event  6,  5, -1, MaybeVillageMartShop65
	coord_event  6,  7, -1, MaybeVillageMartShop67
	coord_event  9,  6, -1, MaybeVillageMartShop96
	coord_event  9,  7, -1, MaybeVillageMartShop97
	coord_event  8,  7, -1, MaybeVillageMartShop87
	coord_event  7,  7, -1, MaybeVillageMartShop77
	coord_event  5,  8, -1, MaybeVillageMartTryingToLeave
	coord_event  6,  8, -1, MaybeVillageMartTryingToLeave
	coord_event 2, 5, -1, MaybeVillageMart25
	coord_event 3, 5, -1, MaybeVillageMart35
	coord_event 4, 5, -1, MaybeVillageMart45
	coord_event 5, 5, -1, MaybeVillageMart55
	coord_event 2, 6, -1, MaybeVillageMart26
	coord_event 3, 6, -1, MaybeVillageMart36
	coord_event 4, 6, -1, MaybeVillageMart46
	coord_event 5, 6, -1, MaybeVillageMart56
	coord_event 2, 7, -1, MaybeVillageMart27
	coord_event 3, 7, -1, MaybeVillageMart37
	coord_event 4, 7, -1, MaybeVillageMart47
	coord_event 5, 7, -1, MaybeVillageMart57

	def_bg_events
;	bg_event x, y, type, script
	bg_event  2,  4, BGEVENT_READ, MaybeVillageMartCardReturn
	bg_event  3,  4, BGEVENT_READ, MaybeVillageMartUltraBallReturn
	bg_event  4,  4, BGEVENT_READ, MaybeVillageMartHeartReturn
	bg_event  6,  4, BGEVENT_READ, MaybeVillageMartLuckyEggReturn
	bg_event  8,  4, BGEVENT_READ, MaybeVillageMartTMReturn

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  8,  6, SPRITE_SHOPKEEPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LAShopkeeper, EVENT_HAS_STOLEN
	object_event  2,  3, SPRITE_CARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartBrightCard, EVENT_BOUGHT_BRIGHT_CARD
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartUltraBall, -1
	object_event  4,  3, SPRITE_HEART, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartHeart, -1
	object_event  6,  3, SPRITE_EGG, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartLuckyEgg, -1
	object_event  8,  3, SPRITE_TM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartTM, EVENT_BOUGHT_PLAY_ROUGH
	object_event  5,  5, SPRITE_SHOPKEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, AngryShopkeeper, EVENT_HAVE_NOT_STOLEN
