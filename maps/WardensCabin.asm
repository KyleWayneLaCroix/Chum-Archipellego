	object_const_def
;	const MAPNAME_OBJECTNAME
	const NORTHERNFOREST_WARDEN
	const WARDEN_SIRFETCHD

WardensCabin_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script


WardensSirfetchdScript:
	jumptextfaceplayer WardensSirfetchdText

WardenScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHAINSAW
	iftrue .GotChainsaw
	checkevent EVENT_BEAT_TREE_BRIAN_1
	iftrue .BeatBrian
	writetext WardenIntroText
	waitbutton
	closetext
	end
.BeatBrian
	writetext WardenBeatBrianText
	waitbutton
	verbosegiveitem CHAINSAW
	setevent EVENT_GOT_CHAINSAW
.GotChainsaw:
	writetext WardenTalkAfter
	waitbutton
	closetext
	end

WardenIntroText:
	text "WARDEN: Oh, hey."

	para "Welcome to the"
	line "NORTHERN FOREST."

	para "I hope you're"
	line "enjoying nature."

	para "I'd show you the"
	line "sights if I was"
	cont "up to walking."

	para "I broke my ankle"
	line "when some weird,"
	cont "wriggling tree's"
	cont "roots moved under"
	cont "my feet."

	para "I know the forest"
	line "is overgrown and"
	cont "hard to navigate,"
	cont "but I can't get"
	cont "around right now."

	para "If you can deal"
	line "with that tree,"
	cont "I'll loan you my"
	cont "CHAINSAW."

	para "Then you can get"
	line "through the forest"
	cont "using that."

	para "I think it's a"
	line "#MON, maybe a"
	cont "SUDOWOODO."

	para "It's in the path"
	line "behind my house."
	done

WardenBeatBrianText:
	text "WARDEN: You took"
	line "care of that"
	cont "annoying tree in"
	cont "the back already?"

	para "It could talk?"

	para "Bizarre. Well as"
	line "long as it's not"
	cont "going to trip me"
	cont "again, whatever."

	para "Thanks for your"
	line "help, here you"
	cont "go!"
	done

WardenTalkAfter:
	text "WARDEN: You can,"
	line "use that CHAINSAW"
	cont "to CUT plants in"
	cont "your way."

	para "You can keep it,"
	line "I don't need it"
	cont "since my #MON"
	cont "can CUT for me."
	done

WardensSirfetchdText:
	text "SIRFETCH'D: Sirr!"
	done

WardensCabin_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  5,  9, NORTHERN_FOREST, 4
	warp_event  6,  9, NORTHERN_FOREST, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  0,  3, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, WardensSirfetchdScript, -1
	object_event  2,  3, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WardenScript, -1
