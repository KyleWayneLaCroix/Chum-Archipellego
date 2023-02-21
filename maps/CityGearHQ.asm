	object_const_def
		const CITYGEARHQ_MARYLOUISE
		const CITYGEARHQ_JULIAN
		const CITYGEARHQ_JOSH
		const CITYGEARHQ_LONGO
		const CITYGEARHQ_Q
		const CITYGEARHQ_TAYLOR
		const CITYGEARHQ_NICK
		const CITYGEARHQ_AIMEE
		const CITYGEARHQ_MISS_DD
		const CITYGEARHQ_MIKE_B

CityGearHQ_MapScripts:
	def_scene_scripts
	scene_script CityGearHQNoop1Scene, SCENE_CITY_GEAR_HQ_NOOP
	
	def_callbacks
	callback MAPCALLBACK_TILES, CityGearHQBasementDoorCallback

CityGearHQNoop1Scene:
	end

CityGearHQBasementDoorCallback:
	checkevent EVENT_USED_CGHQ_BASEMENT_KEY
	iftrue .Change
	endcallback

.Change
	changeblock 18, 10, $1B ; open gate
	endcallback

CityGearHQBasementGate::
	checkevent EVENT_USED_CGHQ_BASEMENT_KEY
	iftrue .UsedCardKey
	checkitem BASEMENT_KEY
	iftrue .HaveCardKey
	opentext
	writetext CityGearHQBasementGateText
	waitbutton
	closetext
	end

.UsedCardKey:
	end

.HaveCardKey:
	opentext
	writetext OpenedTheCityGearHQBasementText
	waitbutton
	setevent EVENT_USED_CGHQ_BASEMENT_KEY
	playsound SFX_ENTER_DOOR
	changeblock 18, 10, $1B ; open gate
	reloadmappart
	waitsfx
	takeitem BASEMENT_KEY
	end

CityGearHQTryToEnterScene:
	special FadeOutMusic
	opentext
	writetext CityGearHQTryToEnterText1
	waitbutton
	closetext
	playmusic MUSIC_SAGE_ENCOUNTER
	turnobject PLAYER, LEFT
	opentext
	writetext CityGearHQTryToEnterText2
	waitbutton
	closetext
	applymovement PLAYER, CityGearHQTryToEnterMovement
	turnobject PLAYER, UP
	opentext
	writetext CityGearHQTryToEnterText3
	waitbutton
	closetext
	special RestartMapMusic
	end

CityGearHQTryToLeaveScene:
	opentext
	writetext CityGearHQTryToLeaveText
	waitbutton
	closetext
	applymovement PLAYER, CityGearHQTryToLeaveMovement
	end

CityGearHQCopierScript:
	jumptext CityGearHQCopierText

CityGearHQShelfScript:
	jumptext CityGearHQShelfText

CityGearHQPlantScript:
	jumptext CityGearHQPlantText

CityGearHQComputer1Script:
	jumptext CityGearHQComputer1Text

CityGearHQComputer2Script:
	jumptext CityGearHQComputer2Text

CityGearHQLaptopScript:
	jumptext CityGearHQLaptopText

CityGearHQBookshelfScript:
	jumptext CityGearHQBookshelfText

CityGearHQMissDDScript:
	jumptextfaceplayer CityGearHQMissDDText

CityGearHQMaryLouiseScript:
	jumptextfaceplayer CityGearHQMaryLouiseText

TrainerITGuyMikeB:
	trainer IT_GUY, MIKE_B, EVENT_BEAT_IT_GUY_MIKE_B, ITGuyMikeBSeenText, ITGuyMikeBBeatenText, 0, .Script

.Script:
	opentext
	writetext ITGuyMikeBAfterText
	waitbutton
	closetext
	end

TrainerWorkerQ:
	trainer WORKER, CGHQ_Q, EVENT_BEAT_WORKER_Q, WorkerQSeenText, WorkerQBeatenText, 0, .Script

.Script:
	opentext
	writetext WorkerQAfterText
	waitbutton
	closetext
	end

TrainerWeirdoNick:
	trainer WEIRDO, NICK, EVENT_BEAT_WEIRDO_NICK, WeirdoNickSeenText, WeirdoNickBeatenText, 0, .Script

.Script:
	opentext
	writetext WeirdoNickAfterText
	waitbutton
	closetext
	end

