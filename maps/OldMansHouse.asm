	object_const_def
;	const MAPNAME_OBJECTNAME


OldMansHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

OldMansHouseOldMan:
	jumptextfaceplayer OldMansHouseOldManText

OldMansHouseOldManText:
	text "ULRIRA: Er... Uhh"
	line "Hmm...."

	para "How to say...."

	para "Please call..."

	para "..."

	para ""
	line "       ...Outside"

	para "..."

	para ""

	para "It seems that old"
	line "man ULRIRA is a"
	cont "shy guy in person."
	done

OldMansHouseHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_OLD_MANS_HOUSE_HIDDEN_MAX_REVIVE

OldMansHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MAYBE_VILLAGE, 4
	warp_event 6, 8, MAYBE_VILLAGE, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 9, 6, BGEVENT_ITEM, OldMansHouseHiddenMaxRevive

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 2, 5, SPRITE_LA_GRAMPS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OldMansHouseOldMan, 0