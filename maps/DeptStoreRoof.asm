DEF UNIVERCITY_BELDUM_PRICE EQU 18000
DEF UNIVERCITY_BERRY_GACHAPON_PRICE EQU 50

	object_const_def
;	const MAPNAME_OBJECTNAME


UnivercityMartRoof_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

UnivercityMartRoofBargainMerchant:
	opentext
	pokemart MARTTYPE_BARGAIN, 0
	closetext
	end

UnivercityMartRoofLocalMerchant:
	opentext
	pokemart MARTTYPE_LOCAL, MART_UNIVERCITY_LOCAL
	closetext
	end

UnivercityMartRoofBeldumMerchant:
	faceplayer
	checkevent EVENT_BOUGHT_BELDUM
	iftrue .BoughtBeldum
	opentext
	writetext BeldumMerchantIntro
	waitbutton
	refreshscreen
	pokepic BELDUM
	cry BELDUM
	waitbutton
	closepokepic
	writetext BeldumMerchantPrice
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, UNIVERCITY_BELDUM_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	givepoke BELDUM, 16, METAL_COAT
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, UNIVERCITY_BELDUM_PRICE
	special PlaceMoneyTopRight
	writetext BeldumMerchantPostPurchase
	setevent EVENT_BOUGHT_BELDUM
	waitbutton
	closetext
	end

.BoughtBeldum:
	opentext
	writetext BeldumMerchantPostPurchase
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext BeldumMerchantNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext BeldumMerchantRefusedText
	waitbutton
	closetext
	end

UnivercityMartRoofBinoculars1Script:
	jumptext UnivercityMartRoofBinoculars1Text

UnivercityMartRoofBinoculars2Script:
	jumptext UnivercityMartRoofBinoculars2Text

UnivercityMartRoofBerryMachineScript:
	opentext
	writetext UnivercityMartBerryGachaponText
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, UNIVERCITY_BERRY_GACHAPON_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, UNIVERCITY_BERRY_GACHAPON_PRICE
	special PlaceMoneyTopRight
	writetext UnivercityBerryGachaponPullText
	waitbutton
	playsound SFX_ENTER_DOOR
	waitsfx
	random 10
	ifequal 0, UnivercityBerryGachaponBerryScript
	ifequal 1, UnivercityBerryGachaponGoldBerryScript
	ifequal 2, UnivercityBerryGachaponMysteryBerryScript
	ifequal 3, UnivercityBerryGachaponMiracleBerryScript
	ifequal 4, UnivercityBerryGachaponPSNCureBerryScript
	ifequal 5, UnivercityBerryGachaponPRZCureBerryScript
	ifequal 6, UnivercityBerryGachaponBurntBerryScript
	ifequal 7, UnivercityBerryGachaponIceBerryScript
	ifequal 8, UnivercityBerryGachaponBitterBerryScript
	ifequal 9, UnivercityBerryGachaponMintBerryScript
	closetext
	end

.Refused:
	closetext
	end

.NotEnoughMoney:
	writetext UnivercityBerryGachaponNoMoneyText
	closetext
	end

UnivercityBerryGachaponBerryScript:
	verbosegiveitem BERRY
	closetext
	end

UnivercityBerryGachaponGoldBerryScript:
	verbosegiveitem GOLD_BERRY
	closetext
	end

UnivercityBerryGachaponMysteryBerryScript:
	verbosegiveitem MYSTERYBERRY
	closetext
	end

UnivercityBerryGachaponMiracleBerryScript:
	verbosegiveitem MIRACLEBERRY
	closetext
	end

UnivercityBerryGachaponPSNCureBerryScript:
	verbosegiveitem PSNCUREBERRY
	closetext
	end

UnivercityBerryGachaponPRZCureBerryScript:
	verbosegiveitem PRZCUREBERRY
	closetext
	end

UnivercityBerryGachaponBurntBerryScript:
	verbosegiveitem BURNT_BERRY
	closetext
	end

UnivercityBerryGachaponIceBerryScript:
	verbosegiveitem ICE_BERRY
	closetext
	end

UnivercityBerryGachaponBitterBerryScript:
	verbosegiveitem BITTER_BERRY
	closetext
	end

UnivercityBerryGachaponMintBerryScript:
	verbosegiveitem MINT_BERRY
	closetext
	end

UnivercityMartRoofGachaponInventor:
	jumptextfaceplayer UnivercityMartRoofGachaponInventorText

