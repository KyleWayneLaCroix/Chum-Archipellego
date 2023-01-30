DEF TRACKS_PBR_PRICE        EQU 200
	object_const_def
;	const MAPNAME_OBJECTNAME
	const TRACKS_BIKER_BENNY
	const TRACKS_BIKER_KAZU
	const TRACKS_BIKER_DWAYNE
	const TRACKS_BARTENDER
	const TRACKS_LOGAN
	const TRACKS_WAITRESS_BIKERS
	const TRACKS_COOLTRAINER_F
	const TRACKS_COOLTRAINER_M
	const TRACKS_WHITE_GIRL
	const TRACKS_YOUNGSTER
	const TRACKS_GENTLEMAN
	const TRACKS_SCIENTIST

Tracks_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TracksBartenderScript:
	faceplayer
	opentext
	writetext TracksBartenderIntro
	waitbutton
	writetext TracksBartenderPrice
	waitbutton
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, TRACKS_PBR_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	verbosegiveitem FRESH_WATER
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, TRACKS_PBR_PRICE
	special PlaceMoneyTopRight
	writetext TracksBartenderAfter
	waitbutton
	closetext
	end
.Refused:
	writetext TracksBartenderRefused
	waitbutton
	closetext
	end
.NotEnoughMoney:
	writetext TracksBartenderNotEnoughMoney
	closetext
	end

TracksLoganScript:
	trainer WEIRDO, LOGAN, EVENT_BEAT_WEIRDO_LOGAN, TracksLoganSeenText, TracksLoganBeatenText, 0, .Script

.Script:
	opentext
	writetext TracksLoganAfterText
	waitbutton
	closetext
	end


TrainerBikerKazu:
	trainer BIKER, KAZU, EVENT_BEAT_BIKER_KAZU, BikerKazuSeenText, BikerKazuBeatenText, 0, .Script

.Script:
	opentext
	writetext BikerKazuAfterText
	waitbutton
	closetext
	disappear TRACKS_BIKER_KAZU
	playsound SFX_EXIT_BUILDING
	waitsfx
	refreshscreen
	end

TrainerBikerBenny:
	trainer BIKER, BIKER_BENNY, EVENT_BEAT_BIKER_BENNY, BikerBennySeenText, BikerBennyBeatenText, 0, .Script

.Script:
	opentext
	writetext BikerBennyAfterText
	waitbutton
	closetext
	disappear TRACKS_BIKER_BENNY
	playsound SFX_EXIT_BUILDING
	waitsfx
	refreshscreen
	end

TrainerBikerDwayne:
	trainer BIKER, DWAYNE, EVENT_BEAT_BIKER_DWAYNE, BikerDwayneSeenText, BikerDwayneBeatenText, 0, .Script

.Script:
	opentext
	writetext BikerDwayneAfterText
	waitbutton
	closetext
	disappear TRACKS_BIKER_DWAYNE
	playsound SFX_EXIT_BUILDING
	waitsfx
	refreshscreen
	end

TracksWaitressBikers:
	opentext
	checkevent EVENT_BEAT_BIKER_KAZU
	iffalse .NotYet
	checkevent EVENT_BEAT_BIKER_BENNY
	iffalse .NotYet
	checkevent EVENT_BEAT_BIKER_DWAYNE
	iffalse .NotYet
	checkitem ITEMFINDER
	iftrue .After
	writetext TracksWaitressBikersGiveItemFinder
	waitbutton
	verbosegiveitem ITEMFINDER
	waitbutton
.After:
	writetext TracksWaitressBikersAfterText
	waitbutton
	closetext
	end
.NotYet:
	writetext TracksWaitressBikersText
	waitbutton
	closetext
	end

TracksCoolTrainerFScript:
	jumptextfaceplayer TracksCoolTrainerFText

TracksCoolTrainerMScript:
	jumptextfaceplayer TracksCoolTrainerMText

TracksWhiteGirlScript:
	jumptextfaceplayer TracksWhiteGirlText

TracksYoungsterScript:
	jumptextfaceplayer TracksYoungsterText

TracksScientistScript:
	jumptextfaceplayer TracksScientistText

TracksGentlemanScript:
	jumptextfaceplayer TracksGentlemanText

TracksHelmsmenScript:
	jumptext TracksHelmsmenText

TracksJukeboxScript:
	jumptext TracksJukeboxText

TracksJukeboxText:
	text "A jukebox!"

	para "..."

	para "It only takes 50"
	line "cent pieces."

	done

TracksHelmsmenText:
	text "A rack full of"
	line "copies of the"
	cont "DAILY HELMSMAN."

	para "It doesn't look"
	line "like anyone has"
	cont "taken a copy in"
	cont "years..."
	done

TracksGentlemanText:
	text "I'm so glad that"
	line "I bought this hat"

	para "Before I had a"
	line "fedora, it was"
	cont "like I didn't"
	cont "even have a"
	cont "personality!"

	para "Now look at me!"

	para "A guy with a"
	line "fedora!"

	para "An atheist too."

	para "Yep, I think I'm"
	line "going to spend 4"
	cont "years making this"
	cont "my whole deal."
	done

TracksScientistText:
	text "I am so sick of"
	line "students whining"
	cont "about buying"
	cont "textbooks."

	para "It's only ¥20,000"

	para "Also I wrote it,"
	line "so I know it's"
	cont "good."
	done