TrainerPhotographerJulian:
	trainer PHOTOGRAPHER, JULIAN, EVENT_BEAT_PHOTOGRAPHER_JULIAN, PhotographerJulianSeenText, PhotographerJulianBeatenText, 0, .Script

.Script:
	opentext
	writetext PhotographerJulianAfterText
	waitbutton
	closetext
	end

TrainerCEOLongo:
	trainer CEO, LONGO, EVENT_BEAT_CEO_LONGO, CEOLongoSeenText, CEOLongoBeatenText, 0, .Script

.Script:
	opentext
	writetext CEOLongoAfterText
	waitbutton
	closetext
	end

TrainerWhiteGirlTaylor:
	trainer WHITE_GIRL, TAYLOR1, EVENT_BEAT_WHITE_GIRL_TAYLOR, WhiteGirlTaylorSeenText, WhiteGirlTaylorBeatenText, 0, .Script

.Script:
	checkjustbattled
	iftrue .JustBattled
	opentext
	writetext WhiteGirlTaylorAfterText
	waitbutton
	closetext
	end

.JustBattled
	opentext
	writetext WhiteGirlTaylorPostBattleText
	waitbutton
	verbosegiveitem BASEMENT_KEY
	closetext
	setevent EVENT_GOT_BASEMENT_KEY
	end


;TrainerWhiteGirlTaylor:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_BASEMENT_KEY
;	iftrue .GotKey
;	writetext WhiteGirlTaylorSeenText
;	waitbutton
;	closetext
;	winlosstext WhiteGirlTaylorBeatenText, 0
;	setlasttalked CITYGEARHQ_TAYLOR
;	loadtrainer WHITE_GIRL, AIMEE
;	startbattle
;	reloadmapafterbattle
;	setevent EVENT_BEAT_WHITE_GIRL_TAYLOR
;	writetext WhiteGirlTaylorPostBattleText
;	promptbutton
;	closetext
;	verbosegiveitem BASEMENT_KEY
;	setevent EVENT_GOT_BASEMENT_KEY
;	opentext
;	writetext WhiteGirlTaylorAfterText
;	waitbutton
;	closetext
;	end

;.GotKey:
;	writetext WhiteGirlTaylorAfterText
;	waitbutton
;	closetext
;	end

TrainerWhiteGirlAimee:
	trainer WHITE_GIRL, AIMEE, EVENT_BEAT_WHITE_GIRL_AIMEE, WhiteGirlAimeeSeenText, WhiteGirlAimeeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WhiteGirlAimeeAfterText
	waitbutton
	closetext
	end

TrainerSupervisorJosh:
	trainer SUPERVISOR, JOSH1, EVENT_BEAT_SUPERVISOR_JOSH, SupervisorJoshSeenText, SupervisorJoshBeatenText, 0, .Script

.Script:
	opentext
	writetext SupervisorJoshAfterText
	waitbutton
	closetext
	end

CityGearHQTryToEnterMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

CityGearHQTryToLeaveMovement:
	step RIGHT
	step RIGHT
	step_end

CityGearHQTryToLeaveText:
	text "This is the front"
	line "entrance."

	para "It would be best"
	line "to leave the way"
	cont "you came in..."
	done

ITGuyMikeBSeenText:
	text "In addition to"
	line "being Director of"
	cont "IT, I'm also a"
	cont "volunteer cop."

	para "I'm placing you"
	line "under citizen's"
	cont "arrest!"
	done

ITGuyMikeBBeatenText:
	text "REQUESTING BACKUP"
	done

ITGuyMikeBAfterText:
	text "I'll let you off"
	line "with a warning"
	cont "this time."

	para "FOAMPOSITES?"

	para "Kid, I'm too busy"
	line "stopping crimi-"
	cont "-nals, fixing PCs"
	
	para "and being a prick"
	line "to worry about a"
	cont "pair of shoes."
	done

WorkerQSeenText:
	text "Hey, you can't be"
	line "in here!"
	done

WorkerQBeatenText:
	text "Whatever, just no"
	line "taking anything!"
	done

WorkerQAfterText:
	text "FOAMPOSITES?"
	line "Are you kiddin'?"

	para "If there were any"
	line "left to take, I"

	para "would already be"
	line "wearin' 'em."
	done

