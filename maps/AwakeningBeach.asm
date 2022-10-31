	object_const_def
	const AWAKENINGBEACH_SORA
	const AWAKENINGBEACH_LINK
	const AWAKENINGBEACH_BRIAN

AwakeningBeach_MapScripts::

AwakeningBeachSign:
	jumptext AwakeningBeachSignText

KameHouseSign:
	jumptext KameHouseSignText

DankCaveSign:
	jumptext DankCaveSignText

AwakeningBeachFruitTree:
	fruittree FRUITTREE_AWAKENING_BEACH

AwakeningBeachHyperPotion:
	itemball HYPER_POTION

AwakeningBeachSignText:
	text "AWAKENING BEACH"

	para "Like that beach"
	line "in Kingdom Hearts"
	cont "/Links Awakening"
	done

KameHouseSignText:
	text "KAME HOUSE"
	done

DankCaveSignText:
	text "DANK CAVE"

	para "But like, as in"
	line "unpleasantly wet."
	cont "Also dark."

	para "It's pretty cold"
	line "as well."

	para "It does smell of"
	line "weed too."

	para "We haven't found"
	line "any inside yet,"
	line "so don't get your"
	cont "hopes up."
	done


AwakeningBeach_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 26, ELMS_LAB, 1

	def_coord_events

	def_bg_events
	bg_event   9, 25, BGEVENT_READ, AwakeningBeachSign
	bg_event  15, 26, BGEVENT_READ, DankCaveSign
	bg_event   9, 37, BGEVENT_READ, KameHouseSign

	def_object_events
	object_event 17, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AwakeningBeachHyperPotion, EVENT_AWAKENING_BEACH_HYPER_POTION
	object_event 11, 19, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningBeachFruitTree, -1
