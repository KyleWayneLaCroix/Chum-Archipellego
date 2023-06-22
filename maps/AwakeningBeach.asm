	object_const_def
	const AWAKENINGBEACH_SORA
	const AWAKENINGBEACH_LINK
	const AWAKENINGBEACH_FRUIT_TREE
	const AWAKENINGBEACH_POKE_BALL1

AwakeningBeach_MapScripts::
	def_scene_scripts
	scene_script AwakeningBeachNoop1Scene, SCENE_AWAKENING_BEACH_DUMMY

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AwakeningBeachFlypointCallback

AwakeningBeachNoop1Scene:
	end


AwakeningBeachFlypointCallback:
	setflag ENGINE_FLYPOINT_AWAKENING_BEACH
	blackoutmod AWAKENING_BEACH
	endcallback

AwakeningBeachSign:
	jumptext AwakeningBeachSignText

KameHouseSign:
	jumptext KameHouseSignText

DankCaveSign:
	jumptext DankCaveSignText

AwakeningLabSign:
	jumptext AwakeningLabSignText

TrainerHeroOfTimeLink:
	trainer HEROOFTIME, LINK, EVENT_BEAT_AWAKENING_BEACH_LINK, LinkSeenText, LinkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LinkAfterBattleText
	waitbutton
	closetext
	end

TrainerKeybladerSora:
	trainer KEYBLADER, SORA, EVENT_BEAT_AWAKENING_BEACH_SORA, SoraSeenText, SoraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SoraAfterBattleText
	waitbutton
	closetext
	end

AwakeningBeachFruitTree:
	fruittree FRUITTREE_AWAKENING_BEACH

AwakeningBeachHyperPotion:
	itemball HYPER_POTION

LinkSeenText:
	text "..."
	done

LinkBeatenText:
	text "Hiyah! Hrrraahhh"
	done

SoraSeenText:
	text "My friends are my"
	line "Power!"
	done

SoraBeatenText:
	text "DONALD? GOOFY?"
	line "Are you guys OK?"
	done

SoraAfterBattleText:
	text "A real leader"
	line "knows that destiny"
	cont "is beyond his"
	cont "control and"
	cont "accepts that."
	done

LinkAfterBattleText:
	text "..."

	para "He's staring at you"
	line "very intently..."

	para "Maybe he's mad you"
	line "beat him?"
	done

AwakeningBeachSignText:
	text "AWAKENING BEACH"

	para "Like that beach"
	line "in Kingdom Hearts"
	cont "/Links Awakening"
	done

KameHouseSignText:
	text "KAME HOUSE"
	done

AwakeningLabSignText:
	text "Awakening Lab"
	line "Keep Out"
	done

DankCaveSignText:
	text "DANK CAVE"

	para "But like, as in"
	line "unpleasantly wet."
	cont "Also dark."

	para "It's pretty cold"
	line "as well."

	para "It does smell of"
	line "weed too."

	para "We haven't found"
	line "any inside yet,"
	line "so don't get your"
	cont "hopes up."
	done


AwakeningBeach_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1, 27, AWAKENING_LAB, 1
	warp_event 16, 25, DANK_CAVE_1F, 1

	def_coord_events

	def_bg_events
	bg_event  9, 25, BGEVENT_READ, AwakeningBeachSign
	bg_event 15, 26, BGEVENT_READ, DankCaveSign
	bg_event  9, 37, BGEVENT_READ, KameHouseSign
	bg_event  0, 28, BGEVENT_READ, AwakeningLabSign

	def_object_events
	object_event 13, 18, SPRITE_LINK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerHeroOfTimeLink, -1
	object_event  2, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerKeybladerSora, -1
	object_event 14,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningBeachFruitTree, -1
	object_event 17, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AwakeningBeachHyperPotion, EVENT_AWAKENING_BEACH_HYPER_POTION
