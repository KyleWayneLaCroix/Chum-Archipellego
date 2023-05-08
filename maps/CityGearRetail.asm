	object_const_def

CityGearRetail_MapScripts:
	def_scene_scripts

	def_callbacks

CityGearRetailShelfScript:
	jumptext CityGearRetailShelfText

CityGearGlassShelfScript:
	jumptext CityGearGlassShelfText

CityGearBlueShelfScript:
	jumptext CityGearBlueShelfText

CityGearVendingScript:
	jumptext CityGearVendingText

CityGearRetailFemaleCashier:
	jumptextfaceplayer CityGearRetailFemaleCashierText

CityGearRetailMaleCashier:
	jumptextfaceplayer CityGearRetailMaleCashierText

CityGearRetailCustomer1:
	jumptextfaceplayer CityGearRetailCustomer1Text

CityGearRetailCustomer2:
	jumptextfaceplayer CityGearRetailCustomer2Text

CityGearRetailCustomer3:
	jumptextfaceplayer CityGearRetailCustomer3Text

CityGearRetailCustomer4:
	jumptextfaceplayer CityGearRetailCustomer4Text

CityGearRetailCustomer5:
	jumptextfaceplayer CityGearRetailCustomer5Text

CityGearRetailFemaleCashierText:
	text "Hello, welcome to"
	line "CITY GEAR."

	para "We're sold out of"
	line "just about every"
	cont "new shoe that"
	cont "just dropped."

	para "FOAMPOSITES were"
	line "sold out within"
	cont "the first minute."

	para "They may still"
	line "have some at HQ,"
	cont "but we're out."
	done

CityGearRetailMaleCashierText:
	text "This is the busi-"
	line "-est day I've had"
	cont "here before."

	para "Everyone wanted"
	line "those FOAMPOSITES"
	done

CityGearRetailCustomer1Text:
	text "I'm going to be"
	line "honest, here."

	para "I'm just waiting"
	line "for both cashiers"
	cont "to stop paying"
	cont "attention, so I"
	cont "can steal some"
	cont "shoes."

	para "The FOAMPOSITES"
	line "are sold out, but"
	cont "I can at least"
	cont "get the SPACE JAM"
	cont "2 LEBRONS."
	done

CityGearRetailCustomer2Text:
	text "Oh good, they"
	line "still had some"
	cont "FOAMPOSITES in"
	cont "14 week-old"
	cont "sizes."

	para "I was worried my"
	line "baby would be"
	cont "forced to wear"
	cont "regular shoes."

	para "Best ¥200 I could"
	line "ever spend!"
	done

CityGearRetailCustomer3Text:
	text "Excuse me, I'm"
	line "busy window"
	cont "shopping."
	done


CityGearRetailCustomer4Text:
	text "I want my CITY"
	line "GEAR."

	para "(city gear)"
	line "(city gear)"

	para "   (city gear)"
	line "   (city gear)"

	para "..."

	para "Don't you know"
	line "the commercial?"
	done

CityGearRetailCustomer5Text:
	text "When I walked in"
	line "some guy was get-"
	cont "-ting fired."

	para "Apparently he was"
	line "shoving shoes in"
	cont "his pants and"
	cont "trying to sneak"
	cont "out with them."

	para "Dumbass."
	done

CityGearRetailShelfText:
	text "Rows of very exp-"
	line "-ensive shoes."
	done

CityGearGlassShelfText:
	text "Wow those are"
	line "pricy T-shirts!"
	done

CityGearBlueShelfText:
	text "That's a LOT of"
	line "socks with NBA"
	cont "players' faces"
	cont "awkwardly stretc-"
	cont "-hed out on them."
	done

CityGearVendingText:
	text "It sells nothing"
	line "but SHAQ SODA."
	done

CityGearRetail_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 11, GEAR_CITY, 3
	warp_event 10, 11, GEAR_CITY, 3
	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CityGearRetailShelfScript
	bg_event  1,  1, BGEVENT_READ, CityGearRetailShelfScript
	bg_event 19,  1, BGEVENT_READ, CityGearRetailShelfScript
	bg_event 18,  1, BGEVENT_READ, CityGearRetailShelfScript
	bg_event  3,  6, BGEVENT_READ, CityGearBlueShelfScript
	bg_event  3,  7, BGEVENT_READ, CityGearBlueShelfScript
	bg_event  3,  8, BGEVENT_READ, CityGearBlueShelfScript
	bg_event  3,  9, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 11,  9, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 11,  8, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 11,  7, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 11,  6, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 13,  9, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 13,  8, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 13,  7, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 13,  6, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 17,  5, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 17,  4, BGEVENT_READ, CityGearBlueShelfScript
	bg_event 16,  9, BGEVENT_READ, CityGearGlassShelfScript
	bg_event 17,  9, BGEVENT_READ, CityGearGlassShelfScript
	bg_event 18,  9, BGEVENT_READ, CityGearGlassShelfScript
	bg_event 19,  9, BGEVENT_READ, CityGearGlassShelfScript
	bg_event 11,  1, BGEVENT_READ, CityGearGlassShelfScript
	bg_event 10,  1, BGEVENT_READ, CityGearGlassShelfScript
	bg_event  9,  1, BGEVENT_READ, CityGearGlassShelfScript
	bg_event  8,  1, BGEVENT_READ, CityGearGlassShelfScript
	bg_event  7,  9, BGEVENT_READ, CityGearGlassShelfScript
	bg_event  6,  9, BGEVENT_READ, CityGearGlassShelfScript
	bg_event  5,  9, BGEVENT_READ, CityGearVendingScript
	bg_event  4,  9, BGEVENT_READ, CityGearVendingScript

	def_object_events
	object_event 15,  1, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT,0, CityGearRetailFemaleCashier, -1
	object_event  5,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT,0, CityGearRetailMaleCashier, -1
	object_event  4,  4, SPRITE_FALKNER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT,0, CityGearRetailCustomer1, -1
	object_event  4, 10, SPRITE_WHITNEY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT,0, CityGearRetailCustomer2, -1
	object_event 18,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT,0, CityGearRetailCustomer3, -1
	object_event 19, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT,0, CityGearRetailCustomer4, -1
	object_event 12,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT,0, CityGearRetailCustomer5, -1
