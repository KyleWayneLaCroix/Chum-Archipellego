	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_BETWEENS_FOREST_TREE_BRIAN

TheBetweensForest_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerTreeBrian5:
	trainer TREE_BRIAN, TREEBRIAN_5, EVENT_BEAT_TREE_BRIAN_5, TreeBrian5SeenText, TreeBrian5BeatenText, 0, .Script

.Script:
	opentext
	writetext TreeBrian5AfterText
	waitbutton
	playsound SFX_TOXIC
	earthquake 40
	waitsfx
	disappear THE_BETWEENS_FOREST_TREE_BRIAN
	verbosegiveitem MIRACLEBERRY
	waitbutton
	closetext
	end

TreeBrian5SeenText:
	text "Gonna be honest."
	line "trees are my"
	cont "least favorite"
	cont "thing to be."
	done

TreeBrian5BeatenText:
	text "I think that"
	line "itemballs are my"
	cont "favorite thing to"
	cont "be."

	para "Or maybe a 64."
	done

TreeBrian5AfterText:
	text "BRIAN: Nice to"
	line "see me again!"

	para "You're almost"
	line "to the end."

	para "Here's a hint:"

	para "You're going to"
	line "need to push a"
	cont "rock down a hole."

	para "Once you've done"
	line "that, just head"
	cont "to the gym and"
	cont "you've done it!"
	
	para "Beware the failed"
	line "BRIANS."

	para "KYLE made a lot"
	line "of clones."

	para "He was testing"
	line "something."

	para "Something big."

	para "I'm gonna go away"
	line "now."
	done

TheBetweensForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  9,  7,  THE_BETWEENS_TOWN, 3
	warp_event  5,  5,  THE_BETWEENS_ELITE_FOUR_ROOM, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 3,  9, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerTreeBrian5, EVENT_BEAT_TREE_BRIAN_5