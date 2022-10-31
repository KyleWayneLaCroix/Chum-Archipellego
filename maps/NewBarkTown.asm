	object_const_def
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_RIVAL

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script NewBarkTownNoop1Scene, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU
	scene_script NewBarkTownNoop2Scene, SCENE_NEWBARKTOWN_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, NewBarkTownFlypointCallback

NewBarkTownNoop1Scene:
	end

NewBarkTownNoop2Scene:
	end

NewBarkTownFlypointCallback:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

NewBarkTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	applymovement PLAYER, NewBarkTown_RivalShovesYouOutMovement
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTownSign:
	jumptext NewBarkTownSignText


NewBarkTown_RivalShovesYouOutMovement:
	turn_head LEFT
	fix_facing
	jump_step RIGHT
	remove_fixed_facing
	step_end

NewBarkTown_RivalReturnsToTheShadowsMovement:
	step RIGHT
	step_end

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "A voice echoes in"
	line "your head."
	cont "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "They can conjure"
	line "fire from nowhere"

	para "you will die. Go"
	line "to the lab."
	done

NewBarkTownSignText:
	text "AWAKENING BEACH"

	para "Like that beach"
	line "in Kingdom Hearts"
	cont "/Links Awakening"
	done


NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  2, ELMS_LAB, 1

	def_coord_events
	coord_event  1,  1, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, NewBarkTown_TeacherStopsYouScene1

	def_bg_events
	bg_event  9,  9, BGEVENT_READ, NewBarkTownSign
