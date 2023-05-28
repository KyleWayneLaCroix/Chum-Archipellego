	object_const_def
;	const MAPNAME_OBJECTNAME


MaybeVillage_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script MaybeVillageNoop1, SCENE_MAYBE_VILLAGE_NORMAL
	scene_script MaybeVillageJustStole, SCENE_MAYBE_VILLAGE_JUST_STOLE

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, MaybeVillageChestCallback


MaybeVillageChestCallback:
	checkevent EVENT_MAYBE_VILLAGE_FOCUS_BAND
	iffalse .CallbackEnd
	changeblock 38, 20, $33
	reloadmappart
.CallbackEnd:
	endcallback

MaybeVillageNoop1:
	end

MaybeVillageJustStole:
	opentext
	setmapscene MAYBE_VILLAGE_MART, SCENE_MAYBE_VILLAGE_MART_JUST_STOLE
	readmem wStolenItem
	ifequal 1, .Card
	ifequal 2, .Ball
	ifequal 3, .Heart
	ifequal 4, .LuckyEgg
	ifequal 5, .TM
.Card:
	setevent EVENT_BOUGHT_BRIGHT_CARD
	verbosegiveitem BRITE_CARD
	sjump .Proud
.Ball:
	verbosegiveitem ULTRA_BALL
	sjump .Proud
.Heart:
	verbosegiveitem HEART
	sjump .Proud
.LuckyEgg:
	verbosegiveitem LUCKY_EGG
	sjump .Proud
.TM:
	checkevent EVENT_BOUGHT_PSYCHIC
	iffalse .Psychic
	checkevent EVENT_BOUGHT_SIGNAL_BEAM
	iffalse .SignalBeam
	checkevent EVENT_BOUGHT_OMINOUS_WIND
	iffalse .OminousWind
	checkevent EVENT_BOUGHT_PLAY_ROUGH
	iffalse .PlayRough
	sjump .Proud
.Psychic:
	verbosegiveitem TM_PSYCHIC_M
	setevent EVENT_BOUGHT_PSYCHIC
	sjump .Proud
.SignalBeam:
	verbosegiveitem TM_SIGNAL_BEAM
	setevent EVENT_BOUGHT_SIGNAL_BEAM
	sjump .Proud
.OminousWind:
	verbosegiveitem TM_OMINOUS_WIND
	setevent EVENT_BOUGHT_OMINOUS_WIND
	sjump .Proud
.PlayRough:
	verbosegiveitem TM_PLAY_ROUGH
	setevent EVENT_BOUGHT_PLAY_ROUGH
	sjump .Proud
.Proud:
	waitbutton
	writetext MaybeVillageTheftText
	waitbutton
	closetext
	; Rename the player to THIEF later
	setscene SCENE_MAYBE_VILLAGE_NORMAL
	setval 0
	writemem wStolenItem
	setevent EVENT_HAS_STOLEN
	end
MaybeVillageTheftText:
	text "Guess what?"

	para "You got it for"
	line "free."

	para "Are you proud of"
	line "yourself?"
	done

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


MaybeVillageLedge:
	applymovement PLAYER, MaybeVillageLedgeMovement
	end

MaybeVillageLedgeMovement:
	jump_step DOWN
	step_end

MaybeVillageGuy:
	jumptextfaceplayer MaybeVillageGuyText

MaybeVillageGuyText:
	text "Life's been a bit"
	line "strange since the"
	cont "BAD EGG showed"
	cont "up."

	para "Not bad though."

	para "Wish that there"
	line "were fewer of the"
	cont "POCKET MONSTERS"
	cont "around though."
	done

MaybeVillageGirl:
	jumptextfaceplayer MaybeVillageGirlText

MaybeVillageGirlText:
	text "There's a weird"
	line "guy in the woods"
	cont "north of the"
	cont "village."

	para "He's trying to"
	line "fix up an old"
	cont "cabin."

	para "Some explosion"
	line "woke me up the"
	cont "other night."

	para "I'm not sure why"
	line "you would need"
	cont "bombs to work on"
	cont "a wooden cabin."
	done

