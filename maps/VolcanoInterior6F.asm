	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior6F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerTreeBrian4:
	trainer TREE_BRIAN, TREE_BRIAN_4, EVENT_BEAT_TREE_BRIAN_4, TreeBrian4SeenText, TreeBrian4BeatenText, 0, .Script

.Script:
	opentext
	writetext TreeBrian4AfterText
	waitbutton
	closetext
	playsound SFX_TOXIC
	earthquake 80
	waitsfx
	disappear VOLCANO_INTERIOR_6F_TREE_BRIAN
	opentext
	verbosegiveitem REVIVAL_HERB, 2
	waitbutton
	closetext
	end

TreeBrian4SeenText:
	text "As a tree, I can"
	line "grow wherever the"
	cont "hell I want."
	done

TreeBrian4BeatenText:
	text "I think I get"
	line "why the other TREE"
	cont "BRIANs have been"
	cont "outside."
	done

TreeBrian4AfterText:
	text "I think stuff's"
	line "leaking from the"
	cont "BROCANO."

	para "We BRIANs usually"
	line "don't congregate"
	cont "like this outside"
	cont "of BRIANMAS and"
	cont "BRISTER."

	para "Here, have some"
	line "weed, and have a"
	cont "nice day."
	done


VolcanoInterior6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 9, 3, VOLCANO_INTERIOR_5F_HALL, 2
	warp_event 33, 29, VOLCANO_EXTERIOR, 10

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  9, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBrian642, EVENT_BEAT_BRIAN_64_2
