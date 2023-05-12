	object_const_def
;	const MAPNAME_OBJECTNAME
	const MAYBE_VILLAGE_POKECENTER_NURSE
	const MAYBE_VILLAGE_POKECENTER_POKE_BALL_1
	const MAYBE_VILLAGE_POKECENTER_POKE_BALL_2
	const MAYBE_VILLAGE_POKECENTER_POKE_BALL_3
	const MAYBE_VILLAGE_POKECENTER_POKE_BALL_4


MaybeVillagePokemonCenter1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MaybeVillagePokemonCenterNurse:
	opentext
	writetext MaybeVillagePokemonCenterNurseText1
	waitbutton
	closetext
	turnobject MAYBE_VILLAGE_POKECENTER_NURSE, RIGHT
	pause 15
	disappear MAYBE_VILLAGE_POKECENTER_POKE_BALL_1
	refreshscreen
	pause 5
	disappear MAYBE_VILLAGE_POKECENTER_POKE_BALL_2
	refreshscreen
	pause 5
	disappear MAYBE_VILLAGE_POKECENTER_POKE_BALL_3
	refreshscreen
	pause 5
	special FadeOutPalettes
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes
	refreshscreen
	appear MAYBE_VILLAGE_POKECENTER_POKE_BALL_3
	refreshscreen
	pause 5
	disappear MAYBE_VILLAGE_POKECENTER_POKE_BALL_3
	appear MAYBE_VILLAGE_POKECENTER_POKE_BALL_2
	refreshscreen
	pause 5
	disappear MAYBE_VILLAGE_POKECENTER_POKE_BALL_2
	appear MAYBE_VILLAGE_POKECENTER_POKE_BALL_1
	refreshscreen
	pause 5
	turnobject MAYBE_VILLAGE_POKECENTER_NURSE, DOWN
	appear MAYBE_VILLAGE_POKECENTER_POKE_BALL_2
	appear MAYBE_VILLAGE_POKECENTER_POKE_BALL_3
	opentext
	writetext MaybeVillagePokemonCenterNurseText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	end

MaybeVillagePokemonCenterNurseText1:
	text "Hello! I'm the"
	line "vet!"

	para "If you give me"
	line "your pets, I can"
	cont "make them right"
	cont "as rain!"
	done

MaybeVillagePokemonCenterNurseText2:
	text "Here you go, I"
	line "would prefer you"
	cont "avoid dogfighting"
	cont "in future!"
	done

MaybePokeBall:
	end

MaybePokecenterGuy:
	jumptextfaceplayer MaybePokecenterGuyText

MaybePokecenterGuyText:
	text "Dude! You're"
	line "asking me when we"
	cont "started to live"
	cont "on this island?"

	para "What do you mean"
	line "by 'when?'"

	para "Whoa! The concept"
	line "just makes my"
	cont "head hurt!"
	done

MaybePokecenterBoy:
	jumptextfaceplayer MaybePokecenterBoyText

MaybePokecenterBoyText:
	text "Where are you"
	line "from, brother?"

	para "Outside BRO"
	line "ISLAND???"

	para "What is"
	line "'outside?'"

	para "Never heard of"
	line "it..."
	done

MaybeVillagePokemonCenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MAYBE_VILLAGE, 1
	warp_event 6, 8, MAYBE_VILLAGE, 1
	warp_event  9,  7, POKECENTER_2F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  5,  2, SPRITE_LA_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MaybeVillagePokemonCenterNurse, -1
	object_event  6,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MaybePokeBall, -1
	object_event  6,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaybePokeBall, -1
	object_event  6,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MaybePokeBall, -1
	object_event  6,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MaybePokeBall, -1
	object_event  7,  5, SPRITE_LA_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybePokecenterGuy, -1
	object_event  2,  6, SPRITE_LA_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybePokecenterBoy, -1
