	object_const_def
;	const MAPNAME_OBJECTNAME


SamsHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

SamsHouseBookshelf:
	jumptext SamsHouseBookshelfText

SamsHouseBookshelfText:
	text "Takeout menus,"
	line "WARHAMMER, STAR"
	cont "WARS, and HALO."

	para "That's most of"
	line "what's in there."
	done

SamsHouseSamScript:
	jumptextfaceplayer SamsHouseSamIntro

SamsHouseSamIntro:
	text "SAM: Hey dude."

	para "I guess you're in"
	line "my house now."

	para "Make yourself at"
	line "home."

	para "If you're lookin'"
	line "for KYLE, he's at"
	cont "his place."

	para "He's obsessed"
	line "with fixing up"
	cont "BRO ISLAND."
	done

SamsHouseCassidy:
	jumptext SamsHouseCassidyMeow

SamsHouseCassidyMeow:
	text "CASSIDY: ... mow"
	done
	
SamsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 18, 15, IVY_ROAD, 8
	warp_event 19, 15, IVY_ROAD, 8
	warp_event 20,  0, IVY_ROAD, 9

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 11,  9, BGEVENT_READ, SamsHouseBookshelf
	bg_event 20,  8, BGEVENT_READ, SamsHouseBookshelf
	bg_event 21,  8, BGEVENT_READ, SamsHouseBookshelf

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 10,  4, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SamsHouseSamScript, 0
	object_event 11, 12, SPRITE_CAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SamsHouseCassidy, 0
