	object_const_def
;	const MAPNAME_OBJECTNAME
	const TRAINING_HUT_RYAN
	const TRAINING_HUT_MADDIE


RyanTrainingHut_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_NEWMAP, JungleHutFlypointCallback


JungleHutFlypointCallback:
	setflag ENGINE_FLYPOINT_JUNGLE
	endcallback

TrainingHutRyanScript:
	opentext
	faceplayer
	checkevent EVENT_BEAT_RYAN1
	iftrue .Beaten
	writetext TrainingHutRyanIntroText
	waitbutton
	turnobject TRAINING_HUT_RYAN, LEFT
	pause 5
	turnobject TRAINING_HUT_RYAN, UP
	pause 5
	turnobject TRAINING_HUT_RYAN, RIGHT
	pause 5
	turnobject TRAINING_HUT_RYAN, DOWN
	pause 5
	writetext TrainingHutRyanIntroText2
	waitbutton
	earthquake 60
	playsound SFX_STRENGTH
	waitsfx
	writetext TrainingHutRyanIntroText3
	yesorno
	iffalse .BackToTraining
	writetext TrainingHutRyanSeenText
	waitbutton
	closetext
	winlosstext TrainingHutRyanWinText, 0
	setlasttalked TRAINING_HUT_RYAN
	loadtrainer BRUNO, RYAN1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	setevent EVENT_BEAT_RYAN1
	opentext
.Beaten:
	checkitem HM_STRENGTH
	iftrue .AfterStrength
	writetext TrainingHutRyanAfterBattle
	waitbutton
	verbosegiveitem HM_STRENGTH
	waitbutton
	writetext TrainingHutRyanExplainStrength
	waitbutton
.AfterStrength:
	writetext TrainingHutRyanExposition
	waitbutton
.BackToTraining:
	writetext TrainingHutRyanBackToTraining
	waitbutton
	closetext
	end

TrainingHutMaddieScript:
	opentext
	faceplayer
	checkevent EVENT_BEAT_MADDIE1
	iftrue .Beaten
	writetext TrainingHutMaddieIntro
	yesorno
	iffalse .Refuse
	writetext TrainingHutMaddieSeenText
	waitbutton
	closetext
	winlosstext TrainingHutMaddieWinText, 0
	setlasttalked TRAINING_HUT_MADDIE
	loadtrainer MISTY, MADDIE1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	setevent EVENT_BEAT_MADDIE1
	opentext
.Beaten:
	writetext TrainingHutMaddieAfterText
	waitbutton
	closetext
	end
.Refuse:
	writetext TrainingHutMaddieRefusedText
	waitbutton
	closetext
	end

TrainingHutHealingMachineScript:
	opentext
	writetext TrainingHutHealingMachine
	waitbutton
	closetext
	special FadeOutPalettes
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes
	opentext
	writetext TrainingHutHealingMachine2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	end

TrainingHutHealingMachine:
	text "INSERT BALLS"
	line "FOR HEALING."
	done

TrainingHutHealingMachine2:
	text "YOUR #MON"
	line "ARE FULLY HEALED"

	para "ENJOY YOUR"
	line "TRAINING, SIR."
	done

TrainingHutMaddieIntro:
	text "MADDIE: You know"
	line "what's great?"

	para "Being a mermaid."

	para "I really don't"
	line "know why everyone"
	cont "didn't want to be"
	cont "a mermaid in here"

	para "I don't know much"
	line "about #MON,"
	cont "but RYAN said you"
	cont "fight with them."

	para "I told KYLE to"
	line "give me the only"
	cont "one I know."

	para "So, uh do you"
	line "want to fight?"
	done

TrainingHutMaddieSeenText:
	text "Okay, let's do a"
	line "DIGIMON battle!"
	done

TrainingHutMaddieWinText:
	text "MADDIE: Can we do"
	line "CATAN instead?"

	para "I've actually"
	line "played that one."

	para "It feels kind of"
	line "bad to make pets"
	cont "fight."
	done

TrainingHutMaddieAfterText:
	text "MADDIE: Why is"
	line "this game about"
	cont "making the little"
	cont "#MEN fight?"

	para "KYLE should have"
	line "made this more"
	cont "like STARDEW"
	cont "VALLEY."

	para "Oh well, at least"
	line "I'm a mermaid!"

	para "Wait, KIRBY isn't"
	line "a #MON?"

	para "KYLE is always"
	line "fucking with me."
	done

TrainingHutMaddieRefusedText:
	text "MADDIE: Oh thank"
	line "God, RYAN told me"
	cont "how it works, but"
	cont "I've been playing"
	cont "DIVINITY ORIGINAL"
	cont "SIN, and I forgot"
	cont "most of the #"
	cont "stuff."
	done

TrainingHutRyanIntroText:
	text "RYAN: WELCOME TO"
	done
TrainingHutRyanIntroText2:
	text "THE TRAINING DOME"
	done
TrainingHutRyanIntroText3:
	text "RYAN: You must be"
	line "the one KYLE sent"
	cont "over."

	para "So you're here to"
	line "help find the"
	cont "TERU-SAMA."

	para "It's inside the"
	line "BROCANO nearby."

	para "You will need to"
	line "be STRONG to make"
	cont "it through the"
	cont "heat and heavy"
	cont "rocks within."

	para "Before you go any"
	line "further, you must"
	cont "prove yourself in"
	cont "battle."

	para "Are you ready to"
	line "do battle?"
	done

TrainingHutRyanSeenText:
	text "RYAN: You stand"
	line "no chance against"
	cont "my prehistoric"
	cont "team!"
	done

TrainingHutRyanWinText:
	text "RYAN: Damn."

	para "I should have"
	line "known KYLE would"
	cont "not get TRICK"
	cont "ROOM working."

	para "Threw off my team"
	line "comp."
	done

TrainingHutRyanAfterBattle:
	text "RYAN: Well, I was"
	line "going easy on you"
	cont "but you were very"
	cont "good."

	para "I will now teach"
	line "you the secret of"
	cont "having your #-"
	cont "-MON push big"
	cont "rocks around!"
	done
TrainingHutRyanExplainStrength:
	text "RYAN: Now that"
	line "you have that HM,"
	cont "as long as you"
	cont "got at least one"
	cont "buff #MON,"
	cont "they will move"
	cont "mountains for you"
	cont "even if they do"
	cont "not know STRENGTH"

	para "And by mountains,"
	line "I mean big rocks."
	done
TrainingHutRyanExposition:
	text "RYAN: Good luck"
	line "in the BROCANO."

	para "You will know"
	line "the TERU-SAMA"
	cont "when you see it."

	para "It will feel..."

	para ""
	line "  wrong."

	para "Be careful, and"
	line "keep an eye out"
	cont "for BRIAN, he's"
	cont "been missing for"
	cont "a while and it's"
	cont "getting worrying"
	done

TrainingHutRyanBackToTraining:
	text "RYAN: Well, back"
	line "to training."

	para "Gonna try that"
	line "DRAGON BALL Z"
	cont "image training"
	cont "thing."
	done

RyanTrainingHut_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 11, 11, MUSCLE_JUNGLE, 3
	warp_event 12, 11, MUSCLE_JUNGLE, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 12,  1, BGEVENT_READ, TrainingHutHealingMachineScript
	bg_event 11,  1, BGEVENT_READ, TrainingHutHealingMachineScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  6,  6, SPRITE_BRUNO, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainingHutRyanScript, 0
	object_event 17,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainingHutMaddieScript, 0