CEOLongoSeenText:
	text "BABY WE WERE BORN"
	line "TO RUUUUNNNN"

	para "Oh, excuse me, I"
	line "was busy enjoying"
	
	para "the greatest"
	line "musician of all"
	cont "time."

	para "Wait, who are you"
	line "and how did you"
	cont "get in here?"
	done

CEOLongoBeatenText:
	text "Born in the USA"
	line "is Republican."
	done

CEOLongoAfterText:
	text "Well, tramps like"
	line "you, baby, you're"
	cont "born to run."

	para "..."

	para "..."

	para "..."

	para "That means get"
	line "out of my office"
	done

WeirdoNickSeenText:
	text "Oh. An intruder."

	para "I GUESS I can"
	line "deal with you"
	cont "even though I"
	
	para "APPARENTLY"

	para "am not good"
	line "enough to do"
	cont "ANYTHING."
	done

WeirdoNickBeatenText:
	text "AIMEE sabotaged"
	line "me."
	done

WeirdoNickAfterText:
	text "I would have won"
	line "if they didn't"
	
	para "promote AIMEE"
	line "instead of me."
	done

PhotographerJulianSeenText:
	text "Oh, hey there,"
	line "you're kind of"
	cont "in my shot."
	done

PhotographerJulianBeatenText:
	text "Great, it's all"
	line "blurry now..."
	done

PhotographerJulianAfterText:
	text "Product setup is"
	line "on break now."

	para "FOAMPOSITES?"

	para "Haha, man I wish"
	line "I shot those last"
	cont "week."

	para "Maybe the graphic"
	line "designers have a"
	
	para "pair from when"
	line "they were editing"
	cont "the pics."
	done


SupervisorJoshSeenText:
	text "Hey! you don't"
	line "work here!"

	para "Is this a prank"
	line "Taylor is pulling"
	cont "again?"

	para "What the hash-"
	line "-brown hell is she"
	cont "doing now?"
	done

SupervisorJoshBeatenText:
	text "If I had had my"
	line "MONSTER.."
	done

SupervisorJoshAfterText:
	text "Well, I guess you"
	line "can walk around."

	para "FOAMPOSITES? Ha!"

	para "Those are all sold"
	line "out already."

	para "Shipped the last"
	line "pair an hour ago."

	para "If there's any of"
	line "them left, it'll"
	
	para "be in the photog-"
	line "-raphy room from"
	cont "the last shoot."
	done

CityGearHQMissDDText:
	text "MISS DD: Well,"
	line "you must be new!"

	para "I hope you're en-"
	line "-joying your"
	cont "first day!"

	para "What's that? You"
	line "want the new"
	cont "FOAMPOSITES?"

	para "Well, I'm afraid"
	line "I've been out"
	
	para "buying some"
	line "PORNOGRAPHY for"
	
	para "a gift basket,"
	line "so I'm not sure"

	para "what's going on"
	line "today."

	para "You may want to"
	line "go check in the"
	
	para "product setup"
	line "room. They'll"
	cont "be able to help."

	para "Head out of the"
	line "warehouse area,"
	
	para "go down the hall"
	line "and in the room"
	cont "with the blue rug"

	para "They'll be able to"
	line "set you straight!"
	done

WhiteGirlAimeeSeenText:
	text "Oh my god, who"
	line "are you?"

	para "Are you, like,"
	line "supposed to be"
	cont "here?"
	
	para "Oh no, am I sup-"
	line "-posed to fight"
	cont "you?"

	para "Okay, well uh,"
	line "it's time to uh"
	cont "DUEL!"
	done

WhiteGirlAimeeBeatenText:
	text "Oh no, I knew I"
	line "couldn't do this."
	done

WhiteGirlAimeeAfterText:
	text "My life is just"
	line "ruined."

	para "First I get a pro-"
	line "-motion, then I"
	cont "lose in a DIGIMON"
	cont "battle."

	para "I'm literally going"
	line "to die."
	done

WhiteGirlTaylorSeenText:
	text "I don't have time"
	line "to deal with some"
	
	para "guy off the street"
	line "right now."

	para "We got a big drop"
	line "tomorrow, and Nick"
	
	para "is throwing a fit"
	line "about Aimee get-"
	
	para "-ting the first"
	line "cupcake at lunch"
	cont "today."

	para "You want some"
	line "foamposites?"

	para "You and everyone"
	line "else in town."

	para "Fuck it, let's"
	line "fight. I'm not"
	
	para "allowed to beat"
	line "up coworkers."
	done

