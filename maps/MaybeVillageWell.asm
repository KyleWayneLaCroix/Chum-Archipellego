	object_const_def
;	const MAPNAME_OBJECTNAME


MaybeVillageWell_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, MaybeVillageWellChestCallback

MaybeVillageWellChestCallback:
	checkevent EVENT_MAYBE_VILLAGE_WELL_PP_UP
	iffalse .EndCallback
	changeblock 4, 6, $92
.EndCallback:
	endcallback

MaybeVillageWellPPUp:
	checkevent EVENT_MAYBE_VILLAGE_WELL_PP_UP
	iftrue .End
	opentext
	verbosegiveitem PP_UP
	waitbutton
	changeblock 4, 6, $92
	reloadmappart
	closetext
	setevent EVENT_MAYBE_VILLAGE_WELL_PP_UP
.End:
	end

MaybeVillageWell_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  7,  4, MAYBE_VILLAGE, 14
	warp_event  5,  3, MAYBE_VILLAGE, 13

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 4, 6, BGEVENT_READ, MaybeVillageWellPPUp

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
