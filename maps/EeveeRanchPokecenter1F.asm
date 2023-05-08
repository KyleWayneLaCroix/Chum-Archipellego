	object_const_def
	const EEVEE_RANCH_NURSE
	const EEVEE_RANCH_TWIN1
	const EEVEE_RANCH_TWIN2
	const EEVEE_RANCH_JASMINE

EeveeRanchPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

EeveeRanchPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

EeveeRanchPokecenter1FJasmineScript:
	jumptextfaceplayer EeveeRanchPokecenter1FJasmineText

EeveeRanchPokecenter1FTwin1Script:
	faceplayer
	opentext
	checkevent EVENT_GAVE_EEVEE_TWIN_ICE_STONE
	iftrue .Twin1After
	writetext EeveeRanchPokecenter1FTwin1WantText
	yesorno
	iftrue .GiveItem
	writetext EeveeRanchPokecenter1FTwinNotGiveItemText
	waitbutton
	closetext
	end
.GiveItem:
	checkitem ICE_STONE
	iftrue .GiveIceStone
	writetext EeeveeRanchPokecenter1FTwinMissingItemText
	waitbutton
	closetext
	end
.GiveIceStone:
	takeitem ICE_STONE
	setevent EVENT_GAVE_EEVEE_TWIN_ICE_STONE
	writetext EeveeRanchPokecenter1FTwin1GaveIceStoneText
	waitbutton
	verbosegiveitem KINGS_ROCK
	waitbutton
.Twin1After:
	writetext EeveeRanchPokecenter1FTwin1AfterText
	waitbutton
	closetext
	end

EeveeRanchPokecenter1FTwin2Script:
	faceplayer
	opentext
	checkevent EVENT_GAVE_EEVEE_TWIN_LEAF_STONE
	iftrue .Twin2After
	writetext EeveeRanchPokecenter1FTwin2WantText
	yesorno
	iftrue .GiveItem
	writetext EeveeRanchPokecenter1FTwinNotGiveItemText
	waitbutton
	closetext
	end
.GiveItem:
	checkitem LEAF_STONE
	iftrue .GiveLeafStone
	writetext EeeveeRanchPokecenter1FTwinMissingItemText
	waitbutton
	closetext
	end
.GiveLeafStone:
	takeitem LEAF_STONE
	setevent EVENT_GAVE_EEVEE_TWIN_LEAF_STONE
	writetext EeveeRanchPokecenter1FTwin2GaveLeafStoneText
	waitbutton
	verbosegiveitem LUCKY_EGG
	waitbutton
.Twin2After:
	writetext EeveeRanchPokecenter1FTwin2AfterText
	waitbutton
	closetext
	end

EeveeRanchPokecenter1FTwin1GaveIceStoneText:
	text "OMIGOSH!"

	para "An ICE STONE!"

	para "Now EEVEE can be"
	line "a GLACEON!"

	para "Thank you sososo"
	line "much!"

	para "Here, have one of"
	line "my rocks!"
	done

EeveeRanchPokecenter1FTwin1AfterText:
	text "I can't wait for"
	line "EEVEE to be a"
	cont "GLACEON."

	para "I'm going to wait"
	line "a little bit"

	para "I don't want to"
	line "scare EEVEE."
	done

EeveeRanchPokecenter1FTwin2GaveLeafStoneText:
	text "WOW!"

	para "A LEAF STONE!"

	para "Now EEVEE can be"
	line "a LEAFEON!"

	para "Thanks! This is"
	line "great!"

	para "Here, have my"
	line "lucky charm!"
	done

EeveeRanchPokecenter1FTwin2AfterText:
	text "I'm going to turn"
	line "EEVEE into a"
	cont "LEAFEON on her"
	cont "birthday."

	para "It'll be so much"
	line "fun!"
	done

EeeveeRanchPokecenter1FTwinMissingItemText:
	text "Oh, thanks, but"
	line "it you don't have"
	cont "one..."

	para "Lemme know if you"
	line "find one, I'll"
	cont "give you a cool"
	cont "rock I found."
	done

EeveeRanchPokecenter1FTwin2WantText:
	text "I love EEVEE!"
	line "they're so cute!"

	para "LEAFEON is the"
	line "prettiest of the"
	cont "EEVEES!"

	para "They have lovely"
	line "green fur, and a"
	cont "their tail is so"
	cont "cute!"

	para "I want my EEVEE"
	line "to be one some"
	cont "day."

	para "Could you give me"
	line "a LEAF STONE?"
	done

EeveeRanchPokecenter1FTwin1WantText:
	text "I love EEVEE!"
	line "they're so cute!"

	para "GLACEON is the"
	line "prettiest of the"
	cont "EEVEES!"

	para "It's so cool and"
	line "has cute eyes."

	para "I want my EEVEE"
	line "to be one some"
	cont "day."

	para "Could you give me"
	line "an ICE STONE?"
	done

EeveeRanchPokecenter1FTwinNotGiveItemText:
	text "oh..."

	para "Well if you do"
	line "wanna give me"
	cont "one later, I'll"
	cont "give you somethin"
	cont "in return."
	done

EeveeRanchPokecenter1FJasmineText:
	text "I love working on"
	line "the ranch!"

	para "I work here as a"
	line "VET!"
	done


EeveeRanchPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, EEVEE_RANCH_EXTERIOR, 3
	warp_event  4,  7, EEVEE_RANCH_EXTERIOR, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_MOM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchPokecenter1FNurseScript, -1
	object_event  7,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchPokecenter1FTwin1Script, -1
	object_event  8,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchPokecenter1FTwin2Script, -1
	object_event  1,  4, SPRITE_JASMINE, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EeveeRanchPokecenter1FJasmineScript, -1
