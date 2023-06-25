	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_BETWEENS_FACILITY_GRANNY
	const THE_BETWEENS_FACILITY_THE_EMPTY
	const THE_BETWEENS_FACILITY_POKE_BALL
	const THE_BETWEENS_FACILITY_POKE_BALL_2
	const THE_BETWEENS_FACILITY_CEO


TheBetweensFacility_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerTheEmpty6:
	trainer THE_EMPTY, THE_EMPTY_6, EVENT_BEAT_THE_EMPTY_6, TheEmpty6SeenText, TheEmpty6BeatenText, 0, .TheEmpty6Script

.TheEmpty6Script:
	writetext TheEmpty6AfterText
	waitbutton
	disappear THE_BETWEENS_FACILITY_THE_EMPTY
	playsound SFX_THUNDER
	closetext
	end

TheEmpty6SeenText:
	text "???: I  S P E A K"
	line "O N L Y T R U T H"

	para "I  A M  N O T"
	line " L Y I N G"
	done

TheEmpty6BeatenText:
	text "I  A M  N O T"
	line " J E S T I N G"
	done

TheEmpty6AfterText:
	text "I  A M  S C A R E D"

	para " H E L P  M E "
	done

TrainerMediumMargret:
	trainer MEDIUM, MARGRET, EVENT_BEAT_MEDIUM_MARGRET, MargretSeenText, MargretBeatenText, 0, .MargretScript

.MargretScript:
	endifjustbattled
	opentext
	writetext MargretAfterText
	waitbutton
	closetext
	end

MargretSeenText:
	text "Greetings, weary"
	line "traveler."

	para "I am MARGRET, a"
	line "powerful SPIRIT"
	cont "MEDIUM and also"
	cont "SECRETARY."
	done

MargretBeatenText:
	text "The spirits have"
	line "foretold your"
	cont "victory."

	para "I foolishly sought"
	line "to defy fate."
	done

MargretAfterText:
	text "I've had to go to"
	line "HR over religious"
	cont "discrimination at"
	cont "least 5 times now"
	done

TrainerCEOMollusk:
	trainer CEO, MOLLUSK, EVENT_BEAT_CEO_MOLLUSK, MolluskSeenText, MolluskBeatenText, 0, .MolluskScript

.MolluskScript:
	endifjustbattled
	opentext
	writetext MolluskAfterText
	waitbutton
	closetext
	end

MolluskSeenText:
	text "Due to inflation,"
	line "420 has gone up"
	cont "by 69"
	done

MolluskBeatenText:
	text "You know what,"
	line "don't bother."

	para "I'll make a team"
	line "that'll win any"
	cont "#MON battle, no"
	cont "problemo."

	para "Sorry pedo guy,"
	line "you really did"
	cont "ask for it."
	done

MolluskAfterText:
	text "Very concerning."

	para "Looking into this"

	done

TheBetweensFacilityRevive:
	itemball REVIVE

TheBetweensFacilityHyperPotion:
	itemball HYPER_POTION

TheBetweensFacilityHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_THE_BETWEENS_FACILITY_HIDDEN_MAX_POTION

TheBetweensFacilityHiddenElixer:
	hiddenitem ELIXER, EVENT_THE_BETWEENS_FACILITY_HIDDEN_MAX_POTION

TheBetweensFacilityPCScript:
	jumptext TheBetweensFacilityPCText

TheBetweensFacilityPCText:
	text "The computer"
	line "boots up, but the"
	cont "screen shows only"
	cont "a strange, damp"
	cont "girl with long"
	cont "hair by a well."
	done

TheBetweensFacilityBookshelfScript:
	jumptext TheBetweensFacilityBookshelf

TheBetweensFacilityBookshelf:
	text "Nothing but copies"
	line "of the LUSTY"
	cont "ARGONIAN MAID."
	done

TheBetweensFacility_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  2, 19,  THE_BETWEENS_TOWN, 5
	warp_event  3, 19,  THE_BETWEENS_TOWN, 6
	warp_event 13,  2, THE_BETWEENS_VICTORY_ROAD, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event  9,  1, BGEVENT_ITEM, TheBetweensFacilityHiddenMaxPotion
	bg_event  0, 11, BGEVENT_ITEM, TheBetweensFacilityHiddenElixer
	bg_event 10,  9, BGEVENT_READ, TheBetweensFacilityPCScript
	bg_event 11,  9, BGEVENT_READ, TheBetweensFacilityPCScript
	bg_event 11,  1, BGEVENT_READ, TheBetweensFacilityBookshelfScript
	bg_event 10,  1, BGEVENT_READ, TheBetweensFacilityBookshelfScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 3, 14, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 3, TrainerMediumMargret, 0
	object_event  7,  9, SPRITE_THE_EMPTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 4, TrainerTheEmpty6, EVENT_BEAT_THE_EMPTY_6
	object_event  0,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensFacilityHyperPotion, 0, EVENT_THE_BETWEENS_FACILITY_HYPER_POTION
	object_event 11, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensFacilityRevive, 0, EVENT_THE_BETWEENS_FACILITY_REVIVE
	object_event  8,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCEOMollusk, 0
