	object_const_def
;	const MAPNAME_OBJECTNAME
	const MAYBE_VILLAGE_MART_SHOPKEEPER
	const MAYBE_VILLAGE_MART_BRIGHT_CARD
	const MAYBE_VILLAGE_MART_ULTRA_BALL
	const MAYBE_VILLAGE_MART_HEART
	const MAYBE_VILLAGE_MART_LUCKY_EGG
	const MAYBE_VILLAGE_MART_TM


MaybeVillageMart_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

LAShopkeeper:
MaybeVillageMartUltraBall:
MaybeVillageMartHeart:
MaybeVillageMartOtherBall:
MaybeVillageMartLuckyEgg:
MaybeVillageMartMiracleBerry:
MaybeVillageMartTM:
MaybeVillageMartMail:
	end

MaybeVillageMartBrightCard:
	checkevent EVENT_FOLLOWED_BY_CARD
	iftrue .Got
	applymovement MAYBE_VILLAGE_MART_BRIGHT_CARD, MaybeVillageMartItemDown
	follow PLAYER, MAYBE_VILLAGE_MART_BRIGHT_CARD
	setevent EVENT_FOLLOWED_BY_CARD
.Got:
	end

MaybeVillageMartTooFar:
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, LEFT
	setevent LA_SHOPKEEPER_LEFT
	clearevent LA_SHOPKEEPER_DOWN
	end

MaybeVillageMartTooFar2:
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, DOWN
	setevent LA_SHOPKEEPER_DOWN
	clearevent LA_SHOPKEEPER_LEFT
	end

MaybeVillageMartShopUpLeft:
	random 5
	ifequal 0, MaybeVillageMartShopNoChange
	ifequal 1, MaybeVillageMartShopUp
	ifequal 2, MaybeVillageMartShopUp
	ifequal 3, MaybeVillageMartShopLeft
	ifequal 4, MaybeVillageMartShopLeft
	end

MaybeVillageMartShopUp:
	random 5
	ifequal 0, MaybeVillageMartShopNoChange
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, UP
	clearevent LA_SHOPKEEPER_LEFT
	clearevent LA_SHOPKEEPER_DOWN
	end

MaybeVillageMartShopLeft:
	random 5
	ifequal 0, MaybeVillageMartShopNoChange
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, LEFT
	setevent LA_SHOPKEEPER_LEFT
	clearevent LA_SHOPKEEPER_DOWN
	end

MaybeVillageMartShopUpRight:
	random 5
	ifequal 0, MaybeVillageMartShopNoChange
	ifequal 1, MaybeVillageMartShopUp
	ifequal 2, MaybeVillageMartShopUp
	ifequal 3, MaybeVillageMartShopRight
	ifequal 4, MaybeVillageMartShopRight
	end

MaybeVillageMartShopRight:
	random 5
	ifequal 0, MaybeVillageMartShopNoChange
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, RIGHT
	clearevent LA_SHOPKEEPER_LEFT
	clearevent LA_SHOPKEEPER_DOWN
	end

MaybeVillageMartShopDownRight:
	random 5
	ifequal 0, MaybeVillageMartShopNoChange
	ifequal 1, MaybeVillageMartShopDown
	ifequal 2, MaybeVillageMartShopDown
	ifequal 3, MaybeVillageMartShopRight
	ifequal 4, MaybeVillageMartShopRight
	end

MaybeVillageMartShopDown:
	random 2
	ifequal 0, MaybeVillageMartShopNoChange
	turnobject MAYBE_VILLAGE_MART_SHOPKEEPER, DOWN
	clearevent LA_SHOPKEEPER_LEFT
	setevent LA_SHOPKEEPER_DOWN
	end

MaybeVillageMartShopDownLeft:
	random 5
	ifequal 0, MaybeVillageMartShopNoChange
	ifequal 1, MaybeVillageMartShopDown
	ifequal 2, MaybeVillageMartShopNoChange
	ifequal 3, MaybeVillageMartShopLeft
	ifequal 4, MaybeVillageMartShopNoChange
	end

MaybeVillageMartShopNoChange:
	end

MaybeVillageMartItemDown:
	step DOWN
	step_end


MaybeVillageMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MAYBE_VILLAGE, 8
	warp_event 6, 8, MAYBE_VILLAGE, 8

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event  8,  5, -1, MaybeVillageMartShopUp
	coord_event  7,  5, -1, MaybeVillageMartShopUp
	coord_event  9,  5, -1, MaybeVillageMartShopUpRight
	coord_event  5,  7, -1, MaybeVillageMartTooFar2
	coord_event  5,  5, -1, MaybeVillageMartTooFar
	coord_event  5,  6, -1, MaybeVillageMartTooFar
	coord_event  6,  6, -1, MaybeVillageMartShopLeft
	coord_event  6,  5, -1, MaybeVillageMartShopUpLeft
	coord_event  6,  7, -1, MaybeVillageMartShopDownLeft
	coord_event  9,  6, -1, MaybeVillageMartShopRight
	coord_event  9,  7, -1, MaybeVillageMartShopDownRight
	coord_event  8,  7, -1, MaybeVillageMartShopDown
	coord_event  7,  7, -1, MaybeVillageMartShopDown


	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 8, 6, SPRITE_SHOPKEEPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LAShopkeeper, -1
	object_event  2,  3, SPRITE_CARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartBrightCard, EVENT_BOUGHT_BRIGHT_CARD
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartUltraBall, -1
	object_event  4,  3, SPRITE_HEART, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartHeart, -1
	object_event  6,  3, SPRITE_EGG, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartLuckyEgg, -1
	object_event  8,  3, SPRITE_TM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybeVillageMartTM, -1
