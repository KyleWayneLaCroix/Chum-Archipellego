	object_const_def
	const CITYGEARHQBASEMENT_CLAY
	const CITYGEARHQBASEMENT_GHOSTCLAY

CityGearHQBasement_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CityGearHQBasementLockedDoorCallback



CityGearHQBasementLockedDoorCallback:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iffalse .skip1
	changeblock 12, 8, $10 ; open doorway top
	changeblock 12, 10, $12 ; open doorway bottom
	changeblock 16, 8, $18 ; closed puzzle left
	changeblock 18, 8, $19 ; closed puzzle right
.skip1
	checkevent EVENT_BEAT_GHOST_CLAY
	iffalse .skip2
	changeblock 12, 6, $0E ; hallway open left
	changeblock 14, 6, $16 ; hallway open right
.skip2
	endcallback

CityGearBasementGateScript:
	checkevent EVENT_BEAT_GHOST_CLAY
	iftrue .end
	jumptext CityGearBasementGateText
.end
	end

CityGearBasementGate2Script:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iftrue .end
	jumptext CityGearBasementGateText
.end
	end

CityGearBasementChamberPuzzle:
	refreshscreen
	setval UNOWNPUZZLE_AERODACTYL
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_SOLVED_AERODACTYL_PUZZLE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, CityGearHQBasementAwayFromPanelMovement
	turnobject PLAYER, UP
	opentext
	changeblock 12, 8, $10 ; open doorway top
	changeblock 12, 10, $12 ; open doorway bottom
	changeblock 16, 8, $18 ; closed puzzle left
	changeblock 18, 8, $19 ; closed puzzle right
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	writetext CityGearHQBasementFinalGateOpenText
	pause 20
	reloadmappart
	closetext
	end

FoampositeBall:
	itemball FOAMPOSITES

TrainerClay:
	trainer UNDEAD, CLAYWHOLE, EVENT_BEAT_UNDEAD_CLAY, WholeClaySeenText, WholeClayBeatenText, 0, .Script

.Script:
	opentext
	writetext WholeClayAfterBattleText
	waitbutton
	closetext
	special FadeBlackQuickly
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	disappear CITYGEARHQBASEMENT_CLAY
	pause 20
	special FadeInQuickly
	reloadmappart
	end

TrainerGhostClay:
	trainer GHOST_T, CG_GHOST, EVENT_BEAT_GHOST_CLAY, GhostClaySeenText, GhostClayBeatenText, 0, .Script

.Script:
	opentext
	writetext GhostClayAfterBattleText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeBlackQuickly
	special FadeInQuickly
	special FadeBlackQuickly
	special FadeInQuickly
	disappear CITYGEARHQBASEMENT_GHOSTCLAY
	waitsfx
	changeblock 12, 6, $0E ; hallway open left
	changeblock 14, 6, $16 ; hallway open right
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	pause 20
	reloadmappart
	special RestartMapMusic
	opentext
	writetext AfterGhostClayNarrationText
	waitbutton
	closetext
	end

CityGearBasementChamberDescriptionSign:
	jumptext CityGearBasementChamberDescriptionSignText

CityGearHQBasementAwayFromPanelMovement:
	step DOWN
	step DOWN
	step_end

CityGearBasementNoteScript:
	jumptext CityGearBasementNoteText

CityGearBasementChamberDescriptionSignText:
	text "This depicts the"
	line "iconography of"

	para "our lord in his"
	line "three forms:"

	para "The swoosh of his"
	line "followers."

	para "The numbers of"
	line "his victory"

	para "His holy sillhou-"
	line "-ette, mid-leap."
	done

