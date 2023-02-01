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

UnivercityWhiteGirlScript:
	jumptextfaceplayer UnivercityWhiteGirlText

UnivercityFisherScript:
	jumptextfaceplayer UnivercityFisherText

UnivercityDaisyScript:
	jumptextfaceplayer UnivercityDaisyText

UnivercityCooltrainerFScript:
	jumptextfaceplayer UnivercityCooltrainerFText

UnivercityCooltrainerMScript:
	jumptextfaceplayer UnivercityCooltrainerMText

UnivercityGentlemanScript:
	jumptextfaceplayer UnivercityGentlemanText

UnivercitySuperNerdScript:
	jumptextfaceplayer UnivercitySuperNerdText

UnivercityBugCatcherScript:
	jumptextfaceplayer UnivercityBugCatcherText

UnivercityRedScript:
	jumptextfaceplayer UnivercityRedText

UnivercityRedText:
	text "I'm doing a build"
	line "your own major"
	cont "to major in #-"
	cont "-MON Breeding."

	para "Did you know we"
	line "STILL don't know"
	cont "how any #MON"
	cont "reproduce?"

	para "It's true!"
	done

UnivercityBugCatcherText:
	text "I'm studying to"
	line "be a #MON"
	cont "ENTOMOLOGIST."

	para "There are WAY"
	line "fewer BUG #-"
	cont "-MON than actual"
	cont "BUGs, so it seems"
	cont "doable!"
	done

UnivercitySuperNerdText:
	text "I'm a commuter"
	line "student!"
	done

UnivercityGentlemanText:
	text "I wish there was"
	line "just one road out"
	cont "of here that did"
	cont "not involve going"
	cont "on a hike in tall"
	cont "grass crawling"
	cont "with #MON."

	para "This is a new"
	line "suit!"
	done

UnivercityCooltrainerMText:
	text "There's just so"
	line "much to do here!"

	para "We have a gym, a"
	line "bar, the dorm, a"
	cont "church place,"

	para "there's the ranch"
	line "to the east, the"
	cont "fishing to the"
	cont "south, AND a"
	cont "jungle & Volcano"
	cont "to the north!"

	para "I'm from PALETTE"
	line "TOWN, so I'm used"
	cont "to just 2 houses"
	cont "and a laboratory."

	para "This shit is"
	line "crazy!"
	done

UnivercityCooltrainerFText:
	text "I'm so tired."

	para "I had to do a lot"
	line "of shopping."

	para "Normally, not a"
	line "problem, but the"
	cont "elevator is out."

	para "Lugging bags of"
	line "stuff up and down"
	cont "five flights of"
	cont "stairs gets to be"
	cont "a bit much."
	done

UnivercityDaisyText:
	text "I love that we"
	line "have this little"
	cont "field by the dorm"

	para "It's so pretty!"
	done

UnivercityFisherText:
	text "I'm what they"
	line "call a mature"
	cont "student, so I"
	cont "need to get some"
	cont "walking in to"
	cont "stay spry."

	para "When you get to"
	line "be 27, you'll"
	cont "understand."
	done

UnivercityWhiteGirlText:
	text "UNIVERCITY has"
	line "the only gym in"
	cont "the ARCHIPELAGO!"

	para "They only hire"
	line "women, so I was"
	cont "thinking about"
	cont "joining, but it's"
	cont "the only gym, so"
	cont "any experience"
	cont "wouldn't really"
	cont "transfer."
	done

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
	object_event 12, 25, SPRITE_RED, SPRITEMOVEDATA_WALK_UP_DOWN, 4, 4, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, UnivercityRedScript, 0
	object_event 24, 25, SPRITE_DAISY, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UnivercityDaisyScript, 0
	object_event 16, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnivercityCooltrainerMScript, 0
	object_event  6, 27, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityBugCatcherScript, 0
	object_event 34, 31, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityWhiteGirlScript, 0
	object_event 36, 19, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 8, 8, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityFisherScript, 0
	object_event 29,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 8, 8, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityGentlemanScript, 0
	object_event  8, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercitySuperNerdScript, 0
	object_event 22, 18, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityCooltrainerFScript, 0
	object_event 26, 28, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityFruitTree, 0
