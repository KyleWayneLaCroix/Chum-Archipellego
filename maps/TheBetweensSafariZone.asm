	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_BETWEENS_SAFARI_ZONE_POKE_BALL_1
	const THE_BETWEENS_SAFARI_ZONE_POKE_BALL_2
	const THE_BETWEENS_SAFARI_ZONE_POKE_BALL_3
	const THE_BETWEENS_SAFARI_ZONE_THE_EMPTY_1
	const THE_BETWEENS_SAFARI_ZONE_THE_EMPTY_2
	const THE_BETWEENS_SAFARI_ZONE_FANCY_LAD
	const THE_BETWEENS_SAFARI_ZONE_KAREN


TheBetweensSafariZone_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TheBetweensSafariZoneNightSlash:
	itemball TM_NIGHT_SLASH

TheBetweensSafariZoneMaxPotion:
	itemball MAX_POTION

TheBetweensSafariZoneMaxRevive:
	itemball MAX_REVIVE

TheBetweensSafariZoneSign1:
	jumptext TheBetweensSafariZoneSign1Text

TheBetweensSafariZoneSign1Text:
	text "TRAINER TIPS"

	para "#MON hide in"
	line "the tall grass!"

	para "Zigzag through"
	line "grassy areas to"
	cont "flush them out."
	done

TheBetweensSafariZoneSign2:
	jumptext TheBetweensSafariZoneSign2Text

TheBetweensSafariZoneSign2Text:
	text "TRAINER TIPS"

	para "Tossing ROCKs at"
	line "#MON might"
	cont "make them run,"
	cont "but they'll be"
	cont "easier to catch."
	done

TrainerKarenKaren1:
	trainer KAREN, KAREN_1, EVENT_BEAT_KAREN_1, Karen1SeenText, Karen1BeatenText, 0, .Karen1Script

.Karen1Script:
	endifjustbattled
	opentext
	writetext Karen1AfterText
	waitbutton
	closetext
	end

Karen1SeenText:
	text "I need to speak"
	line "to your manager"
	cont "right now!"

	para "This service is"
	line "unacceptable!"

	para "I demand to be"
	line "assisted properly"

	para "Where is the"
	line "manager?!"
	done

Karen1BeatenText:
	text "This is an"
	line "outrage!"

	para "You will regret"
	line "treating me like"
	cont "this!"

	para "Manager!"
	done

Karen1AfterText:
	text "Finally!"

	para "Listen up!"

	para "I expect prompt"
	line "assistance and a"
	cont "sincere apology!"
	done

TrainerFancyLadHayden:
	trainer FANCY_LAD, HAYDEN, EVENT_BEAT_FANCY_LAD_HAYDEN, HaydenSeenText, HaydenBeatenText, 0, .HaydenScript

.HaydenScript:
	endifjustbattled
	opentext
	writetext HaydenAfterText
	waitbutton
	closetext
	end

HaydenSeenText:
	text "Look at all my"
	line "money!"

	para "I'm so rich!"
	line "You're beneath me!"

	para "#MON battles?"


	para "Only do it for"
	line "show. Money is"
	cont "my true sport!"
	done

HaydenBeatenText:
	text "No! My money! How"
	line "dare you defeat a"
	cont "fancy lad like me?"
	cont "I'll get revenge!"
	done

HaydenAfterText:
	text "I may have lost"
	line "this time, but my"
	cont "wealth will"
	cont "ensure my future"
	cont "victory."
	done

TrainerTheEmpty3:
	trainer THE_EMPTY, THE_EMPTY_3, EVENT_BEAT_THE_EMPTY_3, TheEmpty3SeenText, TheEmpty3BeatenText, 0, .Script

.Script:
	writetext TheEmpty3AfterText
	waitbutton
	special FadeBlackQuickly
	playsound SFX_PERISH_SONG
	waitsfx
	disappear THE_BETWEENS_SAFARI_ZONE_THE_EMPTY_1
	special FadeInQuickly
	closetext
	end

TheEmpty3SeenText:
	text "???: H O W  D O"
	line "Y O U   F E E L"
	cont " A B O U T"
	cont "P R O G  R O C K?"

	para " Y O U  K N O W"
	line "L I K E  T H A T"
	cont " B A N D ?"
	done

TheEmpty3BeatenText:
	text "I T  I S"
	line " M  U  S  I  C"
	done

TheEmpty3AfterText:
	text "W H Y  T O  M E ?"
	done

TrainerTheEmpty4:
	trainer THE_EMPTY, THE_EMPTY_4, EVENT_BEAT_THE_EMPTY_4, TheEmpty4SeenText, TheEmpty4BeatenText, 0, .Script

.Script:
	writetext TheEmpty4AfterText
	waitbutton
	special FadeBlackQuickly
	playsound SFX_PERISH_SONG
	waitsfx
	disappear THE_BETWEENS_SAFARI_ZONE_THE_EMPTY_2
	special FadeInQuickly
	closetext
	end

TheEmpty4SeenText:
	text "???: A R E"
	line "  G  A  M  E  "
	cont "A  R  T  ?"
	done

TheEmpty4BeatenText:
	text "I T  I S"
	line " M A  R I O"
	cont "  P A  I N T"
	done

TheEmpty4AfterText:
	text "F L Y"
	line " S W A T T E R"
	done

TheBetweensSafariZoneHiddenRevive:
	hiddenitem REVIVE, EVENT_THE_BETWEENS_SAFARI_ZONE_HIDDEN_REVIVE

TheBetweensSafariZone_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4,  3, THE_DARK_LAB_BRIAN_ROOM, 3
	warp_event 22,  0, THE_BETWEENS_SAFARI_ZONE, 4
	warp_event 23,  0, THE_BETWEENS_SAFARI_ZONE, 5
	warp_event 28,  0, THE_BETWEENS_SAFARI_ZONE, 2
	warp_event 29,  0, THE_BETWEENS_SAFARI_ZONE, 3
	warp_event 31, 22, THE_BETWEENS_METROID, 1
	warp_event 31, 23, THE_BETWEENS_METROID, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 25, 21, BGEVENT_READ, TheBetweensSafariZoneSign1
	bg_event 11, 13, BGEVENT_READ, TheBetweensSafariZoneSign2
	bg_event  7,  5, BGEVENT_ITEM, TheBetweensSafariZoneHiddenRevive

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  9,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, TheBetweensSafariZoneNightSlash, EVENT_GOT_TM26_NIGHT_SLASH
	object_event 18, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensSafariZoneMaxRevive, EVENT_GOT_THE_BETWEENS_SAFARI_ZONE_MAX_REVIVE
	object_event  8, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensSafariZoneMaxPotion, EVENT_GOT_THE_BETWEENS_SAFARI_ZONE_MAX_POTION
	object_event 13,  3, SPRITE_THE_EMPTY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTheEmpty3, EVENT_BEAT_THE_EMPTY_3
	object_event 28, 18, SPRITE_THE_EMPTY, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTheEmpty4, EVENT_BEAT_THE_EMPTY_4
	object_event 22,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerFancyLadHayden, 0
	object_event  7, 14, SPRITE_ERIKA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 1, TrainerKarenKaren1, 0