CityGearBasementNoteText:
	text "The wall here"
	line "has writing you"
	cont "can read."

	para "The BEAST lives"
	line "even as it has"
	cont "died."

	para "He is now split"
	line "into three:"

	para "His body, huge"
	line "and monstrous."
	cont "Only able to"
	cont "speak and react"
	cont "in simple ways."

	para "His spirit, angry"
	line "and malevolent."
	cont "Only full of the"
	cont "rage he felt in"
	cont "life."

	para "His mind, trapped"
	line "and locked away"
	cont "within a puzzle"
	cont "of his god."

	para "Only by bringing"
	line "these back toge-"
	cont "-ther will he be"
	cont "mortal again."
	
	para "Only then can you"
	line "end his unlife"
	cont "once and for all."
	done

GhostClaySeenText:
	text "WHAT BRINGS YOU"
	line "TO MY DOMAIN?"

	para "FOAMPOSITES?"

	para "YOU INSOLENT"
	line "FOOL, YOU WILL"
	cont "LAY HANDS UPON"
	cont "THE OFFERING!"
	done

GhostClayBeatenText:
	text "NO, YOU CANNOT"
	line "DEFEAT ME!"
	done

GhostClayAfterBattleText:
	text "NO, I WILL NOT"
	line "FALL."
	done

AfterGhostClayNarrationText:
	text "You hear the"
	line "sound of moving"
	cont "rock behind you"
	cont "as the spirit"
	cont "fades and floats"
	cont "deeper into the"
	cont "basement."
	done

WholeClaySeenText:
	text "I AM WHOLE ONCE"
	line "MORE."

	para "FOAMPOSITES?"

	para "NO CHANCE. YOU"
	line "WORK FOR ME NOW"

	para "YOU CANNOT QUIT"

	para "YOU CANNOT GO"
	line "HOME."

	para "PREPARE TO"
	line "SUBMIT."

	done

WholeClayBeatenText:
	text "I DON'T NEED YOUR"
	line "FUCKING 2 WEEKS!"

	done

WholeClayAfterBattleText:
	text "YOU CAN'T QUIT."
	line "I WAS FIRING YOU"

	para "YOU CAN'T"
	line "NO"
	line "YOU CAN'T DO THIS"

	para "MY DAD OWNS THIS."

	para "YOU'RE INCOMPETENT"

	para "NOOOOOOOOOOOOO"

	done

CityGearBasementGateText:
	text "A strange, ether-"
	line "-eal wall blocks"
	cont "the way ahead."
	done

CityGearHQBasementFinalGateOpenText:
	text "It sounds like"
	line "stone is sliding"

	para "nearby as you"
	line "feel a presence"
	cont "slip past you."
	done

CityGearHQBasement_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  1, CITY_GEAR_HQ, 5

	def_coord_events

	def_bg_events
	bg_event 17,  8, BGEVENT_UP, CityGearBasementChamberPuzzle
	bg_event 18,  8, BGEVENT_UP, CityGearBasementChamberDescriptionSign
	bg_event 29,  5, BGEVENT_UP, CityGearBasementNoteScript
	bg_event 30,  5, BGEVENT_UP, CityGearBasementNoteScript
	bg_event 28,  5, BGEVENT_UP, CityGearBasementNoteScript
	bg_event 27,  5, BGEVENT_UP, CityGearBasementNoteScript
	bg_event 26,  5, BGEVENT_UP, CityGearBasementNoteScript
	bg_event 25,  5, BGEVENT_UP, CityGearBasementNoteScript
	bg_event 12,  8, BGEVENT_READ, CityGearBasementGate2Script
	bg_event 12,  9, BGEVENT_READ, CityGearBasementGate2Script
	bg_event 12, 11, BGEVENT_READ, CityGearBasementGate2Script
	bg_event 12, 10, BGEVENT_READ, CityGearBasementGate2Script
	bg_event 13,  7, BGEVENT_READ, CityGearBasementGateScript
	bg_event 14,  7, BGEVENT_READ, CityGearBasementGateScript

	def_object_events
	object_event  1,  6, SPRITE_BIG_CLAY, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerClay, -1
	object_event 16,  1, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerGhostClay, -1
	object_event  6,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FoampositeBall, EVENT_GOT_FOAMPOSITES
