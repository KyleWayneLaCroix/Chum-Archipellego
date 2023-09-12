	object_const_def
	const GEARCITY_GATEKEEPER
	const GEARCITY_COOLTRAINER_F
	const GEARCITY_COOLTRAINER_M
	const GEARCITY_GENTLEMAN
	const GEARCITY_SUSAN
	const GEARCITY_FRUITTREE

GearCity_MapScripts:
	def_scene_scripts
	scene_script GearCityNoop1Scene, SCENE_GEARCITY_NEED_FOAMS
	scene_script GearCityNoop2Scene, SCENE_GEARCITY_HAVE_FOAMS

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GearCityFlypointCallback
	callback MAPCALLBACK_TILES, CityGearHQGateCallback

GearCityNoop1Scene:
	end

GearCityNoop2Scene:
	end

GearCityFlypointCallback:
	setflag ENGINE_FLYPOINT_GEAR_CITY
	endcallback

CityGearHQGateCallback:
	checkevent EVENT_USED_THE_CITY_GEAR_EMPLOYEE_CARD_KEY
	iftrue .Change
	endcallback

.Change
	changeblock 8, 12, $98 ; open gate
	endcallback

CityGearHQCardKeySlot::
	opentext
	writetext CityGearHQCardKeySlotText
	waitbutton
	checkevent EVENT_USED_THE_CITY_GEAR_EMPLOYEE_CARD_KEY
	iftrue .UsedCardKey
	checkitem CARD_KEY
	iftrue .HaveCardKey
	end
.UsedCardKey:
	closetext
	end

.HaveCardKey:
	writetext InsertedTheCardKeyText
	waitbutton
	setevent EVENT_USED_THE_CITY_GEAR_EMPLOYEE_CARD_KEY
	playsound SFX_ENTER_DOOR
	changeblock 8, 12, $98 ; open gate
	reloadmappart
	closetext
	waitsfx
	opentext 
	writetext CityGearHQCardKeyUsedText
	waitbutton
	closetext
	takeitem CARD_KEY
	end

GearCityFruitTree:
	fruittree FRUITTREE_GEAR_CITY

GearCityCoolTrainerFScript:
	opentext
	writetext KristenText1
	waitbutton
	closetext
	faceplayer
	opentext
	writetext KristenText2
	waitbutton
	closetext
	turnobject GEARCITY_COOLTRAINER_F, LEFT
	opentext
	writetext KristenText3
	waitbutton
	closetext
	end

GearCitySusanScript:
	opentext
	writetext SusanText1
	waitbutton
	closetext
	faceplayer
	opentext
	writetext SusanText2
	waitbutton
	closetext
	turnobject GEARCITY_SUSAN, RIGHT
	end

GearCityCoolTrainerMScript:
	; sherm
	jumptextfaceplayer GearCityCoolTrainerMText

GearCityGentlemanScript:
	jumptextfaceplayer GearCityGentlemanText

GearCityGatekeeperScript:
	checkitem FOAMPOSITES
	iftrue .HasFoams
	faceplayer
	opentext
	writetext GatekeeperNoFoamTalkText
	waitbutton
	closetext
	turnobject GEARCITY_GATEKEEPER, LEFT
	end

.HasFoams:
	faceplayer
	opentext
	writetext GatekeeperGotFoamTalkText
	waitbutton
	closetext
	end

GearCityGatekeeperStopsYouScript:
	checkitem FOAMPOSITES
	iftrue .end
	playmusic MUSIC_MOM
	opentext
	writetext GateKeeperHoldOnText
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement GEARCITY_GATEKEEPER, GearCityGateKeeperRunsToYouMovement
	opentext
	writetext GateKeeperGateKeepingText
	waitbutton
	closetext
	follow GEARCITY_GATEKEEPER, PLAYER
	applymovement GEARCITY_GATEKEEPER, GearCityGateKeeperBringsYouBackMovement
	stopfollow
	opentext
	writetext GateKeeperStayOutText
	applymovement GEARCITY_GATEKEEPER, GearCityGateKeeperReturnMovement
	waitbutton
	closetext
	special RestartMapMusic
	end

.end
	end

GearCitySignScript:
	jumptext GearCitySignText

CityGearSignScript:
	jumptext CityGearSignText

CityGearHQSignScript:
	jumptext CityGearHQSignText

FutureConstructionSignScript:
	jumptext FutureConstructionSignText

GearCityGateKeeperRunsToYouMovement:
	step LEFT
	step LEFT
	turn_head UP
	step_end

GearCityGateKeeperBringsYouBackMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

GearCityGateKeeperReturnMovement:
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

CityGearHQCardKeySlotText:
	text "It's the CARD KEY"
	line "slot."

	para "It says its for"
	line "employees only."
	done

InsertedTheCardKeyText:
	text "<PLAYER> inserted"
	line "the CARD KEY."
	done

CityGearHQCardKeyUsedText:
	text "The gate opens!"
	done

GateKeeperHoldOnText:
	text "GATEKEEPER: HEY!"
	line "YOU THERE!"
	done

GateKeeperGateKeepingText:
	text "GATEKEEPER: You"
	line "can't go that"
	cont "way!"

	para "Not dressed like"
	line "that! You'll"
	cont "make us look bad."

	para "If you're going"
	line "to come from GEAR"
	cont "CITY, you need to"
	cont "rep us right."
	done


