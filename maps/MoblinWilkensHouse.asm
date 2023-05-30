	object_const_def
;	const MAPNAME_OBJECTNAME
	const MOBLIN_WILKENS_HOUSE_MOBLIN_WILKEN


MoblinWilkensHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerMoblinWilken:
	trainer MOBLIN, WILKEN, EVENT_BEAT_MOBLIN_WILKEN, MoblinWilkenSeenText, MoblinWilkenBeatenText, 0, .Script

.Script:
	opentext
	writetext MoblinWilkenAfterText
	waitbutton
	verbosegiveitem TM_EARTHQUAKE
	waitbutton
	writetext MoblinWilkenAfter2Text
	closetext
	applymovement MOBLIN_WILKENS_HOUSE_MOBLIN_WILKEN, MoblinWilkenLeaveMovement
	pause 30
	turnobject MOBLIN_WILKENS_HOUSE_MOBLIN_WILKEN, UP
	opentext
	writetext MoblinWilkenAfter3Text
	waitbutton
	closetext
	turnobject MOBLIN_WILKENS_HOUSE_MOBLIN_WILKEN, DOWN
	pause 25
	applymovement MOBLIN_WILKENS_HOUSE_MOBLIN_WILKEN, MoblinWilkenLeaveMovement2
	disappear MOBLIN_WILKENS_HOUSE_MOBLIN_WILKEN
	refreshscreen
	end

MoblinWilkenSeenText:
	text "WILKEN: WHO DARES"
	line "ENTER MY NEWSROOM"

	para "THIS IS FOR STAFF"
	line "OF THE MOBLIN"
	cont "TIMES ONLY, YOU"
	cont "ARE AN INTRUDER!"

	para "What? Stealing"
	line "from the shop?"

	para "I had already"
	line "purchased that, I"
	cont "keep all of my"
	cont "belongings in my"
	cont "pants when out"
	cont "and about."

	para "Speaking of pants"
	line "you better not be"
	cont "with that guy who"
	cont "peed on my suit."

	para "I wouldn't have"
	line "been caught if I"
	cont "had my suit"
	cont "pockets..."
	done

MoblinWilkenBeatenText:
	text "I'm sorry, but in"
	line "a cooerced way"
	cont "that isn't at all"
	cont "an admission of"
	cont "guilt."

	para "In Minecraft."
	done

MoblinWilkenAfterText:
	text "FINE, here."

	para "Take the stupid"
	line "TM back."

	para "I didn't want it"
	line "anyway."
	done

MoblinWilkenAfter2Text:
	text "I'm going to"
	line "change my name"
	cont "and move to a"
	cont "different ROM"
	cont "HACK where my"
	cont "genius and skills"
	cont "are better"
	cont "appreciated."
	done

MoblinWilkenAfter3Text:
	text "This is not an"
	line "admission of"
	cont "guilt."

	para "I've never done"
	line "anything wrong,"
	cont "ever."
	done

MoblinWilkenLeaveMovement:
	step LEFT
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step_end

MoblinWilkenLeaveMovement2:
	step DOWN
	step_end

MoblinWilkensHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MISPLACED_WOODS, 5
	warp_event 6, 8, MISPLACED_WOODS, 5

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 3, 5, SPRITE_MOBLIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerMoblinWilken, EVENT_BEAT_MOBLIN_WILKEN