DEF GEARCITY_CITYGEARHQ_CARD_KEY_PRICE EQU 300

	object_const_def
	const GEARCITY_CHRIS_WHILTEN

GearCityWhiltenHouse_MapScripts:
	def_scene_scripts

	def_callbacks

GearCityChrisWhiltenScript::
	faceplayer
	checkitem CARD_KEY
	iftrue .HaveCardKey
	opentext
	writetext GearCityChrisWhiltenWhine
	waitbutton
	writetext GearCityChrisWhiltenSell
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, GEARCITY_CITYGEARHQ_CARD_KEY_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem CARD_KEY
	iffalse .NoRoom
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, GEARCITY_CITYGEARHQ_CARD_KEY_PRICE
	special PlaceMoneyTopRight
	writetext GearCityChrisWhiltenEnjoyYourPurchase
	waitbutton
	closetext
	turnobject GEARCITY_CHRIS_WHILTEN, UP
	end

.HaveCardKey:
	opentext
	writetext ChrisWhiltenPostPurchase
	waitbutton
	closetext
	turnobject GEARCITY_CHRIS_WHILTEN, UP
	end

.NotEnoughMoney:
	writetext CityGearHQCardKeyNotEnoughMoneyText
	waitbutton
	closetext
	turnobject GEARCITY_CHRIS_WHILTEN, UP
	end

.Refused:
	writetext CityGearHQCardKeyMerchantRefusedText
	waitbutton
	closetext
	turnobject GEARCITY_CHRIS_WHILTEN, UP
	end

.NoRoom:
	writetext CityGearHQCardKeyMerchantNoRoomText
	waitbutton
	closetext
	turnobject GEARCITY_CHRIS_WHILTEN, UP
	end

GearCityChrisWhiltenWhine:
	text "CHRIS WHILTEN: I"
	line "have never been"
	cont "so wronged."

	para "I was just keep-"
	line "-ing those shoes"
	cont "safe."

	para "Just because I"
	line "had shoes stuffed"
	cont "in my pants does"
	cont "NOT mean I was"
	cont "stealing them."

	done

GearCityChrisWhiltenSell:
	text "Hey, you. Want to"
	line "buy something"
	cont "cool?"

	para "I got an employee"
	line "card to CITY GEAR"
	cont "HQ they forgot to"
	cont "take from me."

	para "You could get in"
	line "and steal from"
	cont "their warehouse."

	para "I would never do"
	line "that myself bec-"
	cont "-ause I'm not a"
	cont "thief."

	para "Well, do you"
	line "want it?"

	para "¥300 and it's"
	line "yours!"
	done

GearCityChrisWhiltenEnjoyYourPurchase:
	text "Great, that's"
	line "about how much"
	cont "the shoes I"
	cont "allegedly tried"
	cont "to steal cost."

	para "My lawyer has"
	line "advised me to"
	cont "never take resp-"
	cont "-onsibility for"
	cont "any of my actions"
	cont "so we never had"
	cont "this conversation"
	done

ChrisWhiltenPostPurchase:
	text "Thanks for the"
	line "¥300, it was a"
	cont "pleasure doing"
	cont "business with"
	cont "you."

	para "Legal business."

	para "I don't break"
	line "the law."

	para "I am a felon"
	line "though, and can't"
	cont "vote."
	done

CityGearHQCardKeyNotEnoughMoneyText:
	text "Wow, you're even"
	line "poorer than that"
	cont "kid who donated"
	cont "his lunch money"
	cont "to me."

	para "Come back with"
	line "some cash."
	done

CityGearHQCardKeyMerchantRefusedText:
	text "Wow, you're a"
	line "dumbass. Passing"
	cont "on this deal will"
	cont "be the biggest"
	cont "mistake of your"
	cont "life."
	done

CityGearHQCardKeyMerchantNoRoomText:
	text "It's not actually"
	line "possible to see"
	cont "this text."

	para "If you see this,"
	line "please tell Kyle"
	cont "how you did that."

	para "Good job!"
	done

GearCityWhiltenHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 2, 7, GEAR_CITY, 8
	warp_event 3, 7, GEAR_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GearCityChrisWhiltenScript, -1
