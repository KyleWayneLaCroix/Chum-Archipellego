	object_const_def
;	const MAPNAME_OBJECTNAME
	const CASEYS_CABIN_CASEY

CaseysCabin_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

CaseysCabinCasey:
	opentext
	faceplayer
	checkevent EVENT_BEAT_CASEY_1
	iffalse .NotFought
	writetext CaseysCabinCaseyAfterText
	waitbutton
	closetext
	end
.NotFought:
	writetext CaseysCabinCaseyGreetings
	yesorno
	iffalse .Refused
	writetext CaseysCabinCaseySeenText
	waitbutton
	closetext
	winlosstext CaseysCabinCaseyBeatenText, CaseyCabinCaseyWonText 
	setlasttalked CASEYS_CABIN_CASEY
	loadtrainer CASEY, CASEY_1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CASEY_1
	opentext
    writetext CaseysCabinCaseyAfterVictoryText
    waitbutton
    verbosegiveitem BOMBS
    setmapscene MISPLACED_WOODS, SCENE_MISPLACED_WOODS_KAEPORA
    waitbutton
    closetext
    end
.Refused:
	writetext CaseysCabinRefused
	waitbutton
	closetext
	end

CaseysCabinCaseyAfterText:
	text "CASEY: Hey man,"
	line "glad to see ya"
	cont "again."

	para "I think the cabin"
	line "is just about"
	cont "done."

	para "Doesn't it look"
	line "great?"
	done

CaseyCabinCaseyWonText:
	text "I won my first"
	line "#MON battle."

	para "I'm the shit!"
	done

CaseysCabinCaseyAfterLossText:
	text "CASEY: Well let"
	line "me know if you"
	cont "wanna try again."

	para "KYLE said you had"
	line "to win to get the"
	cont "BOMBS."
	done

CaseysCabinCaseyGreetings:
	text "CASEY: Aw hey man"

	para "Welcome to the"
	line "new cabin!"

	para "Been werkin on it"
	line "for a while now,"
	cont "ASHLEY said she'd"
	cont "paint it when its"
	cont "done."

	para "KYLE told me"
	line "'bout the new guy"
	cont "and said I should"
	cont "help ya out, but"
	cont "I had to have one"
	cont "of them Poke Man"
	cont "battles first."

	para "That's more of"
	line "ASHLEY's thing,"
	cont "but I think I get"
	cont "the idea."

	para "Ya ready?"
	done

CaseysCabinRefused:
	text "CASEY: Alright,"
	line "come on by when"
	cont "you change yer"
	cont "mind!"
	done

CaseysCabinCaseySeenText:
	text "CASEY: Alright,"
	line "Time to Duel!"

	para "That's what yer"
	line "supposed ta say"
	cont "right?"
	done

CaseysCabinCaseyBeatenText:
	text "Nah man."
	done

CaseysCabinCaseyAfterVictoryText:
	text "CASEY: Good job"
	line "man."

	para "Never caught a"
	line "#MON, but"
	cont "I thought I did"
	cont "good."

	para "Anyway, here you"
	line "can borrow somma"
	cont "these BOMBs."

	para "Will help ya get"
	line "to some new spots"
	done

CaseysCabinBowlScript:
	opentext
	writetext CaseysCabinBowlDescription
	waitbutton
	checkitem MEDICAL_CARD
	iffalse .GetCard
	closetext
	end
.GetCard:
	writetext CaseysCabinFoundCardText
	waitbutton
	verbosegiveitem MEDICAL_CARD
	waitbutton
	closetext
	end

CaseysCabinBowlDescription:
	text "This reeks of"
	line "WEED."

	para "Stems and ashes"
	line "are caked into"
	cont "the sides."
	done

CaseysCabinFoundCardText:
	text "Wait..."

	para "Some card is"
	line "buried in the"
	cont "ashes..."
	done

CaseysCabin_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 5, 8, MISPLACED_WOODS, 1
	warp_event 6, 8, MISPLACED_WOODS, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 9, 2, BGEVENT_READ, CaseysCabinBowlScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 5, 5, SPRITE_TARIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CaseysCabinCasey, -1
