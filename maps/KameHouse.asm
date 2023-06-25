	object_const_def
;	const MAPNAME_OBJECTNAME


KameHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

KameHouseKyle:
	jumptextfaceplayer  KameHouseKyleText

KameHouseKyleText:
	text "KYLE: Oh hey, way"
	line "to beat my hit"
	cont "game:"

	para "CHUM ARCHIPELAGO"

	para "Now that you've"
	line "won, here's some"
	cont "tips for hidden"
	cont "areas!"

	para "The other side of"
	line "the DANK CAVE has"
	cont "a weed shop."

	para "One of CASEY's"
	line "homes has what"
	cont "you need to get"
	cont "inside."

	para "There are hidden"
	line "caves in the"
	cont "NORTHERN FOREST"
	cont "and the LINKS"
	cont "AWAKENING beach"
	cont "that contain"
	cont "LEGENDARY"
	cont "#MON."

	para "You can find"
	line "GRATE GUY CAINSO"
	cont "if you get a"
	cont "BRITE CARD from"
	cont "MAYBE VILLAGE and"
	cont "find three jumps"

	para "One jump is in"
	line "the BROCANO."

	para "Another in a"
	line "DUNGEON."

	para "The last is where"
	line "this all began."
	cont "In an area that"
	cont "in other places"
	cont "may have a"
	cont "password."

	para "Once you have all"
	line "three JUMPS and a"
	cont "BRITE CARD, there"
	cont "is one CHOMP that"
	cont "needs to be dealt"
	cont "with."

	para "That one's a bit"
	line "of a homebody."

	para "There's lots of"
	line "little things you"
	cont "probably missed"
	cont "along the way but"
	cont "those are the big"
	cont "remaining things."

	para "Thanks for going"
	line "through the whole"
	cont "hack."

	para "Maybe there'll be"
	line "some CHRISTMAS"
	cont "DLC to flesh out"
	cont "a few areas."

	para "Sorry the TRAINER"
	line "CLUBS were empty."

	para "Oh, and try going"
	line "back to my"
	cont "DESKTOP sometime."
	done

KameHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  2, 7, AWAKENING_BEACH, 3
	warp_event  3, 7, AWAKENING_BEACH, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 4, 4, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, KameHouseKyle, 0