UnivercityMartRoofTradeGirl:
	faceplayer
	opentext
	trade NPC_TRADE_KOBENI
	waitbutton
	closetext
	end

UnivercityMartRoofBugCatcherScript:
	jumptextfaceplayer UnivercityMartRoofBugCatcherText

UnivercityMartRoofYoungsterScript:
	jumptextfaceplayer UnivercityMartRoofYoungsterText

UnivercityMartRoofBugCatcherText:
	text "You can find so"
	line "much to buy at"
	cont "this store!"

	para "It's so cool"
	line "to be a consumer"
	cont "in capitalism!"
	done

UnivercityMartRoofYoungsterText:
	text "I love to spin!"

	para "It's so much fun!"

	para "I may throw up!"

	para "I don't love that"

	para "Still, sacrifice"
	line "must be made for"
	cont "what we love!"
	done

UnivercityMartRoofGachaponInventorText:
	text "I invented these"
	line "GACHAPON machines"

	para "that sell you a"
	line "random berry for"
	cont "¥50."

	para "The key is most"
	line "of the berries"
	cont "are worth way"
	cont "less."

	para "People go crazy"
	line "for it because"
	cont "sometimes they"
	cont "get a better one."

	para "It's truly random"
	line "right now, but I"
	cont "have some ideas"
	cont "to expand this."

	para "A #BALLPON"
	line "MACHINE that is"
	cont "¥300 a pull, but"
	
	para "you are much more"
	line "likely to get a"
	cont "regular #BALL."

	para "One day, I think"
	line "I can sell JPGs"
	cont "instead."

	para "People love cute"
	line "anime girl JPGs."

	para "Maybe they'll be"
	line "PNGs isntead."

	para "It's time we had"
	line "NFTs for girls."
	done



UnivercityMartBerryGachaponText:
	text "A machine labeled"
	line "BERRY GACHAPON"

	para "It seems if you"
	line "pay ¥50, you'll"
	cont "get a random type"
	cont "of BERRY."

	para "Interested in a"
	line "pull?"
	done

UnivercityBerryGachaponPullText:
	text "Here we go!"
	done

UnivercityBerryGachaponNoMoneyText:
	text "You don't have"
	line "enough money."
	done

UnivercityMartRoofBinoculars1Text:
	text "You can see a lot"
	line "of ocean this way"
	done

UnivercityMartRoofBinoculars2Text:
	text "You look through"
	line "the binoculars,"
	cont "but all you see"

	para "is 404 VIEW NOT"
	line "FOUND."
	done

BeldumMerchantIntro:
	text "Hello, I am a"
	line "collector of rare"
	cont "and unusual #-"
	cont "-MON."

	para "I happen to have"
	line "a spare BELDUM."
	done

BeldumMerchantPrice:
	text "¥18,000 and it is"
	line "yours!"

	para "I garuntee you"
	line "won't find this"
	cont "in the wild!"
	done

BeldumMerchantRefusedText:
	text "Your loss, if you"
	line "change your mind,"
	cont "I'll be here."
	done

BeldumMerchantNotEnoughMoneyText:
	text "I'm sorry, you"
	line "don't have enough"
	cont "money right now."

	para "Come back when"
	line "you have some to"
	cont "spend."
	done

BeldumMerchantPostPurchase:
	text "Congrats, BELDUM"
	line "is a rare, and"
	cont "powerful STEEL"
	cont "#MON."

	para "Please take good"
	line "care of him."
	done

UnivercityMartRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 14, 1, UNIVERCITY_MART_5F, 2


	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 15,  3, BGEVENT_READ, UnivercityMartRoofBinoculars1Script
	bg_event 15,  6, BGEVENT_READ, UnivercityMartRoofBinoculars2Script
	bg_event  4,  4, BGEVENT_UP, UnivercityMartRoofBerryMachineScript
	bg_event  5,  4, BGEVENT_UP, UnivercityMartRoofBerryMachineScript
	bg_event  6,  4, BGEVENT_UP, UnivercityMartRoofBerryMachineScript
	bg_event  7,  4, BGEVENT_UP, UnivercityMartRoofBerryMachineScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  2,  0, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofBeldumMerchant, 0
	object_event  6,  0, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofBargainMerchant, 0
	object_event  9,  0, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofLocalMerchant, 0
	object_event  8,  5, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofGachaponInventor, 0
	object_event  1,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofTradeGirl, 0
	object_event 12,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofBugCatcherScript, 0
	object_event  1,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofYoungsterScript, 0
