	object_const_def
	const PLAYERSHOUSE1F_KYLE
	const PLAYERSHOUSE1F_KYLE2
	const PLAYERSHOUSE1F_KYLE3
	const PLAYERSHOUSE1F_POKE_BALL1
	const PLAYERSHOUSE1F_POKE_BALL2
	const PLAYERSHOUSE1F_POKE_BALL3

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FNoop1Scene, SCENE_PLAYERSHOUSE1F_MEET_KYLE
	scene_script PlayersHouse1FNoop2Scene, SCENE_PLAYERSHOUSE1F_CANT_LEAVE
	scene_script PlayersHouse1FNoop3Scene, SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FNoop1Scene:
	end

PlayersHouse1FNoop2Scene:
	end

PlayersHouse1FNoop3Scene:
	end

MeetKyleLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetKyleRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_KYLE, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_KYLE, KyleTurnsTowardPlayerMovement
	sjump MeetKyleScript

.OnRight:
	applymovement PLAYERSHOUSE1F_KYLE, KyleWalksToPlayerMovement
MeetKyleScript:
	opentext
	writetext KyleIntroText
	promptbutton
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setscene SCENE_PLAYERSHOUSE1F_CANT_LEAVE
	setevent EVENT_PLAYERS_HOUSE_KYLE_1
	clearevent EVENT_PLAYERS_HOUSE_KYLE_2
	writetext KyleGivesPokegearText
	promptbutton
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	sjump .PickAPokemon

.PickAPokemon:
	writetext InstructionsNextText
	waitbutton
	closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromRight
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromLeft
	sjump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_KYLE, KyleTurnsBackMovement
	sjump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_KYLE, KyleWalksBackMovement
	sjump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_KYLE, LEFT
	end

MeetKyleTalkedScript:
	playmusic MUSIC_MOM
	sjump MeetKyleScript

PokegearName:
	db "#GEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

KyleScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetKyleTalkedScript ; SCENE_PLAYERSHOUSE1F_MEET_MOM
	opentext
	writetext HurryUpPickaPokemonText
	waitbutton
	closetext
	end

LitwickPokeBallScript:
	turnobject PLAYERSHOUSE1F_KYLE, DOWN
	refreshscreen
	pokepic LITWICK
	cry LITWICK
	waitbutton
	closepokepic
	opentext
	writetext TakeLitwickText
	yesorno
	iffalse DidntChooseStarterScript
	disappear PLAYERSHOUSE1F_POKE_BALL1
	setevent EVENT_GOT_LITWICK_STARTER
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, LITWICK
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke LITWICK, 15, CHARCOAL
	closetext
	readvar VAR_FACING
	ifequal RIGHT, KyleDirectionsScript
	applymovement PLAYER, AfterLitwickMovement
	sjump KyleDirectionsScript

HonedgePokeBallScript:
	turnobject PLAYERSHOUSE1F_KYLE, DOWN
	refreshscreen
	pokepic HONEDGE
	cry HONEDGE
	waitbutton
	closepokepic
	opentext
	writetext TakeHonedgeText
	yesorno
	iffalse DidntChooseStarterScript
	disappear PLAYERSHOUSE1F_POKE_BALL2
	setevent EVENT_GOT_HONEDGE_STARTER
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, HONEDGE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke HONEDGE, 15, METAL_COAT
	closetext
	applymovement PLAYER, AfterHonedgeMovement
	sjump KyleDirectionsScript

SpirripPokeBallScript:
	turnobject PLAYERSHOUSE1F_KYLE, DOWN
	refreshscreen
	pokepic SPIRRIP
	cry SPIRRIP
	waitbutton
	closepokepic
	opentext
	writetext TakeSpirripText
	yesorno
	iffalse DidntChooseStarterScript
	disappear PLAYERSHOUSE1F_POKE_BALL3
	setevent EVENT_GOT_SPIRRIP_STARTER
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SPIRRIP
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SPIRRIP, 15, HARD_STONE
	closetext
	applymovement PLAYER, AfterSpirripMovement
	sjump KyleDirectionsScript


DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

