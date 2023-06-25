	object_const_def
;	const MAPNAME_OBJECTNAME


DampCave_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, DampCaveChestCallback

DampCaveChestCallback:
	checkevent EVENT_DAMP_CAVE_FULL_RESTORE
	iffalse .End
	changeblock 18, 2, $92
.End:
	endcallback

DampCaveFullRestore:
	checkevent EVENT_DAMP_CAVE_FULL_RESTORE
	iftrue .End
	opentext
	verbosegiveitem FULL_RESTORE
	waitbutton
	changeblock 18, 2, $92
	reloadmappart
	closetext
	setevent EVENT_DAMP_CAVE_FULL_RESTORE
.End:
	end

DampCaveGuyScript:
	jumptextfaceplayer DampCaveGuyText

DampCaveGuyText:
	text "Man, it's been"
	line "dripping from the"
	cont "cieling so much"
	cont "that you need to"
	cont "be able to swim"
	cont "to get through"
	cont "here."

	para "I wonder what's"
	line "going on..."
	done

DampCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  6, 19, MAYBE_VILLAGE, 12
	warp_event  5, 19, MAYBE_VILLAGE, 12
	warp_event 11,  8, FROZEN_PASSAGE, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 18, 2, BGEVENT_READ, DampCaveFullRestore

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 5, 14, SPRITE_LA_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, DampCaveGuyScript, 0