GateKeeperStayOutText:
	text "Go get some shoes"
	line "from CITY GEAR."
	cont "FOAMPOSITES are"
	cont "cool enough to"
	cont "make up for the"
	cont "rest of your look."

	para "Come back when"
	line "you've bought some."
	done

GatekeeperNoFoamTalkText:
	text "Your shoes suck."
	line "Just dog-shit."
	cont "Real ass-show of a"
	cont "pair of shoes."

	para "Sorry, but I can't"
	line "let you go into"
	cont "the forest, can't"
	cont "have the people"
	cont "there think our"
	cont "city could have"
	cont "such awful taste"
	cont "in kicks."

	para "Go get the new"
	line "FOAMPOSITES."

	para "The Weatherman's"
	line "are cool enough to"
	cont "make up for your"
	cont "lack of style."
	done

GatekeeperGotFoamTalkText:
	text "Kick-ass kicks!"
	line "Love those foams."

	para "Honestly, I'm"
	line "pretty jealous."
	done

GearCitySignText:
	text "GEAR CITY"
	line "a company town"

	para "Also the freshest"
	line "kicks around."
	cont "Save 5% with coupon"
	cont "code BROISLAND at"
	cont "checkout."

	para "Cannot be combined"
	line "with other offers."
	done

CityGearSignText:
	text "CITY GEAR Store"
	done

CityGearHQSignText:
	text "CITY GEAR CORP"
	line "HEADQUARTERS"
	done

FutureConstructionSignText:
	text "PREORDER THE CHUM"
	line "ARCHIPELAGO DLC"
	cont "SEASON PASS NOW!"

	para "Get early access"
	line "to new features"
	cont "such as the"
	cont "CHUM TOWER curre-"
	cont "-ntly under"
	cont "construction to"
	cont "your right!"

	para "Also get access"
	line "to gold skins for"
	cont "your #balls!"
	done


GearCityCoolTrainerMText:
	text "SHERM: No time to,"
	line "talk, new Foams"
	cont "droppin' today."

	para "What are foams?"
	line "Ha! Good one."
	done

KristenText1:
	text "KRISTEN: And then"
	line "I pretended to be"
	cont "fucking her"
	cont "boyfriend."

	para "They said the"
	line "drama would make"
	cont "the show better."

	para "Important thing is"
	line "I got ¥300, and-"
	done


KristenText2:
	text "KRISTEN: Excuse"
	line "me, this is a"
	cont "private convers-"
	cont "-ation we are"
	cont "having in this"
	cont "public space."

	para "This is a very"
	line "personal subject."
	done

KristenText3:
	text "KRISTEN: Anyway,"
	line "I got on TV and-"
	done

SusanText1:
	text "SUSAN: I'm not"
	line "sure this is a"
	cont "good idea KRISTEN"

	para "It sounds like it"
	line "may be a scam."

	para "Also do you really"
	line "want to pretend"
	cont "to be having"

	para "..."
	line "..."

	para ""
	line "sexualintercourse"

	para "on live TV?"
	done

SusanText2:
	text "SUSAN: Excuse me,"
	line "but we're having"
	cont "an important"
	cont "conversation."

	para "Her soul may be"
	line "at stake."

	para "Well maybe that's"
	line "a moot point, but"
	cont "she shouldn't go"
	cont "on SPRINGER."
	done

GearCityGentlemanText:
	text "There are #MON"
	line "I've never seen"
	cont "before all over"
	cont "this island."

	para "I've been trying"
	line "to catch them"
	cont "all, but it seems"
	cont "like a lot of"
	cont "work."
	done

GearCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, GEAR_CITY_POKECENTER_1F, 1
	warp_event  7, 33, GEAR_CITY_MART, 1
	warp_event  4, 25, CITY_GEAR_RETAIL, 1
	warp_event  2, 15, CITY_GEAR_HQ, 1
	warp_event  2,  9, CITY_GEAR_HQ, 3
	warp_event  3,  9, CITY_GEAR_HQ, 4
	warp_event 25, 15, OLD_FISHER_FELLOW_HOUSE, 1
	warp_event 19, 19, GEAR_CITY_CHRIS_WHILTEN_HOUSE, 1
	warp_event 17,  5, GEAR_CITY_NORTH_FOREST_GATE, 1
	; warp_event 23, 23, GEAR_CITY_TRAINER_CLUB, 1

	def_coord_events
	coord_event 17,  6, SCENE_GEARCITY_NEED_FOAMS, GearCityGatekeeperStopsYouScript

	def_bg_events
	bg_event 21, 29, BGEVENT_READ, GearCitySignScript
	bg_event  1, 25, BGEVENT_READ, CityGearSignScript
	bg_event  4, 16, BGEVENT_READ, CityGearHQSignScript
	bg_event 19, 10, BGEVENT_READ, FutureConstructionSignScript
	bg_event  9, 12, BGEVENT_READ, CityGearHQCardKeySlot


	def_object_events
	object_event 19,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GearCityGatekeeperScript, -1
	object_event 15, 21, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT,0, GearCityCoolTrainerFScript, -1
	object_event 15, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GearCityCoolTrainerMScript, -1
	object_event  9, 35, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GearCityGentlemanScript, -1
	object_event 14, 21, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT,0, GearCitySusanScript, -1
	object_event 15, 14, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GearCityFruitTree, -1
