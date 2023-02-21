	object_const_def
;	const MAPNAME_OBJECTNAME
	
	const JUNGLE_GATE_LEE
	const JUNGLE_GATE_DRAGON


JungleGate_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script JungleGateNoop1, SCENE_JUNGLE_GATE_NO_BADGE
	scene_script JungleGateNoop2, SCENE_JUNGLE_GATE_GOT_BADGE

	def_callbacks
;	callback type, script

JungleGateNoop1:
JungleGateNoop2:
	end

JungleGateLeeScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SARAH1
	iftrue .HaveBadge
	writetext JungleGateLeeNoBadgeText
	waitbutton
	closetext
	end
.HaveBadge:
	checkevent EVENT_BEAT_LEE1
	iftrue .BeatLee
	writetext JungleGateLeeWannaBattle
	yesorno
	iffalse .RefusedLee
	writetext JungleGateLeeSeen
	waitbutton
	closetext
	winlosstext JungleGateLeeBeatenText, 0
	setlasttalked JUNGLE_GATE_LEE
	loadtrainer LEE, LEE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LEE1
	opentext
.BeatLee:
	writetext JungleGateLeeAfter
	waitbutton
	closetext
	end
.RefusedLee:
	writetext JungleGateLeeRefusedBattle
	waitbutton
	closetext
	end

JungleGateLeeDragonScript:
	faceplayer
	opentext
	cry DRAGAPULT
	writetext JungleGateLeeDragonText
	waitbutton
	closetext
	end

JungleGateNoBadgeRightScript:
	applymovement PLAYER, MovementJungleGateMoveLeft
JungleGateNoBadgeLeftScript:
	opentext
	writetext JungleGateLeeStopsYouText
	waitbutton
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	writetext JungleGateLeeComeHereText
	waitbutton
	closetext
	applymovement PLAYER, MovementJungleGateWalkToLee
	opentext
	writetext JungleGateLeeNoBadgeText
	waitbutton
	closetext
	end

JungleGateOfficerScript:
	jumptextfaceplayer JungleGateOfficerText

MuscleJungleGateSignScript:
	jumptext MuscleJungleGateSignText

JungleGateYoungsterScript:
	jumptextfaceplayer JungleGateYoungsterText

MovementJungleGateWalkToLee:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end

MovementJungleGateMoveLeft:
	step LEFT
	step_end

JungleGateYoungsterText:
	text "The dragon weirdo"
	line "won't let me into"
	cont "the jungle unless"
	cont "I have a badge."

	para "But there's only"
	line "the one gym."

	para "It's just kinda"
	line "cringe if there's"
	cont "only one gym."

	para "I guess I'll go"
	line "to the EEVEE"
	cont "RANCH instead."
	done


MuscleJungleGateSignText:
	text "MUSCLE JUNGLE"
	done

JungleGateOfficerText:
	text "I don't know who"
	line "that person with"
	cont "the dragon is."

	para "I'm supposed to"
	line "be in charge of"
	cont "the gate, but"
	cont "if they stop"
	cont "everyone from"
	cont "going into the"
	cont "jungle, I guess I"
	cont "won't have to go"
	cont "on any rescue"
	cont "missions..."

	para "Plus I don't"
	line "trust that dragon"
	done

JungleGateLeeWannaBattle:
	text "LEE: You did it,"
	line "you beat SARAH!"

	para "Thanks for doing"
	line "that. SARAH had"
	cont "Been waiting for"
	cont "a challenger for"
	cont "ages."

	para "So..."

	para "Wanna battle me?"
	line "My team is all"
	cont "DRAGON #MON"
	cont "and are way"
	cont "cooler & tougher."

	para "So, wanna fight?"
	done

JungleGateLeeRefusedBattle:
	text "LEE: Coward."
	done

JungleGateLeeSeen:
	text "LEE: Alright, get"
	line "ready to die!"
	done

JungleGateLeeBeatenText:
	text "LEE: DAMNIT!"
	line "Kyle fucked me."

	para "He promised me I"
	line "would have ETERN-"
	cont "-AMAX ETERNATUS."
	done

JungleGateLeeAfter:
	text "LEE: I'm going to"
	line "kill Kyle."

	para "Once I get him to"
	line "give me the full"
	cont "team he promised,"
	cont "I will beat you"
	cont "to a pulp."
	done

JungleGateLeeDragonText:
	text "DRAGAPULT: DRRAAA"
	done

JungleGateLeeNoBadgeText:
	text "LEE: If it isn't"
	line "a brand new #-"
	cont "MON trainer!"

	para "No badges to"
	line "your name."

	para "The MUSCLE"
	line "JUNGLE and the"
	cont "BROCANO beyond"
	cont "are too tough"
	cont "for a newbie like"
	cont "you."

	para "You should go to"
	line "my girlfriend's"
	cont "gym and get the"
	cont "CHUM badge to"
	cont "prove you are"
	cont "strong enough."

	para "She needs someone"
	line "to challenge her,"
	cont "she is the only"
	cont "gym."
	done

JungleGateLeeStopsYouText:
	text "HEY, YOU STOP"
	line "RIGHT THERE."
	done

JungleGateLeeComeHereText:
	text "You can't go out"
	line "there. Get over"
	cont "here."
	done


JungleGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 4, 9, UNIVERCITY, 5
	warp_event  5,  9, UNIVERCITY, 5
	warp_event  4,  0, MUSCLE_JUNGLE, 1
	warp_event  5,  0, MUSCLE_JUNGLE, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 4, 1, SCENE_JUNGLE_GATE_NO_BADGE, JungleGateNoBadgeLeftScript
	coord_event  5,  1, SCENE_JUNGLE_GATE_NO_BADGE, JungleGateNoBadgeRightScript

	def_bg_events
;	bg_event x, y, type, script
	bg_event 6, 0, BGEVENT_READ, MuscleJungleGateSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  0,  5, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, JungleGateLeeScript, -1
	object_event  0,  6, SPRITE_DRAGON, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, JungleGateLeeDragonScript, -1
	object_event  8,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JungleGateOfficerScript, 0
	object_event  8,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JungleGateYoungsterScript, 0