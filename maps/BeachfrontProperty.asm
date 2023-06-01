	object_const_def
;	const MAPNAME_OBJECTNAME
	const BEACHFRONT_PROPERTY_GIRL


BeachfrontProperty_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

BeachfrontPropertyGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_APPLIN
	iftrue .Apple
.Applin:
	writetext BeachfrontIntroText
	yesorno
	iffalse .Refused
	writetext BeachfrontThanks
	applymovement BEACHFRONT_PROPERTY_GIRL, BeachfrontGirlMoveToPot
	turnobject BEACHFRONT_PROPERTY_GIRL, UP
	pause 110
	applymovement BEACHFRONT_PROPERTY_GIRL, BeachfrontGirlMoveBack
	faceplayer
	writetext BeachfrontTakeIt
	givepoke APPLIN, 28
	setevent EVENT_GOT_APPLIN
.Apple:
	checkevent EVENT_GOT_TART_APPLE
	iftrue .After
	checkevent EVENT_GOT_SWEET_APPLE
	iftrue .After
	writetext AppleOffer
	loadmenu .BeachfrontMenu
	verticalmenu
	closewindow
	ifequal 1, .Tart
	ifequal 2, .Sweet
	writetext AppleRefused
	closetext
	end
.Tart:
	verbosegiveitem TART_APPLE
	setevent EVENT_GOT_TART_APPLE
	waitbutton
	sjump .End

.Sweet:
	verbosegiveitem SWEET_APPLE
	setevent EVENT_GOT_SWEET_APPLE
	waitbutton
	sjump .End
.After:
	writetext BeachfrontGirlAfter
	waitbutton
	sjump .End
.Refused:
	writetext RefusedApplin
	waitbutton
.End:
	closetext
	end

.BeachfrontMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 10, TEXTBOX_Y - 6
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "Tart@"
	db "Sweet@"

AppleRefused:
	text "Well, if you want"
	line "an apple later,"
	cont "you know where to"
	cont "find me."
	done

BeachfrontGirlAfter:
	text "Thank you for"
	line "taking care of"
	cont "that weird apple"
	cont "monster."

	para "Thank god there"
	line "isn't one that"
	cont "lives in a banana"
	done

RefusedApplin:
	text "Oh."

	para "Okay."
	done

BeachfrontThanks:
	text "Oh thank the"
	line "godesses."

	para "I just want that"
	line "thing gone."
	done

BeachfrontTakeIt:
	text "Okay, here, take"
	line "it!"
	done

AppleOffer:
	text "Since you're"
	line "helping me out so"
	cont "much, and that"
	cont "thing seems to"
	cont "be some kind of"
	cont "cannibal, have"
	cont "an apple too."

	para "What kind of an"
	line "apple would you"
	cont "like?"
	done

BeachfrontIntroText:
	text "Well howdy!"

	para "I'm just a humble"
	line "banana farmer."

	para "I have a problem"
	line "though..."

	para "Some weird apples"
	line "grew from one of"
	cont "my trees."

	para "One of them..."

	para "moved..."

	para "I trapped it in a"
	line "pot, but I'd like"
	cont "to get rid of it."

	para "I think it's one"
	line "of those Pocket"
	cont "monsters..."

	para "Would you take"
	line "it?"
	done

BeachfrontGirlMoveToPot:
	step UP
	step RIGHT
	step_end

BeachfrontGirlMoveBack:
	step DOWN
	step LEFT
	step_end

BeachfrontProperty_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, AWAKENING_BEACH_2, 1
	warp_event  6,  8, AWAKENING_BEACH_2, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 7, 4, SPRITE_LA_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BeachfrontPropertyGirlScript, 0