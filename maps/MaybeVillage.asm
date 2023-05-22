	object_const_def
;	const MAPNAME_OBJECTNAME


MaybeVillage_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script


ChickenStatue:
	jumptext ChickenStatueText

ChickenStatueText:
	text "Here Sleeps The"
	line "Flying Rooster"
	done

MaybeVillageChomp:
	opentext
	faceplayer
	writetext MaybeVillageChompText
	waitbutton
	closetext
	end

MaybeVillageChompText:
	text "WOOF!"
	done

MaybeVillageCuccoo:
	opentext
	writetext MaybeVillageCuccooText
	waitbutton
	closetext
	end

MaybeVillageCuccooText:
	text "Coo..."
	done

MaybeVillageYoungster1:
	jumptext MaybeVillageYoungster1Text

MaybeVillageYoungster1Text:
	text "Oh hey!!!!"

	para "You have those"
	line "cool monsters!"

	para "I wish my mom"
	line "let me have"
	cont "one..."
	done

MaybeVillageGranny:
	jumptext MaybeVillageGrannyText

MaybeVillageGrannyText:
	text "Oh hello there,"
	line "you are dressed"
	cont "a bit odd..."

	para "My husband is a"
	line "bit shy, can only"
	cont "talk to others on"
	cont "the phone."

	para "Someone has done"
	line "something to the"
	cont "phone though."

	para "It just has some-"
	line "-one saying"
	cont "'Paging <PLAYER>'"
	cont "over and over"
	cont "again."

	para "I wonder who"
	line "<PLAYER> is?"
	done

MaybeVillage_MapEvents:
	db 0, 0 ; filler


	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3, 26, MAYBE_VILLAGE_POKEMON_CENTER_1F, 1
	warp_event 15, 20, DOG_LADY_HOUSE, 1
	warp_event 17, 20, DOG_LADY_HOUSE, 3
	warp_event 15, 32, OLD_MANS_HOUSE, 1
	warp_event 27, 21, MARINS_HOUSE, 1
	warp_event 27, 31, PHONE_ROOM, 1
	warp_event 37, 30, AWAKENING_TRAINER_CLUB, 1
	warp_event 39, 14, MAYBE_VILLAGE_MART, 1
	warp_event 25,  4, QUADRUPLETS_HOUSE, 1
	warp_event 27,  4, QUADRUPLETS_HOUSE, 2
	warp_event 17,  3, SUPER_FISHER_FELLOWS_HOUSE, 1
	warp_event 56,  7, BAD_EGG_EXTERIOR, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 27, 12, BGEVENT_READ, ChickenStatue
	bg_event 26, 12, BGEVENT_READ, ChickenStatue
	bg_event 27, 13, BGEVENT_READ, ChickenStatue
	bg_event 26, 13, BGEVENT_READ, ChickenStatue

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 19, 21, SPRITE_CHOMP, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageChomp, -1
	object_event 25, 20, SPRITE_CUCCO, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, MaybeVillageCuccoo, -1
	object_event 6, 25, SPRITE_LA_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MaybeVillageYoungster1, -1
	object_event 21, 30, SPRITE_LA_GRANNY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageGranny, -1