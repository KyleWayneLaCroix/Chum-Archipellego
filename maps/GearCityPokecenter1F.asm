	object_const_def
	const GEARCITYPOKECENTER1F_NURSE
	const GEARCITYPOKECENTER1F_GAMEKID
	const GEARCITYPOKECENTER1F_SAILOR

GearCityPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

GearCityPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

GearCityPokecenter1FGameKidScript:
	jumptextfaceplayer GearCityPokecenter1FGameKidText

GearCityPokecenter1FSailorScript:
	jumptextfaceplayer GearCityPokecenter1FSailorText

GearCityPokecenter1FGameKidText:
	text "I'm playing this"
	line "cool new game"
	cont "for the GameBoy"
	cont "Color!"

	para "It's called"
	line "BRO MOUNTAIN!"

	para "It's really neat!"
	done

GearCityPokecenter1FSailorText:
	text "While the island"
	line "breaking up into"
	cont "many pieces was"
	cont "bad for many"
	cont "people, it has"
	cont "made me a lot"
	cont "more money."

	para "A lot more call"
	line "for ships now."

	para "So who's to say"
	line "if it was bad"
	cont "or not."

	para "No one I knew"
	line "died or got"
	cont "deleted."
	done

GearCityPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, GEAR_CITY, 1
	warp_event  4,  7, GEAR_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GearCityPokecenter1FNurseScript, -1
	object_event  7,  5, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GearCityPokecenter1FGameKidScript, -1
	object_event  1,  6, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GearCityPokecenter1FSailorScript, -1
