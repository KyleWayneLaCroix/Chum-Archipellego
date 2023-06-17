	object_const_def
;	const MAPNAME_OBJECTNAME


GenderClinic_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

GenderClinicPokemon:
	opentext
	writetext GenderClinicNurseForPokemon
	waitbutton
	pokemart MARTTYPE_PHARMACY, MART_GENDER_CLINIC
	waitbutton
	closetext
	end

GenderClinicNurseForPokemon:
	text "Hello, welcome to"
	line "the GENDER CLINIC"

	para "I can help you"
	line "with your #MON"
	done

GenderClinicPlayer:
	opentext
	writetext GenderClinicNurseForPeople
	yesorno
	iffalse .Refused
	writetext GenderClinicNursePaperwork1
	waitbutton
	closetext
	special FadeBlackQuickly
	pause 60
	special FadeInQuickly
	showemote EMOTE_SLEEP, PLAYER, 30
	opentext
	writetext GenderClinicNursePaperwork2
	waitbutton
	closetext
	special FadeBlackQuickly
	pause 60
	special FadeInQuickly
	opentext
	writetext GenderClinicSixMonthsLater
	waitbutton
	writetext GenderClinicNursePaperwork3
	waitbutton
	closetext
	special FadeBlackQuickly
	pause 60
	special FadeInQuickly
	opentext
	writetext GenderClinicNurseAllDone
	yesorno
	iffalse .Refused
	writetext GenderClinicNurseFastWorking
	setevent EVENT_IS_GAY
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	clearflag ENGINE_KRIS_IN_CABLE_CLUB
	setflag ENGINE_PLAYER_IS_FEMALE
	setval (PAL_NPC_BLUE << 4)
	special SetPlayerPalette
	special UpdatePlayerSprite
	playsound SFX_FULL_HEAL
	waitsfx
	sjump .DoneChange
.Female:
	setflag ENGINE_KRIS_IN_CABLE_CLUB
	setval (PAL_NPC_RED << 4)
	special SetPlayerPalette
	clearflag ENGINE_PLAYER_IS_FEMALE
	special UpdatePlayerSprite
	sjump .DoneChange
.Refused:
	writetext GenderClinicNurseRefusedText
	waitbutton
	closetext
	end
.DoneChange:
	reloadmap
	opentext
	writetext GenderClinicNurseAfterText
	waitbutton
.End:
	closetext
	end

GenderClinicNurseRefusedText:
	text "No problem!"

	para "Come by again if"
	line "you change your"
	cont "mind!"
	done

GenderClinicNurseAfterText:
	text "You look great!"

	para "Feel free to come"
	line "by again later if"
	cont "you need to!"
	done

GenderClinicNurseFastWorking:
	text "Great! This is"
	line "pretty quick-"
	cont "-working stuff,"
	cont "so get ready!"
	done

GenderClinicNurseAllDone:
	text "Alright, and now"
	line "that you've seen"
	cont "the photo of the"
	cont "bill's author"
	cont "looking at you"
	cont "disdainfully for"
	cont "at least three"
	cont "minutes, we're"
	cont "good to go if"
	cont "you are still"
	cont "interested?"
	done

GenderClinicSixMonthsLater:
	text "×Spongebob Voice×"
	line "Six Months Later"
	done

GenderClinicNursePaperwork3:
	text "Alright, now that"
	line "The six month"
	cont "waiting period is"
	cont "up, you need to"
	cont "fill out 7 more"
	cont "forms and get 3"
	cont "letters..."
	done

GenderClinicNursePaperwork2:
	text "Okay, now that"
	line "that first batch"
	cont "is done, you'll"
	cont "need to go on a"
	cont "six-month waiting"
	cont "period."
	done

GenderClinicNursePaperwork1:
	text "Alright, well due"
	line "to the recently"
	cont "passed Needlessly"
	cont "Obstructing The"
	cont "Rad Application"
	cont "of New Sexuality"
	cont "Act."

	para "Also known as the"
	line "N.O. T.R.A.N.S."
	cont "ACT, there will"
	cont "be a lot of"
	cont "paperwork first."
	done

GenderClinicNurseForPeople:
	text "Hello, welcome to"
	line "the GENDER CLINIC"

	para "I can help you"
	line "with yourself."

	para "Would you like to"
	line "begin HORMONE"
	cont "THERAPY?"
	done

GenderClinicFarfetchd:
	jumptextfaceplayer GenderClinicFarfetchdText

GenderClinicFarfetchdText:
	text "FARFETCH'D: Faarr"
	done
GenderClinicMorty:
	jumptextfaceplayer GenderClinicMortyText

GenderClinicMortyText:
	text "I'm just here for"
	line "my FARFETCH'D."

	para "Wants to be a"
	line "LUXWAN."

	para "I would have"
	line "preferred a"
	cont "SIRFETCH'D, but"
	cont "I can't control"
	cont "her gender."

	para "That's for"
	line "REPUBLICANS to do"
	done

GenderClinicTangela:
	jumptext GenderClinicTangelaText

GenderClinicTangelaText:
	text "TANNNNGGLLLAAAA!"
	done
GenderClinicCoolTrainerF:
	jumptextfaceplayer GenderClinicCoolTrainerFText

GenderClinicCoolTrainerFText:
	text "I'm not even sure"
	line "how to check a"
	cont "TANGELA's sex."

	para "It's all just a"
	line "bunch of vines."

	para "You can't see"
	line "anything!"
	done

GenderClinic_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4,  9, ROUTE_F, 1
	warp_event  5,  9, ROUTE_F, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GenderClinicPokemon, 0
	object_event  6,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GenderClinicPlayer, 0
	object_event  2,  6, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GenderClinicMorty, 0
	object_event  1,  6, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GenderClinicFarfetchd, 0
	object_event  9,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GenderClinicCoolTrainerF, 0
	object_event  8,  8, SPRITE_TANGELA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GenderClinicTangela, 0
