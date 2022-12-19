	object_const_def
	const UNIVERCITYPOKECENTER1F_NURSE
	const UNIVERCITYPOKECENTER1F_GAMEKID1
	const UNIVERCITYPOKECENTER1F_GAMEKID2
	const UNIVERCITYPOKECENTER1F_YOUNGSTER
	const UNIVERCITYPOKECENTER1F_GENTLEMAN

UnivercityPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

UnivercityPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

UnivercityPokecenter1FGameKid1Script:
	jumptextfaceplayer UnivercityPokecenter1FGameKid1Text

UnivercityPokecenter1FGameKid2Script:
	opentext
	faceplayer
	writetext UnivercityPokecenter1FGameKid2Text
	waitbutton
	checkevent EVENT_GOT_LINK_CABLE_IN_UNIVERCITY
	iftrue .After
	writetext UnivercityPokecenter1FGameKid2LinkText
	waitbutton
	verbosegiveitem LINK_CABLE
	waitbutton
	setevent EVENT_GOT_LINK_CABLE_IN_UNIVERCITY
	; fallthrough
.After:
	writetext UnivercityPokecenter1FGameKid2AfterText
	waitbutton
	closetext
	end

UnivercityPokecenter1FYoungsterScript:
	jumptextfaceplayer UnivercityPokecenter1FYoungsterText

UnivercityPokecenter1FGentlemanScript:
	jumptextfaceplayer UnivercityPokecenter1FGentlemanText

UnivercityPokecenter1FYoungsterText:
	text "I'm a freshman &"
	line "am happy to talk"
	cont "about my faith!"

	para "My atheist prof-"
	line "-essor of atheism"
	cont "made me write an"

	para "essay saying that"
	line "GOD IS DEAD"

	para "but now I'm"
	line "making the class"
	cont "all about me!"

	para "We've spent 10"
	line "classes now deba-"
	cont "-ting religion."

	para "I hope he gets"
	line "hit by a car soon"
	
	para "so that he can"
	line "recant his hubris"
	cont "on his deathbed!"

	para "That would be a"
	line "wonderful day!"
	done

UnivercityPokecenter1FGentlemanText:
	text "I have a total"
	line "psycho student."

	para "I think he and"
	line "his pastor tried"
	cont "to hit me with a"
	cont "bus."

	para "I'm going to tell"
	line "him I became a"
	cont "Christian."

	para "It seems like the"
	line "safest option."
	done

UnivercityPokecenter1FGameKid1Text:
	text "We're playing the"
	line "new #MON game."

	para "It's pretty cool!"
	done

UnivercityPokecenter1FGameKid2Text:
	text "We're playing the"
	line "new #MON game."

	para "It runs like shit."
	done

UnivercityPokecenter1FGameKid2LinkText:
	text "Here, I don't"
	line "need this anymore"
	done

UnivercityPokecenter1FGameKid2AfterText:
	text "Everything is"
	line "wireless now, so"
	cont "we don't need a"

	para "LINK CABLE to"
	line "play together."

	para "Though some #-"
	line "-MON still use it"
	cont "to evolve like"

	para "HAUNTER or"
	line "GRAVELER."
	done


UnivercityPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, UNIVERCITY, 2
	warp_event  4,  7, UNIVERCITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnivercityPokecenter1FNurseScript, -1
	object_event  7,  5, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnivercityPokecenter1FGameKid1Script, -1
	object_event  8,  5, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnivercityPokecenter1FGameKid2Script, -1
	object_event  5,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UnivercityPokecenter1FYoungsterScript, -1
	object_event  2,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, UnivercityPokecenter1FGentlemanScript, -1