KyleDirectionsScript:
	applymovement PLAYERSHOUSE1F_KYLE, KyleWalksToTableMovement
	opentext
	writetext KyleDirectionsText1
	waitbutton
	closetext
	applymovement PLAYER, PlayersHouse1F_GetOutOfWayComputerMovement
	turnobject PLAYER, UP
	applymovement PLAYERSHOUSE1F_KYLE, PlayersHouse1F_WalkToPCMovement
	turnobject PLAYERSHOUSE1F_KYLE, UP
	pause 30
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_KYLE, 15
	opentext
	writetext KyleDirectionsText2
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 100
	turnobject PLAYERSHOUSE1F_KYLE, DOWN
	opentext
	writetext KyleDirectionsText3
	waitbutton
	closetext
	follow PLAYERSHOUSE1F_KYLE, PLAYER
	applymovement PLAYERSHOUSE1F_KYLE, PlayersHouse1F_WalkToDoor1Movement
	turnobject PLAYERSHOUSE1F_KYLE, LEFT
	turnobject PLAYER, LEFT
	pause 25
	turnobject PLAYERSHOUSE1F_KYLE, DOWN
	turnobject PLAYER, UP
	opentext
	writetext KyleDirectionsText4
	waitbutton
	closetext
	applymovement PLAYERSHOUSE1F_KYLE, PlayersHouse1F_WalkToDoor2Movement
	turnobject PLAYERSHOUSE1F_KYLE, RIGHT
	opentext
	writetext KyleDirectionsText5
	promptbutton
	verbosegiveitem POKE_BALL, 8
	waitbutton
	closetext
	opentext
	verbosegiveitem POTION, 3
	waitbutton
	closetext
	opentext
	writetext KyleDirectionsText6
	waitbutton
	closetext
	setevent EVENT_GOT_A_STARTER
	applymovement PLAYER, PlayersHouse1F_LeaveMovement
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp AWAKENING_BEACH, 2, 29
	end

PlayersHouse_ReceiveTheBalls:
	jumpstd ReceiveItemScript
	end


PlayersHouse1FShelfScript:
	jumpstd DifficultBookshelfScript

PlayersHouse1FNintendoScript:
	jumptext PlayersHouse1FNintendoText

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouseTryToLeaveScript:
	turnobject PLAYERSHOUSE1F_KYLE, DOWN
	opentext
	writetext PlayersHouse1FWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, PlayersHouse1F_CantLeaveMovement
	end

PlayersHouse1F_CantLeaveMovement:
	step RIGHT
	step_end

KyleTurnsTowardPlayerMovement:
	turn_head RIGHT
	step_end

KyleWalksToPlayerMovement:
	slow_step RIGHT
	step_end

KyleTurnsBackMovement:
	turn_head LEFT
	step_end

KyleWalksBackMovement:
	slow_step LEFT
	step_end

KyleWalksToTableMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step_end

AfterSpirripMovement:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

AfterHonedgeMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

AfterLitwickMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

PlayersHouse1F_GetOutOfWayComputerMovement:
	step DOWN
	step DOWN
	step RIGHT
	step_end

PlayersHouse1F_WalkToPCMovement:
	step DOWN
	step DOWN
	step RIGHT
	step_end

PlayersHouse1F_WalkToDoor1Movement:
	step LEFT
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP	
	step UP
	step UP
	step_end

PlayersHouse1F_WalkToDoor2Movement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

PlayersHouse1F_LeaveMovement:
	step UP
	step_end

KyleIntroText:
	text "Good, it worked"
	line "I wasn't sure."

	para "You appear to be"
	line "in one piece."

	para "The restoration"
	line "process does not"
	cont "work for everyone,"

	para "but you seem fine"
	line "physically."

	para "Your memories may"
	line "return, as we fix"
	cont "up the code."

	para "Here, take this."
	done

KyleGivesPokegearText:
	text "Need to calibrate"
	line "a few things still."
	done

IsItDSTText:
	text "Is it Daylight"
	line "Saving Time now?"
	done

PlayersHouse1FWhereGoingText:
	text "You can't leave"
	done

DidntChooseStarterText:
	text "KYLE: Think it over"
	line "carefully."

	para "Your choice will"
	line "follow you until"
	cont "this is all done."
	done

TakeLitwickText:
	text "KYLE: You'll take"
	line "LITWICK, the"
	cont "fire ghost?"
	done

TakeHonedgeText:
	text "KYLE: Do you want"
	line "HONEDGE, the"
	cont "steel ghost?"
	done

TakeSpirripText:
	text "KYLE: So, you like"
	line "SPIRRIP, the"
	cont "rock ghost?"
	done

ChoseStarterText:
	text "You got your first"
	line "#MON!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

InstructionsNextText:
	text "Alright, so this"
	line "house is gonna"
	cont "disappear soon."

	para "I cobbled it"
	line "together from"
	cont "the early game."

	para "You took a bit"
	line "to wake up, so"
	cont "I redecorated."

	para "Anyway, you're"
	line "gonna need a"
	cont "#MON."

	para "I left you some"
	line "to choose from"
	cont "on the table."
	done

HurryUpPickaPokemonText:
	text "Hurry up, pick a"
	line "#MON!"
	done


KyleDirectionsText1:
	text "Good choice,"
	line "I like that one."

	para "So, to catch you"
	line "up, Bro Island"
	cont "was torn apart"
	cont "in an accident"
	cont "involving a"
	cont "washing machine"
	cont "and a usb stick"
	cont "of various ROMs."

	para "I'm honestly not"
	line "sure who you are,"
	cont "you were in some"
	cont "corrupted data I"
	cont "restored."

	para "Anyway, now that"
	line "you have your"
	cont "#MON let me"
	cont "check something"
	cont "real quick, just"
	cont "making sure that"
	cont "the building is"
	cont "still stable."

	done

