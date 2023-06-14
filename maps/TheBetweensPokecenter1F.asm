	object_const_def


TheBetweensPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

TheBetweensPokecenter1FNurse:
	trainer NINJA_F, HINATA, EVENT_BEAT_NINJA_HINATA, NinjaHinataSeenText, NinjaHinataBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext NinjaHinataAfterText
	waitbutton
	closetext
	end

NinjaHinataSeenText:
	text "I never go back"
	line "on my word."

	para "Because that's"
	line "my ninja way."
	done

NinjaHinataBeatenText:
	text "I hate being weak"
	line "but, knowing that"
	cont "there are so many"
	cont "trainers better"
	cont "than me..."
	
	para "Makes me feel"
	line "excited."
	done

NinjaHinataAfterText:
	text "What is your"
	line "ninja way?"
	done

TrainerNinjaNaruto:
	trainer NINJA_M, NARUTO, EVENT_BEAT_NINJA_NARUTO, NinjaNarutoSeenText, NinjaNarutoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NinjaNarutoAfterText
	waitbutton
	closetext
	end

NinjaNarutoSeenText:
	text "BELIEVE IT!"
	done

NinjaNarutoBeatenText:
	text "If you don't like"
	line "the hand that"
	cont "fate's dealt you."

	para "Fight for a new"
	line "one."
	done

NinjaNarutoAfterText:
	text "I won't run away"
	line "anymore..."

	para "I won't go back"
	line "on my word..."

	para "That is my ninja"
	line "way."
	done

TheBetweensPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, THE_BETWEENS_SAFARI_ZONE, 8
	warp_event  4,  7, THE_BETWEENS_SAFARI_ZONE, 8
	warp_event  0,  7, THE_BETWEENS_LINKS_AWAKENING_INTERIOR, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 3, 1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TheBetweensPokecenter1FNurse, 0
	object_event  8,  5, SPRITE_MORTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerNinjaNaruto, 0