WhiteGirlTaylorBeatenText:
	text "That was tough"
	line "want a job?"
	done

WhiteGirlTaylorPostBattleText:
	text "You're pretty"
	line "good compared to"

	para "some of the other"
	line "people here."

	para "Look if you"
	line "really need some"
	cont "FOAMs, there"
	
	para "should be an off-"
	line "-ering pair in"
	cont "the basement."

	para "Here, have the"
	line "BASEMENT KEY."

	para "Good luck though,"
	line "HE will want to"
	cont "hang onto those."
	done

WhiteGirlTaylorAfterText:
	text "That key will let"
	line "you into the bas-"
	
	para "ment which has"
	line "the last pair of"
	cont "FOAMs in town."

	para "Be careful of"
	line "THE BEAST within."

	para "He has a temper."
	done

CityGearHQMaryLouiseText:
	text "Hello and welcome"
	line "to CITY GEAR."

	para "What? FOAMPOSITE?"

	para "Look, this is the"
	line "corporate office."

	para "We don't sell"
	line "anything here."

	para "If you want to"
	line "buy something you"
	cont "need to go to the"
	cont "store instead."
	done

CityGearHQTryToEnterText1:
	text "EXCUSE ME"
	done

CityGearHQTryToEnterText2:
	text "Yeah, you."

	para "Don't play dumb."
	line "Get Over here."
	done

CityGearHQTryToEnterText3:
	text "That's for emplo-"
	line "-yees and people"
	cont "with appointments"
	cont "only."

	para "I know what every"
	line "employee looks"
	cont "like and no one"
	cont "has anyone coming"
	cont "by today."

	para "You cannot go in."

	para "'best watch your"
	line "attitude. I've"
	cont "beaten up much"
	cont "tougher people"
	cont "than you."

	para "Now scram!"
	done

CityGearHQBasementGateText:
	text "BASEMENT GATE"
	
	para "It seems to be"
	line "locked."
	done

OpenedTheCityGearHQBasementText:
	text "You use the key"
	line "to the basement."

	para "The gate opens!"
	done

CityGearHQCopierText:
	text "The copier is"
	line "continuously spi-"
	cont "-tting out pics"
	cont "of Bugs Bunny in"
	cont "Space Jam."
	done

CityGearHQPlantText:
	text "This fake tree"
	line "has seen better"
	cont "days"
	done

CityGearHQShelfText:
	text "Hundreds of"
	line "sneakers, but"
	cont "no FOAMPOSITES"
	done

CityGearHQComputer1Text:
	text "This looks like"
	line "the source code"
	cont "for the CITY"
	cont "GEAR website."

	para "..."

	para "No wonder this"
	line "crashes so much"
	done

CityGearHQComputer2Text:
	text "The screen just"
	line "shows a picture"
	cont "of a naked woman"
	cont "with the head of"
	cont "Michael Jordan."
	done

CityGearHQLaptopText:
	text "This laptop is"
	line "from 2002."
	done

CityGearHQBookshelfText:
	text "An entire shelf"
	line "of old magazines."
	done

