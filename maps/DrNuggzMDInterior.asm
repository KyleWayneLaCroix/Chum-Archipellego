	object_const_def
	const DR_NUGGZ_DOORMAN
	const DR_NUGGZ_SELLER

DrNuggzMDInterior_MapScripts:
	def_scene_scripts

	def_callbacks

DrNuggzSeller:
	opentext
	pokemart MARTTYPE_PHARMACY, MART_DR_NUGGZ
	closetext
	end

CheckCardRightScript:
	checkevent EVENT_SHOWED_WEED_CARD
	iftrue .End
	applymovement DR_NUGGZ_DOORMAN, DrNuggzDoormanRightMove
	sjump CheckCardLeftScript
.End:
	end
CheckCardLeftScript:
	checkevent EVENT_SHOWED_WEED_CARD
	iftrue .End
	applymovement DR_NUGGZ_DOORMAN, DrNuggzDoormanRightMove
	turnobject DR_NUGGZ_DOORMAN, DOWN
	opentext
	writetext DrNuggzINeedYourCard
	waitbutton
	checkitem MEDICAL_CARD
	iffalse .Sorry
	writetext DrNuggzWelcomeIn
	waitbutton
	writetext DrNuggzEnjoy
	waitbutton
	setevent EVENT_SHOWED_WEED_CARD
	end
.Sorry:
	writetext DrNuggzNeedCard
	waitbutton
	closetext 
	applymovement PLAYER, DrNuggzWalkDown
	warp DR_NUGGZ_MD_EXTERIOR, 13, 14
.End:
	end

DrNuggzWalkDown:
	step DOWN
	step_end

DrNuggzDoorman:
	jumptextfaceplayer DrNuggzEnjoy

DrNuggzNeedCard:
	text "I'm sorry sir."

	para "Only existing"
	line "patients with"
	cont "MEDICAL CARDs"
	cont "can enter and"
	cont "shop."
	done

DrNuggzWelcomeIn:
	text "This all checks"
	line "out sir."
	done

DrNuggzEnjoy:
	text "Enjoy your visit"
	line "Mr. Hilbur."
	done

DrNuggzINeedYourCard:
	text "Excuse me sir,"
	line "I need to check"
	cont "your medical card"
	done
DrNuggzDoormanRightMove:
	step RIGHT
	step_end

DrNuggzDoormanLeftMove:
	step LEFT
	step_end


DrNuggzMDInterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  9, DR_NUGGZ_MD_EXTERIOR, 2
	warp_event  5,  9, DR_NUGGZ_MD_EXTERIOR, 2

	def_coord_events
	coord_event 5, 8, -1, CheckCardLeftScript
	coord_event  6,  8, -1, CheckCardRightScript

	def_bg_events

	def_object_events
	object_event  4,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DrNuggzDoorman, 0
	object_event  5,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DrNuggzSeller, 0
