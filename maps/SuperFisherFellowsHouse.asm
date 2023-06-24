	object_const_def
;	const MAPNAME_OBJECTNAME


SuperFisherFellowsHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

SuperFisherFellow:
	opentext
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .Got
	opentext
	writetext SuperFisherFellowOffersYouRod
	yesorno
	iffalse .Refused
	waitbutton
	verbosegiveitem SUPER_ROD
	waitbutton
	setevent EVENT_GOT_SUPER_ROD
.Got:
	writetext SuperFisherFellowAfter
	waitbutton
	closetext
	end
.Refused:
	writetext SuperFisherFellowRefused
	waitbutton
	closetext
	end

SuperFisherFellowOffersYouRod:
	text "Hello there, I'm"
	line "the SUPER FISHER"
	cont "FELLOW!"

	para "People tell me I"
	line "have a rod that's"
	cont "just super!"

	para "Whipping it about"
	line "giving it a hard"
	cont "tug, feeling the"
	cont "nibbles through"
	cont "it..."

	para "My rod is the"
	line "talk of the town!"

	para "Nothing gets"
	line "people going like"
	cont "sitting in a boat"
	cont "grabbing hold of"
	cont "rod, and tugging"
	cont "it about, getting"
	cont "covered in salty"
	cont "spray!"

	para "Would you like to"
	line "accept my gift of"
	cont "a solid rod?"
	done

SuperFisherFellowAfter:
	text "I hope my SUPER"
	line "ROD treats you"
	cont "well."

	para "I've not had a"
	line "complaint so"
	cont "far!"
	done

SuperFisherFellowRefused:
	text "Well, my rod and"
	line "I are here,"
	cont "ready to go if"
	cont "you change your"
	cont "mind."
	done


SuperFisherFellowsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MAYBE_VILLAGE, 11
	warp_event 6, 8, MAYBE_VILLAGE, 11

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 8, 5, SPRITE_LA_FISHER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SuperFisherFellow, -1