CityGearHQ_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 37, GEAR_CITY, 4
	warp_event  3, 37, GEAR_CITY, 4
	warp_event 23,  4, GEAR_CITY, 5
	warp_event 23,  5, GEAR_CITY, 6
	warp_event 18,  8, CITY_GEAR_HQ_BASEMENT, 1
	def_coord_events
	coord_event  9, 36, SCENE_CITY_GEAR_HQ_NOOP, CityGearHQTryToEnterScene
	coord_event 12, 36, SCENE_CITY_GEAR_HQ_NOOP, CityGearHQTryToLeaveScene

	def_bg_events
	bg_event 19, 11, BGEVENT_READ, CityGearHQBasementGate
	bg_event 18, 11, BGEVENT_READ, CityGearHQBasementGate
	bg_event 15, 25, BGEVENT_READ, CityGearHQCopierScript
	bg_event 14, 25, BGEVENT_READ, CityGearHQCopierScript
	bg_event 19, 23, BGEVENT_READ, CityGearHQCopierScript
	bg_event 18, 23, BGEVENT_READ, CityGearHQCopierScript
	bg_event 21,  1, BGEVENT_READ, CityGearHQCopierScript
	bg_event  5, 31, BGEVENT_READ, CityGearHQBookshelfScript
	bg_event  4, 31, BGEVENT_READ, CityGearHQBookshelfScript
	bg_event 22, 31, BGEVENT_READ, CityGearHQLaptopScript
	bg_event 22, 28, BGEVENT_READ, CityGearHQLaptopScript
	bg_event 22, 30, BGEVENT_READ, CityGearHQLaptopScript
	bg_event 22, 29, BGEVENT_READ, CityGearHQLaptopScript
	bg_event 18, 32, BGEVENT_READ, CityGearHQComputer1Script
	bg_event 19, 32, BGEVENT_READ, CityGearHQComputer1Script
	bg_event  7, 20, BGEVENT_READ, CityGearHQComputer1Script
	bg_event  6, 20, BGEVENT_READ, CityGearHQComputer1Script
	bg_event  3, 20, BGEVENT_READ, CityGearHQComputer1Script
	bg_event  2, 20, BGEVENT_READ, CityGearHQComputer1Script
	bg_event  5, 14, BGEVENT_READ, CityGearHQComputer2Script
	bg_event  4, 14, BGEVENT_READ, CityGearHQComputer2Script
	bg_event 20, 34, BGEVENT_READ, CityGearHQComputer2Script
	bg_event 21, 34, BGEVENT_READ, CityGearHQComputer2Script
	bg_event 20,  2, BGEVENT_READ, CityGearHQComputer2Script
	bg_event 21,  2, BGEVENT_READ, CityGearHQComputer2Script
	bg_event 11, 19, BGEVENT_READ, CityGearHQPlantScript
	bg_event 18,  1, BGEVENT_READ, CityGearHQPlantScript
	bg_event 11, 15, BGEVENT_READ, CityGearHQPlantScript
	bg_event 11, 18, BGEVENT_READ, CityGearHQPlantScript
	bg_event 10,  7, BGEVENT_READ, CityGearHQShelfScript
	bg_event  9,  7, BGEVENT_READ, CityGearHQShelfScript
	bg_event  8,  7, BGEVENT_READ, CityGearHQShelfScript
	bg_event 13,  3, BGEVENT_READ, CityGearHQShelfScript
	bg_event 12,  3, BGEVENT_READ, CityGearHQShelfScript
	bg_event 11,  3, BGEVENT_READ, CityGearHQShelfScript
	bg_event 10,  3, BGEVENT_READ, CityGearHQShelfScript
	bg_event  5,  7, BGEVENT_READ, CityGearHQShelfScript
	bg_event  4,  7, BGEVENT_READ, CityGearHQShelfScript
	bg_event  3,  7, BGEVENT_READ, CityGearHQShelfScript
	bg_event  2,  7, BGEVENT_READ, CityGearHQShelfScript
	bg_event  3,  3, BGEVENT_READ, CityGearHQShelfScript
	bg_event  2,  3, BGEVENT_READ, CityGearHQShelfScript
	bg_event 13, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event 12, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event 11, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event 15, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event  6, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event  5, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event  4, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event 10, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event  9, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event  8, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event  7, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event  3, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event  2, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event 17, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event 21, 11, BGEVENT_READ, CityGearHQShelfScript
	bg_event 16,  9, BGEVENT_READ, CityGearHQShelfScript
	bg_event 20, 11, BGEVENT_READ, CityGearHQShelfScript

	def_object_events
	object_event  2, 32, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CityGearHQMaryLouiseScript, -1
	object_event  9, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPhotographerJulian, -1
	object_event 19,  2, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerSupervisorJosh, -1
	object_event 14, 15, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerCEOLongo, -1
	object_event  7,  4, SPRITE_BILL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerWorkerQ, -1
	object_event 20, 35, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerWhiteGirlTaylor, -1
	object_event 21, 27, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerWeirdoNick, -1
	object_event 21, 25, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerWhiteGirlAimee, -1
	object_event 11,  8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CityGearHQMissDDScript, -1
	object_event  6, 25, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerITGuyMikeB, -1
