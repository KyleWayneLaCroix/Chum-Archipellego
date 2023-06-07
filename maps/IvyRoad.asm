	object_const_def
;	const MAPNAME_OBJECTNAME


IvyRoad_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

CaseysMailbox:
	jumptext CaseysMailboxText

BriansMailbox:
	jumptext BriansMailboxText

KylesMailbox:
	jumptext KylesMailboxText

SamsMailbox:
	jumptext SamsMailboxText

CaseysPoolControls:
IvyRoadDD:
	end

CaseysMailboxText:
	text "5333 IVY ROAD"
	line "HILDER HOUSE"
	done

BriansMailboxText:
	text "5335 IVY ROAD"
	line "WILSON HOUSE"
	done


KylesMailboxText:
	text "5337 IVY ROAD"
	line "LACROIX HOUSE"
	done

SamsMailboxText:
	text "5339 IVY ROAD"
	line "BROWN HOUSE"
	done

IvyRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9, 15, CASEYS_HOUSE, 1
	warp_event  9, 11, CASEYS_HOUSE, 3
	warp_event 25, 15, BRIANS_HOUSE, 1
	;warp_event 27, 10, BRIANS_SHED, 1
	warp_event 24, 11, BRIANS_HOUSE, 3
	warp_event 25, 11, BRIANS_HOUSE, 3
	warp_event 41, 15, KYLES_HOUSE, 1
	warp_event 41, 13, KYLES_HOUSE, 4
	;warp_event 43,  6, KYLES_SHED, 1
	warp_event 57, 15, SAMS_HOUSE, 1
	warp_event 58, 11, SAMS_HOUSE, 3
	warp_event 59, 11, SAMS_HOUSE, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  4,  9, BGEVENT_READ, CaseysPoolControls
	bg_event 11, 19, BGEVENT_READ, CaseysMailbox
	bg_event 27, 19, BGEVENT_READ, BriansMailbox
	bg_event 43, 19, BGEVENT_READ, KylesMailbox
	bg_event 59, 19, BGEVENT_READ, SamsMailbox

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 41,  8, SPRITE_DOG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT,0, IvyRoadDD, 0
