	object_const_def
;	const MAPNAME_OBJECTNAME

DangerousCave_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

DangerousToGoAloneScript:
	checkevent EVENT_TOOK_THAT
	iftrue .end
	opentext
	writetext OldManZelda1Sword
	verbosegiveitem STICK
	closetext
.end:
	end

DangerousCaveFireScript:
	jumptext DangerousCaveFireText

OldManZelda1Sword:
	text "IT'S DANGEROUS"
	line "TO GO ALONE."

	para "TAKE THIS."
	done

DangerousCaveFireText:
	text "You can't tell"
	line "what is burning."
	done

DangerousCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  5,  9, ROUTE_B, 3
	warp_event  6,  9, ROUTE_B, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 5, 4, BGEVENT_READ, DangerousToGoAloneScript
	bg_event 6, 4, BGEVENT_READ, DangerousToGoAloneScript
	bg_event 4, 4, BGEVENT_READ, DangerousCaveFireScript
	bg_event 7, 4, BGEVENT_READ, DangerousCaveFireScript
	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
