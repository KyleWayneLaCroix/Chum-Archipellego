DEF UNIVERCITY_BELDUM_PRICE EQU 18000

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

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  2,  0, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofBeldumMerchant, 0
	object_event  6,  0, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofBargainMerchant, 0
	object_event  9,  0, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, UnivercityMartRoofLocalMerchant, 0
