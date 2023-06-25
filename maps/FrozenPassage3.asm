	object_const_def
;	const MAPNAME_OBJECTNAME


FrozenPassage3_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerBoarderDouglas:
	trainer BOARDER, DOUGLAS, EVENT_BEAT_BOARDER_DOUGLAS, BoarderDouglasSeenText, BoarderDouglasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderDouglasAfterBattleText
	waitbutton
	closetext
	end

BoarderDouglasSeenText:
	text "I don't know how"
	line "I got here."
	done

BoarderDouglasBeatenText:
	text "Sorry about that,"
	line "I was doing that"
	cont "just to feel"
	cont "something."
	done

BoarderDouglasAfterBattleText:
	text "Where am I?"

	para "Why am I?"

	para "Where does this"
	line "lead?"
	done

FrozenPassageMaxPotion:
	itemball MAX_POTION

FrozenPassageHyperPotion:
	itemball HYPER_POTION

FrozenPassageHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_FROZEN_PASSAGE_HIDDEN_MAX_ETHER

FrozenPassage3Down:
	changeblock  8,  6, $44
	changeblock 10,  6, $57
	changeblock 12,  6, $57
	changeblock 14,  6, $57
	changeblock 16,  6, $57
	changeblock 18,  6, $45
	end

FrozenPassage3Up:
	changeblock  8,  6, $48
	changeblock 10,  6, $47
	changeblock 12,  6, $47
	changeblock 14,  6, $47
	changeblock 16,  6, $47
	changeblock 18,  6, $49
	end

FrozenPassage3SetEgg:
	checkmapscene BAD_EGG_EXTERIOR, SCENE_BAD_EGG_PHONE
	iffalse .End
	setmapscene BAD_EGG_EXTERIOR, SCENE_BAD_EGG_NONE
.End:
	end

FrozenPassage3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  7,  7, FROZEN_PASSAGE_2, 2
	warp_event 22, 15, BAD_EGG_EXTERIOR, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event  7,  8, -1, FrozenPassage3Up
	coord_event 21, 10, -1, FrozenPassage3Down
	coord_event 21,  8, -1, FrozenPassage3Up
	coord_event  7, 10, -1, FrozenPassage3Down
	coord_event 20, 16, -1, FrozenPassage3SetEgg

	def_bg_events
;	bg_event x, y, type, script
	bg_event 10,  3, BGEVENT_ITEM, FrozenPassageHiddenMaxEther

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 21,  6, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderDouglas, -1
	object_event 14,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FrozenPassageHyperPotion, EVENT_FROZEN_PASSAGE_HYPER_POTION
	object_event  6, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FrozenPassageMaxPotion, EVENT_FROZEN_PASSAGE_MAX_POTION