TracksYoungsterText:
	text "Uhhhh yes hello"

	para "I would like a"
	line "uh..."

	para " "
	line " sex on the beach"

	para "I'm not underage."

	para "Actually, I'm"
	line "overage."

	para "I'm like... 27."
	done

TracksWhiteGirlText:
	text "That guy in the"
	line "booth keeps"
	cont "trying to debate"
	cont "people."

	para "I moved over here"
	line "when he started"
	cont "saying that 2nd"
	cont "degree murder was"
	cont "illogical because"
	cont "motive shouldn't"
	cont "matter."
	done

TracksCoolTrainerMText:
	text "My friend always"
	line "drags me to this"
	cont "bar."

	para "Maybe she's into"
	line "me?"
	done

TracksCoolTrainerFText:
	text "I always go to"
	line "this bar with my"
	cont "boyfriend!"

	para "Mostly because"
	line "it's right by"
	cont "the dorms!"

BikerKazuSeenText:
	text "What are YOU"
	line "lookin' at?"
	done

BikerKazuBeatenText:
	text "Biking indoors"
	line "on a shag carpet"
	cont "is really hard."

	para "That distraction"
	line "is the only"
	cont "reason you won."
	done

BikerKazuAfterText:
	text "The GIT RECKD"
	line "gang isn't gonna"
	cont "take this laying"
	cont "down!"
	done

BikerDwayneSeenText:
	text "Vroom! Vroom!"
	done

BikerDwayneBeatenText:
	text "Vrrrr...."
	line "Vrrr......."
	done

BikerDwayneAfterText:
	text "Vrrvvrrvrrrvrr"
	done

BikerBennySeenText:
	text "Eyyyyyyyy I'm"
	line "Bikin' here!"
	done

BikerBennyBeatenText:
	text "Badda bing,"
	line "badda boom."
	done

BikerBennyAfterText:
	text "You're gonna"
	line "regret messing"
	cont "with the GIT"
	cont "RECKD gang!"
	done

TracksWaitressBikersText:
	text "Oh, uh excuse me,"
	line "but the pool room"
	cont "is uh full at the"
	cont "moment."

	para "There are some"
	line "bikers in there"
	cont "ruining the room."

	para "If you can get"
	line "rid of them, I"
	cont "can give you my"
	cont "old ITEMFINDER."
	done

TracksWaitressBikersGiveItemFinder:
	text "Oh thank you so"
	line "much!"

	para "Here, have my"
	line "old ITEMFINDER."
	done

TracksWaitressBikersAfterText:
	text "Thanks for taking"
	line "out those bikers"
	cont "for me!"

	para "Now we need some"
	line "replacement pool"
	cont "cues."
	done

TracksBartenderIntro:
	text "Welcome to Tracks"

	para "Unfortunately, we"
	line "currently only"
	cont "have PBR."
	done

TracksBartenderPrice:
	text "PBRs are ¥200"
	line "want one?"
	done

TracksBartenderRefused:
	text "Can't blame you."
	done

TracksBartenderNotEnoughMoney:
	text "Look you're broke"
	line "as shit."
	done

TracksBartenderAfter:
	text "Enjoy your PBR,"
	line "sorry about the"
	cont "selection..."
	done

TracksLoganSeenText:
	text "LOGAN: Hey, I'm"
	line "LOGAN!"

	para "Always looking to"
	line "meet new people &"
	cont "discuss new ideas"

	para "For instance, did"
	line "you know that"
	cont "sometimes slavery"
	cont "is justifiable?"

	para "You see, it's all"
	line "logical and legal"
	line "justifiable"
	line "specific & moral"
	line "religiously sound"

	para "..."

	para "..."

	para "This guy isn't"
	line "going to stop."

	para "Battling is the"
	line "only way to get"
	cont "him to shut up!"
	done

TracksLoganBeatenText:
	text "You see if they"
	line "are mentally"
	cont "handicapped, so"
	cont "they could not"
	cont "work otherwise,"
	cont "then..."
	done

TracksLoganAfterText:
	text "LOGAN: Next time"
	line "I'll tell you my"
	cont "opinions on gay"
	cont "people, divorce,"
	cont "and criminal"
	cont "justice!"

	para "They're all"
	line "bangers!"
	done

Tracks_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 17, 11, UNIVERCITY, 9
	warp_event 16, 11, UNIVERCITY, 9

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 18, 8, BGEVENT_UP, TracksHelmsmenScript
	bg_event 20,  1, BGEVENT_UP, TracksJukeboxScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 22,  9, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBikerBenny, EVENT_BEAT_BIKER_BENNY
	object_event 26, 11, SPRITE_BIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBikerKazu, EVENT_BEAT_BIKER_KAZU
	object_event 27,  7, SPRITE_BIKER, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBikerDwayne, EVENT_BEAT_BIKER_DWAYNE
	object_event  6,  3, SPRITE_CLERK, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 4, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TracksBartenderScript, 0
	object_event 11, 11, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TracksLoganScript, 0
	object_event 23,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TracksWaitressBikers, 0
	object_event  3,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TracksCoolTrainerFScript, 0
	object_event  4,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TracksCoolTrainerMScript, 0
	object_event  9,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TracksWhiteGirlScript, 0
	object_event  0,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TracksYoungsterScript, 0
	object_event 13,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TracksGentlemanScript, 0
	object_event 13,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TracksScientistScript, 0