KyleDirectionsText2:
	text "That's not good."

	para "So, I had to"
	line "delete a few"
	cont "things to fit in"
	cont "my TV and games"
	cont "so I wouldn't get"
	cont "bored while you"
	cont "were restored."

	para "It looks like"
	line "this place is"
	cont "unmoored from the"
	cont "gameworld a bit..."

	done

KyleDirectionsText3:
	text "Maybe I deleted"
	line "too much data."

	para "Probably should"
	line "not have gotten"
	cont "rid of Mom and"
	cont "Elm but kept"
	cont "parts of the lab"
	cont "and house..."

	para "I have a respawn"
	line "at my lab, but"
	cont "you haven't"
	cont "gotten a spawn"
	cont "Point yet..."

	para "Let me double"
	line "check something."

	para "Just follow me."
	line "Everything's"
	cont "fine."

	para "Probably."

	done

KyleDirectionsText4:
	text "Yeah that's not"
	line "supposed to be"
	cont "that way..."

	para "I probably could"
	line "have kept the"
	cont "TV the same size."

	para "I did have to"
	line "delete a lot to"
	cont "make room for the"
	cont "new tiles..."

	para "I may have been a"
	line "bit cavalier with"
	cont "this area's NPC"
	cont "data..."

	para "Also collision"
	line "data..."

	para "I probably didn't"
	line "need to fit an"
	cont "entire other game"
	cont "in this ROM bank"
	cont "either, but the"
	cont "new Isaac xpac is"
	cont "pretty cool."

	para "Anyway, uhhhh"
	line "lets get you out"
	cont "of here."	
	done

KyleDirectionsText5:
	text "Okay so this WARP"
	line "should drop you"
	cont "somewhere stable"
	cont "on BROLOGUE isle."

	para "Not sure where,"
	line "but it should be"
	cont "safe-ish."

	para "Take these items,"
	line "they'll help you."

	done

KyleDirectionsText6:
	text "Once you wake up,"
	line "head to Gear City"
	cont "then head north."

	para "My lab is in a"
	line "cemetary north of"
	cont "there, and we can"
	cont "regroup and get"
	cont "started on fixing"
	cont "this mess and get"
	cont "your memory back"
	cont "in order."

	para "Good luck!"

	done

PlayersHouse1FNintendoText:
	text "It's an N64, but"
	line "it seems to be"
	cont "playing The"
	cont "Binding of Isaac"

	done

PlayersHouse1FTVText:
	text "This TV is showing"
	line "the latest episode"
	cont "of Kylewurld."

	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  8, AWAKENING_BEACH, 1
	warp_event 15,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event 14,  3, SCENE_PLAYERSHOUSE1F_MEET_KYLE, MeetKyleLeftScript
	coord_event 15,  3, SCENE_PLAYERSHOUSE1F_MEET_KYLE, MeetKyleRightScript
	coord_event  9,  9, SCENE_PLAYERSHOUSE1F_CANT_LEAVE, PlayersHouseTryToLeaveScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FTVScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FShelfScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FShelfScript
	bg_event  4,  1, BGEVENT_READ, PlayersHouse1FTVScript
	bg_event  5,  1, BGEVENT_READ, PlayersHouse1FTVScript
	bg_event  6,  1, BGEVENT_READ, PlayersHouse1FTVScript
	bg_event  7,  1, BGEVENT_READ, PlayersHouse1FShelfScript
	bg_event  13, 1, BGEVENT_READ, PlayersHouse1FNintendoScript
	bg_event  13, 2, BGEVENT_READ, PlayersHouse1FNintendoScript
	bg_event  4,  4, BGEVENT_READ, PlayersHouse1FShelfScript
	bg_event  6,  4, BGEVENT_READ, PlayersHouse1FShelfScript
	bg_event  5,  4, BGEVENT_READ, PlayersHouse1FShelfScript
	bg_event  7,  4, BGEVENT_READ, PlayersHouse1FShelfScript

	def_object_events
	object_event 13,  3, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KyleScript, EVENT_PLAYERS_HOUSE_KYLE_1
	object_event  2,  2, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, KyleScript, EVENT_PLAYERS_HOUSE_KYLE_2
	object_event 13,  3, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, KyleScript, EVENT_PLAYERS_HOUSE_KYLE_2
	object_event  0,  2, SPRITE_KYLE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, KyleScript, EVENT_PLAYERS_HOUSE_KYLE_2
	object_event 10,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LitwickPokeBallScript, EVENT_LITWICK_POKEBALL
	object_event 11,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HonedgePokeBallScript, EVENT_HONEDGE_POKEBALL
	object_event 12,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SpirripPokeBallScript, EVENT_SPIRRIP_POKEBALL
