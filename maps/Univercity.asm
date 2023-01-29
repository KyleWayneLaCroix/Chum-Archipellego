	object_const_def
;	const MAPNAME_OBJECTNAME

Univercity_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_NEWMAP, UnivercityFlypointCallback

UnivercityFlypointCallback:
	setflag ENGINE_FLYPOINT_UNIVERCITY
	endcallback

UnivercityFruitTree:
	fruittree FRUITTREE_UNIVERCITY

JSchoolSignScript:
	jumptext JSchoolSignText

KeepOffGrassSignScript:
	jumptext KeepOffGrassSignText

SarahGymSignScript:
	jumptext SarahGymSignText

DormitorySignScript:
	jumptext DormitorySignText

TracksSignScript:
	jumptext TracksSignText

JSchoolSignText:
	text "Edward J. Meeman"
	line "Journalism School"

	para "Training today's"
	line "students for the"
	cont "jobs of yesterday"
	done

KeepOffGrassSignText:
	text "Keep off grass"
	line "Wild #MON"
	cont "habitat."
	done

SarahGymSignText:
	text "Pink Grass Gym"
	line "The only #gym"
	done

DormitorySignText:
	text "Richard & Clark"
	line "Tower Dorms."
	done

TracksSignText:
	text "R. P. Tracks"
	done

Univercity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 9, 9, METROID_CYBERSPACE_EXIT, 3
	warp_event 15, 17, UNIVERCITY_POKECENTER_1F, 1
	warp_event 23, 17, UNIVERCITY_MART_1F, 3
	warp_event 15, 25, CAMPUS_MISSION, 1
	warp_event 19,  5, JUNGLE_GATE, 1
	warp_event 34, 29, SARAH_GYM, 1
	warp_event 11, 17, MEEMAN_1F, 1
	warp_event 31, 23, DORM_1F, 1
	warp_event 33, 11, TRACKS, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 9, 17, BGEVENT_READ, JSchoolSignScript
	bg_event 23, 21, BGEVENT_READ, KeepOffGrassSignScript
	bg_event 29, 29, BGEVENT_READ, SarahGymSignScript
	bg_event 27, 23, BGEVENT_READ, DormitorySignScript
	bg_event 31, 11, BGEVENT_READ, TracksSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 26, 28, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityFruitTree, 0