MaybeVillageYoungster2:
	opentext
	checkevent EVENT_BEAT_OCTOROK_1
	iffalse .NotDone
	checkevent EVENT_BEAT_OCTOROK_2
	iffalse .NotDone
	checkevent EVENT_BEAT_OCTOROK_3
	iffalse .NotDone
	checkevent EVENT_BEAT_OCTOROK_4
	iffalse .NotDone
	checkevent EVENT_BEAT_OCTOROK_5
	iffalse .NotDone
	checkevent EVENT_BEAT_OCTOROK_6
	iffalse .NotDone
	checkevent EVENT_BEAT_OCTOROK_7
	iffalse .NotDone
	checkevent EVENT_BEAT_OCTOROK_8
	iffalse .NotDone
	checkevent EVENT_GOT_ITEM_FROM_LA_YOUNGSTER
	iftrue .Done
	writetext MaybeVillageYoungsterGiveItem
	waitbutton
	verbosegiveitem QUICK_CLAW
	setevent EVENT_GOT_ITEM_FROM_LA_YOUNGSTER
	waitbutton
.Done:
	writetext MaybeVillageYoungsterThanks
	waitbutton
	closetext
	end
.NotDone:
	writetext MaybeVillageYoungsterNotAllowed
	waitbutton
	closetext
	end

MaybeVillageYoungsterNotAllowed:
	text "My mom said I"
	line "can't go to the"
	cont "beach anymore."

	para "Not until all the"
	line "octopus monsters"
	cont "are gone..."
	done

MaybeVillageYoungsterGiveItem:
	text "You took care of"
	line "all of the octo-"
	cont "-things on the"
	cont "beach!"

	para "Now my mom HAS to"
	line "let me go there"
	cont "again."

	para "Here, have this"
	line "thing I found the"
	cont "other day!"
	done

MaybeVillageYoungsterThanks:
	text "Thanks again! I"
	line "missed going onto"
	cont "the beach!"
	done

MaybeVillageFocusBand:
	checkevent EVENT_MAYBE_VILLAGE_FOCUS_BAND
	iftrue .End
	opentext
	verbosegiveitem FOCUS_BAND
	waitbutton
	changeblock 38, 20, $33
	reloadmappart
	closetext
	setevent EVENT_MAYBE_VILLAGE_FOCUS_BAND
.End:
	end

MaybeVillageRock:
	jumpstd SmashRockScript

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
	coord_event 4, 18, -1, MaybeVillageLedge

	def_bg_events
;	bg_event x, y, type, script
	bg_event 27, 12, BGEVENT_READ, ChickenStatue
	bg_event 26, 12, BGEVENT_READ, ChickenStatue
	bg_event 27, 13, BGEVENT_READ, ChickenStatue
	bg_event 26, 13, BGEVENT_READ, ChickenStatue
	bg_event 38, 20, BGEVENT_READ, MaybeVillageFocusBand

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 16, 22, SPRITE_CHOMP, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageChomp, -1
	object_event 25, 20, SPRITE_CUCCO, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, MaybeVillageCuccoo, -1
	object_event 16, 14, SPRITE_CUCCO, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, MaybeVillageCuccoo, -1
	object_event 42, 24, SPRITE_CUCCO, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, MaybeVillageCuccoo, -1
	object_event  6, 25, SPRITE_LA_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MaybeVillageYoungster1, -1
	object_event 21, 30, SPRITE_LA_GRANNY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageGranny, -1
	object_event 29, 14, SPRITE_LA_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageGuy, -1
	object_event 32, 20, SPRITE_LA_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageGirl, -1
	object_event 44,  6, SPRITE_LA_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybeVillageYoungster2, -1
	object_event 32,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageRock, -1
	object_event 52,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageRock, -1
	object_event 52,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageRock, -1
	object_event 33,  5, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageRock, -1
	object_event 34,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageRock, -1
