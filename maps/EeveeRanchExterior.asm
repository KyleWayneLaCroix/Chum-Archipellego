	object_const_def
;	const MAPNAME_OBJECTNAME
	const EEVEE_RANCH_EXTERIOR_EEVEE 	; Feed Berry, get Rare Candy
	const EEVEE_RANCH_EXTERIOR_VAPOREON	; Give Beverage, get item
	const EEVEE_RANCH_EXTERIOR_JOLTEON	; Teach Thunder, get Stardust
	const EEVEE_RANCH_EXTERIOR_FLAREON	; Teach Solarbeam, get Singe TM
	const EEVEE_RANCH_EXTERIOR_ESPEON	; Get Odd egg
	const EEVEE_RANCH_EXTERIOR_UMBREON	; Hops in Ball
	const EEVEE_RANCH_EXTERIOR_GLACEON	; Get Ice Berry
	const EEVEE_RANCH_EXTERIOR_LEAFEON	; Get Basil
	const EEVEE_RANCH_EXTERIOR_SYLVEON	; Pet 5 times?
	const EEVEE_RANCH_EXTERIOR_EEVEE_BRIAN


EeveeRanchExterior_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_NEWMAP, EeveeRanchFlypointCallback


EeveeRanchFlypointCallback:
	setflag ENGINE_FLYPOINT_EEVEE_RANCH
	endcallback

EeveeRanchExteriorSylveon:
	opentext
	checkevent EVENT_SATISFIED_SYLVEON
	iftrue .After
	writetext SylveonNeedsPetsText
	yesorno
	iffalse .Cruel
	readmem wMooMooBerries
	ifequal 69, .SixtyNinePets
	addval 1
	writemem wMooMooBerries
	ifequal 3, .ThreePets
	ifequal 5, .FivePets
	ifequal 7, .SevenPets
	ifequal 10, .TenPets
	ifequal 69, .SixtyNinePets
.After:
	writetext PetSylveonText
	cry SYLVEON
	waitsfx
	waitbutton
	closetext
	end
.Cruel
	writetext DoNotPetSylveonText
	waitbutton
	closetext
	end
.ThreePets:
	writetext PetSylveonText
	waitbutton
	writetext SylveonGivesYouItemText
	waitbutton
	verbosegiveitem LOVE_BALL, 3
	waitbutton
	closetext
	end

.FivePets:
	writetext PetSylveonText
	waitbutton
	writetext SylveonGivesYouItemText
	waitbutton
	verbosegiveitem POLKADOT_BOW
	waitbutton
	closetext
	end

.SevenPets:
	writetext PetSylveonText
	waitbutton
	writetext SylveonGivesYouItemText
	waitbutton
	verbosegiveitem PINK_BOW
	waitbutton
	closetext
	end

.TenPets:
	writetext PetSylveonText
	waitbutton
	writetext SylveonGivesYouItemText
	waitbutton
	verbosegiveitem RARE_CANDY, 3
	waitbutton
	closetext
	end

.SixtyNinePets:
	writetext PetSylveonText
	waitbutton
	writetext SylveonGivesYouItemText
	waitbutton
	verbosegiveitem LOVE_STONE
	verbosegiveitem ESTRADIOL
	verbosegiveitem TESTOSTERONE
	waitbutton
	closetext
	setevent EVENT_SATISFIED_SYLVEON
	end



EeveeRanchExteriorLeafeon:
	opentext
	checkevent EVENT_GOT_LEAFEON_BASIL
	iftrue .After
	cry LEAFEON
	writetext LeafeonGivesBasil
	waitbutton
	verbosegiveitem BASIL, 14
	iffalse .PackFull
	waitbutton
	setevent EVENT_GOT_LEAFEON_BASIL
.After:
	setval LEAFEON
	special PlaySlowCry
	writetext LeafeonAfterText
	waitbutton
	closetext
	end
.PackFull:
	writetext EeveeRanchExteriorFullPack
	waitbutton
	closetext
	end

EeveeRanchExteriorFlareon:
	opentext
	checkevent EVENT_TAUGHT_FLAREON
	iftrue .After
	setval FLAREON
	special PlaySlowCry
	writetext FlareonTrainingText
	waitbutton
	checkitem TM_SOLARBEAM
	iftrue .TeachFlareon
	closetext
	end
.TeachFlareon
	writetext FlareonWantsSolarbeam
	yesorno
	iffalse .Refused
	writetext TeachFlareonSolarbeam
	waitbutton
	playsound SFX_KINESIS
	waitsfx
	playsound SFX_HYPER_BEAM
	waitsfx
	writetext FlareonUsesSolarbeam
	waitbutton
	setevent EVENT_TAUGHT_FLAREON
.GiveItem:
	verbosegiveitem TM_SINGE
.After:
	playsound SFX_KINESIS
	waitsfx
	playsound SFX_HYPER_BEAM
	waitsfx
	writetext FlareonAfterText
	waitbutton
	playsound SFX_PERISH_SONG
	waitsfx
	closetext
	end
.Refused:
	writetext DoNotTeachFlareonText
	waitbutton
	closetext
	end

EeveeRanchExteriorJolteon:
	opentext
	checkevent EVENT_TAUGHT_JOLTEON
	iftrue .After
	cry JOLTEON
	writetext JolteonTrainingText
	waitbutton
	checkitem TM_RAIN_DANCE
	iftrue .TeachJolteon
	closetext
	end
.TeachJolteon:
	writetext JolteonWantsRainDance
	yesorno
	iffalse .Refused
	writetext TeachJolteonRainDance
	waitbutton
	showemote EMOTE_BOLT, EEVEE_RANCH_EXTERIOR_JOLTEON, 25
	playsound SFX_THUNDER
	waitsfx
	writetext JolteonDestroysRock
	waitbutton
	setevent EVENT_TAUGHT_JOLTEON
.GiveItem:
	verbosegiveitem STARDUST
.After:
	showemote EMOTE_BOLT, EEVEE_RANCH_EXTERIOR_JOLTEON, 25
	playsound SFX_THUNDER
	waitsfx
	writetext JolteonAfterText
	waitbutton
	closetext
	end
.Refused:
	writetext DoNotTeachJolteonText
	waitbutton
	closetext
	end

EeveeRanchExteriorEevee:
	opentext
	checkevent EVENT_FED_EEVEE
	iftrue .FullEevee
	writetext HungryEeveeText
	setval EEVEE
	special PlaySlowCry
	promptbutton
	writetext EeveeRanchAskGiveBerryText
	yesorno
	iffalse .Refused
	checkitem BERRY
	iffalse .NoBerriesInBag
	takeitem BERRY
	writetext EeveeRanchGiveEeveeBerryText
	waitbutton
	playmusic MUSIC_HEAL
	writetext EeveeRanchEeveeEatsBerryText
	waitbutton
	verbosegiveitem RARE_CANDY
	closetext
	setevent EVENT_FED_EEVEE
	end

.Refused:
	writetext EeveeRanchDoNotFeedBerry
	waitbutton
	closetext
	end

.NoBerriesInBag:
	writetext EeveeRanchNoneOfItemText
	waitbutton
	closetext
	end

.FullEevee:
	cry EEVEE
	writetext EeveeRanchFullEeveeText
	waitbutton
	closetext
	end

EeveeRanchExteriorGlaceon:
	opentext
	cry GLACEON
	writetext EeveeRanchExteriorGlaceonText
	waitbutton
	verbosegiveitem ICE_BERRY
	closetext
	end

EeveeRanchExteriorUmbreon:
	opentext
	cry UMBREON
	writetext UmbreonLooksInBagText
	waitbutton
	checkitem MOON_BALL
	iffalse .NoMoonBall
	writetext UmbreonWantsMoonBallText
	yesorno
	iffalse .Refused
	takeitem MOON_BALL
	writetext EeveeRanchGetUmbreonText
	waitbutton
	givepoke UMBREON, 17, BLACKGLASSES
	setevent EVENT_GOT_UMBREON
	disappear EEVEE_RANCH_EXTERIOR_UMBREON
	closetext
	end

.Refused:
	writetext RefuseToGiveUmbreonBall
	waitbutton
	closetext
	end

.NoMoonBall:
	writetext NoMoonBallsText
	waitbutton
	closetext
	end

EeveeRanchExteriorEspeon:
	opentext
	checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyGotEgg
	checkevent EVENT_EARNED_ODD_EGG
	iftrue .GetEgg
	cry ESPEON
	writetext EeveeRanchExteriorEspeonIntro
	yesorno
	iffalse .AvoidEgg
	writetext EeveeRanchExteriorMoveToEgg
	waitbutton
.Loop:
	loadmenu .EspeonMenu
	verticalmenu
	closewindow
	ifequal 1, .AttackEspeon
	ifequal 2, .PickUpEgg
	ifequal 3, .TalkToEspeon
	ifequal 4, .AvoidEgg
	closetext
	end

.AttackEspeon:
	writetext AttackEspeonText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	waitsfx
	warp ERROR_ROOM, 5, 5
	end

.PickUpEgg:
	writetext GrabEspeonEggText
	yesorno
	iftrue .AvoidEgg
	writetext HoldOntoEspeonEggText
	closetext
	playsound SFX_WARP_TO
	waitsfx
	warp ERROR_ROOM, 5, 5
	end

.TalkToEspeon:
	writetext TalkToEspeonText
	yesorno
	iftrue .AvoidEgg
	writetext GetEspeonEggText
	waitbutton
.GetEgg:
	closetext
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	special GiveOddEgg
	opentext
	writetext YouGetOddEggText
	playsound SFX_GET_EGG
	waitsfx
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
	end

.PartyFull:
	setevent EVENT_EARNED_ODD_EGG
	opentext
	writetext EspeonPartyFull
	waitbutton
	closetext
	end

.AvoidEgg
	writetext AvoidEeveeRanchEggText
	waitbutton
	closetext
	end


.AlreadyGotEgg:
	cry ESPEON
	writetext EspeonAfterText
	waitbutton
	closetext
	end

.EspeonMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 2
	dw .MenuData
	db 4 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "ATTACK ESPEON@"
	db "PICK UP EGG@"
	db "TALK TO ESPEON@"
	db "LEAVE@"

EeveeRanchExteriorVaporeon:
	opentext
	cry VAPOREON
.checkTea:
	checkevent EVENT_GAVE_VAPOREON_TEA
	iftrue .checkMonster
	checkitem SODA_POP
	iftrue .GreenTea
.checkMonster:
	checkevent EVENT_GAVE_VAPOREON_MONSTER
	iftrue .checkPBR
	checkitem LEMONADE
	iftrue .Monster
.checkPBR:
	checkevent EVENT_GAVE_VAPOREON_PBR
	iftrue .checkDone
	checkitem FRESH_WATER
	iftrue .PBR
.checkDone:
	checkevent EVENT_GAVE_VAPOREON_TEA
	iffalse .Thirsty
	checkevent EVENT_GAVE_VAPOREON_MONSTER
	iffalse .Thirsty
	checkevent EVENT_GAVE_VAPOREON_TEA
	iffalse .Thirsty
.After:
	writetext VaporeonAfterText
	waitbutton
	closetext
	end
.Thirsty:
	writetext VaporeonThirstyText
	waitbutton
.DontHaveItem:
	writetext VaporeonDontHaveItemText
	waitbutton
	closetext
	end
.Refused:
	writetext VaporeonRefusedText
	waitbutton
	closetext
	end
.NotEnoughSpace:
	writetext VaporeonNotEnoughSpaceText
	waitbutton
	closetext
	end
.GreenTea:
	writetext GiveVaporeonTeaQuestion
	yesorno
	iffalse .Refused
	giveitem ELIXER
	iffalse .NotEnoughSpace
	setevent EVENT_GAVE_VAPOREON_TEA
	takeitem SODA_POP
	writetext VaporeonGivesElixer
	waitbutton
	closetext
	end
.Monster:
	writetext GiveVaporeonMonsterQuestion
	yesorno
	iffalse .Refused
	giveitem MAX_POTION
	iffalse .NotEnoughSpace
	setevent EVENT_GAVE_VAPOREON_MONSTER
	takeitem LEMONADE
	writetext VaporeonGivesMaxPotion
	waitbutton
	closetext
	end	
.PBR:
	writetext GiveVaporeonPBRQuestion
	yesorno
	iffalse .Refused
	giveitem FULL_RESTORE
	iffalse .NotEnoughSpace
	setevent EVENT_GAVE_VAPOREON_PBR
	takeitem FRESH_WATER
	writetext VaporeonGivesFullRestore
	waitbutton
	closetext
	end

EeveeRanchEeveeBrian:
	trainer MAD_DOG, BRIANEON, EVENT_BEAT_MAD_DOG_BRIANEON, EeveeRanchEeveeBrianSeenText, EeveeRanchEeveeBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext EeveeRanchEeveeBrianAfterText
	waitbutton
	closetext
	cry EEVEE
	earthquake 20
	waitsfx
	disappear EEVEE_RANCH_EXTERIOR_EEVEE_BRIAN
	end

EeveeRanchGroomerSignScript:
	jumptext EeveeRanchGroomerSignText

EeveeRanchHiveSignScript:
	jumptext EeveeRanchHiveSignText

EeveeRanchHiveSignText:
	text "EEVEE RANCH HIVES"
	line "      AHEAD      "
	done

SylveonNeedsPetsText:
	text "A SYLVEON stands"
	line "in front of you."

	para "It is looking at"
	line "you expectantly."

	para "Do you pet the"
	line "SYLVEON?"
	done

DoNotPetSylveonText:
	text "You decide not to"
	line "pet SYLVEON."

	para "It's a tough"
	line "decision, but"
	cont "someone had to"
	cont "make it."
	done

PetSylveonText:
	text "You pet SYLVEON."

	para "I guess those"
	line "ribbons are part"
	cont "of its body?"

	para "It seems happier"

	para "SYLVEON: VIIIIIE!"
	done

SylveonGivesYouItemText:
	text "The SYLVEON grabs"
	line "something from a"
	cont "nearby bush and"
	cont "gives it to you."
	done

LeafeonGivesBasil:
	text "A LEAFEON lays in"
	line "a pile of BASIL."

	para "It yawns and"
	line "kicks a bunch in"
	cont "your direction."
	done

LeafeonAfterText:
	text "A LEAFEON is in a"
	line "BASIL patch,"
	cont "sleeping."

	para "It ignores you."
	done

EeveeRanchExteriorFullPack:
	text "Your PACK is full"
	done

FlareonTrainingText:
	text "FLAREON: reee..."

	para "This FLAREON just"
	line "lies in the sun,"
	cont "yells, and looks"
	cont "sad."

	para "Over and over"
	line "again."

	para "It seems like it"
	line "is trying to use"
	cont "a move of some"
	cont "sort."
	done

FlareonWantsSolarbeam:
	text "It may be trying"
	line "to use SOLARBEAM."

	para "However, FLAREON"
	line "is the only fully"
	cont "evolved FIRE"
	cont "#MON that is"

	para "unable to learn"
	line "SOLARBEAM."

	para "However, you do"
	line "have the TM for"
	cont "SOLARBEAM..."

	para "Do you dare try?"
	done

TeachFlareonSolarbeam:
	text "The TM glows with"
	line "an awesome power"
	cont "as you bring it"
	cont "closer to FLAREON"

	para "Or the light is"
	line "catching it just"
	cont "right."

	para "FLAREON stares at"
	line "you in antici-"

	para ""

	para ""

	para "-pation."

	para "1... 2... 3..."

	para "You don't know if"
	line "it worked, but"
	cont "something happ-"
	cont "-ened."
	done

FlareonUsesSolarbeam:
	text "The FLAREON has"
	line "used SOLARBEAM."

	para "No one will ever"
	line "believe you."

	para "FLAREON digs up"
	line "something from"
	
	para "the ground next"
	line "to it and gives"
	cont "it to you."
	done

FlareonAfterText:
	text "Flareon is just"
	line "using SOLARBEAM"
	cont "over and over"
	cont "again."

	para "The sky seems"
	line "slightly dimmer."

	para "Could you have"
	line "made a big"
	cont "mistake?"

	para "No, no, you're"
	line "just being para-"
	cont "-noid..."
	done


DoNotTeachFlareonText:
	text "No... the meme is"
	line "too important."

	para "You shouldn't even"
	line "risk breaking it."

	para "Sorry FLAREON."
	line "       Not today."

	para "FLAREON:    : ("
	done

JolteonTrainingText:
	text "JOLTEON: TEOOO!"

	para "The JOLTEON is"
	line "trying to zap a"
	cont "rock with THUNDER"

	para "It keeps missing."
	done

JolteonWantsRainDance:
	text "You have the TM"
	line "for RAIN DANCE."

	para "Teach the JOLTEON"
	line "RAIN DANCE?"
	done

TeachJolteonRainDance:
	text "1... 2... 3..."

	para "JOLTEON learned"
	line "RAIN DANCE!"

	para "It begins to"
	line "rain around the"
	cont "JOLTEON."
	done

JolteonDestroysRock:
	text "JOLTEON zaps the"
	line "rock with a peal"
	cont "of THUNDER!"

	para "The rock shatters"
	line "and leaves behind"
	cont "brightly-colored"
	cont "dust."
	done

JolteonAfterText:
	text "JOLTEON is just"
	line "indiscriminately"

	para "zapping the area"
	line "with THUNDER."

	para "You should keep"
	line "your distance."

	para "Just in case."
	done

DoNotTeachJolteonText:
	text "Maybe teaching"
	line "this JOLTEON to"
	
	para "use THUNDER with"
	line "greater accuracy"
	
	para "would be a bad"
	line "idea."
	done 

VaporeonThirstyText:
	text "VAPOREON: porree"

	para "This VAPOREON"
	line "seems thirsty."
	done

GiveVaporeonTeaQuestion:
	text "The VAPOREON is"
	line "interested in"
	cont "your GREEN TEA."

	para "Give VAPOREON a"
	line "GREEN TEA?"
	done

VaporeonGivesElixer:
	text "The Vaporeon"
	line "drinks the GREEN"
	cont "TEA and seems"
	cont "satisfied."

	para "Its body morphs"
	line "and it refills"
	cont "the bottle."

	para "You received an"
	line "ELIXER."
	done

GiveVaporeonMonsterQuestion:
	text "The VAPOREON is"
	line "interested in"
	cont "your MONSTER."

	para "Give VAPOREON a"
	line "MONSTER?"
	done

VaporeonGivesMaxPotion:
	text "The Vaporeon"
	line "drinks the"
	cont "MONSTER and looks"
	cont "full of energy."

	para "Its body morphs"
	line "and it refills"
	cont "the bottle."

	para "You received a"
	line "MAX POTION."
	done


GiveVaporeonPBRQuestion:
	text "The VAPOREON is"
	line "interested in"
	cont "your P.B.R."

	para "Give VAPOREON a"
	line "P.B.R.?"
	done

VaporeonGivesFullRestore:
	text "The Vaporeon"
	line "drinks the"
	cont "P.B.R. and looks"
	cont "tipsy."

	para "Its body morphs"
	line "and it refills"
	cont "the bottle."

	para "You received a"
	line "FULL RESTORE."
	done

VaporeonDontHaveItemText:
	text "You don't seem"
	line "to have a drink"
	cont "the VAPOREON is"
	cont "interested in."
	done

VaporeonNotEnoughSpaceText:
	text "The VAPOREON"
	line "looks like it'd"
	
	para "want to give you"
	line "something in"
	
	para "return, but your"
	line "pack is full."
	done

VaporeonAfterText:
	text "VAPOREON: peeeorr"

	para "The VAPOREON"
	line "looks happy to"
	cont "see you."
	done

VaporeonRefusedText:
	text "The VAPOREON"
	line "gives you a sad"
	cont "look..."
	done

EeveeRanchExteriorEspeonIntro:
	text "ESPEON: piiyaaaa!"

	para "This ESPEON is"
	line "watching an egg"
	cont "sitting in the"
	cont "grass nearby."

	para "It doesn't look"
	line "like an EEVEE"
	cont "egg."

	para "It keeps looking"
	line "between you and"
	cont "the egg."

	para "Do you move up"
	line "closer to the"
	cont "egg?"
	done

EeveeRanchExteriorMoveToEgg:
	text "The ESPEON seems"
	line "seems a bit wary"
	cont "as you move to"
	cont "the egg."

	para "This definitely"
	line "isn't an EEVEE"
	cont "egg."

	para "The ESPEON stares"
	line "at you."

	para "What do you want"
	line "to do?"
	done

AvoidEeveeRanchEggText:
	text "You back away"
	line "from the ESPEON &"
	cont "the EGG."
	done

AttackEspeonText:
	text "You pull out a"
	line "#BALL to start"
	cont "a battle,"

	para "but the ESPEON"
	line "flashes its eyes"
	cont "as you feel a"
	cont "tugging sensation"
	done

GrabEspeonEggText:
	text "You grab the egg,"
	line "but as you do so"

	para "the ESPEON's fur"
	line "stands on end."

	para "Do you put the"
	line "EGG down?"
	text 

HoldOntoEspeonEggText:
	text "You hold onto"
	line "the egg as the"
	cont "ESPEON flashes"
	cont "its eyes at you."

	para "You feel a"
	line "tugging sensation"
	done

TalkToEspeonText:
	text "As you lock eyes"
	line "with the ESPEON,"
	cont "you feel a weird"
	cont "headache starting"

	para "The ESPEON is"
	line "staring at you"
	cont "intently, its"
	cont "eyes shifting"
	cont "colors constantly"

	para "It seems like the"
	line "ESPEON is causing"
	cont "this."

	para "Do you step away?"
	done

GetEspeonEggText:
	text "The ESPEON slowly"
	line "relaxes its gaze."

	para "It nods its head"
	line "at you and lets"
	cont "you pick up the"
	cont "egg now."

	para "It seems to have"
	line "decided you are"
	cont "trustworthy."
	done

PutEspeonEggInPackText:
	para "You pick up the"
	line "egg and put it"
	cont "in your pack."
	done

EspeonPartyFull:
	text "Your party is"
	line "full."

	para "You need to"
	line "deposit a #MON"
	cont "with your PDA"

	para "before you can"
	line "pick up the EGG."
	done

YouGetOddEggText:
	text "You get the ODD"
	line "EGG!"
	done

EspeonAfterText:
	text "ESPEON: PIIYAAAA"
	done

EeveeRanchExteriorGlaceonText:
	text "GLACEON: laciii"

	para "The GLACEON has"
	line "a pile of berries"
	cont "next to it."

	para "It nudges one in"
	line "your direction."
	done

UmbreonLooksInBagText:
	text "The UMBREON is"
	line "trying to dig in"
	cont "the BALL pocket"
	cont "of your BAG."
	done

UmbreonWantsMoonBallText:
	text "It pulls out a"
	line "MOON BALL from"
	cont "your bag."

	para "It seems to want"
	line "it, do you give"
	cont "UMBREON the ball?"
	done

EeveeRanchGetUmbreonText:
	text "The UMBREON taps"
	line "the button on the"
	cont "BALL and hops in."
	done

NoMoonBallsText:
	text "It seems to be"
	line "looking for a"
	cont "specific ball,"

	para "but it doesn't"
	line "find what its"
	cont "looking for."

	para "It pulls its head"
	line "out of your bag,"
	cont "and walks away."
	done

RefuseToGiveUmbreonBall:
	text "You snatch the"
	line "MOON BALL away"
	cont "from the UMBREON."

	para "It looks sad."

	para "UMBREON:    :("
	done

HungryEeveeText:
	text "EEVEE: Veeeeee..."

	para "The eevee is just"
	line "staring at you"
	cont "with BABY-DOLL"
	cont "EYES."

	para "You already feel"
	line "your attack has"
	cont "dropped one stage"
	done

EeveeRanchAskGiveBerryText:
	text "It looks kind of"
	line "hungry."

	para "Give the EEVEE a"
	line "berry?"
	done

EeveeRanchGiveEeveeBerryText:
	text "You give a BERRY"
	line "to the EEVEE."

	para "munch munch..."

	para ""
	line "   munch munch..."
	done

EeveeRanchEeveeEatsBerryText:
	text "The EEVEE seems"
	line "grateful."

	para "It drops some-"
	line "-thing in your"
	cont "hand."
	done

EeveeRanchDoNotFeedBerry:
	text "It looks at you,"
	line "with its big, sad"
	cont "eyes..."
	done

EeveeRanchNoneOfItemText:
	text "You don't have"
	line "any of those..."
	done

EeveeRanchFullEeveeText:
	text "The EEVEE starts"
	line "to act like it's"

	para "very hungry again"
	line "until it sees who"
	cont "you are."

	para "It just leans up"
	line "for some pets."

	para "You think you may"
	line "have been played."
	done
EeveeRanchGroomerSignText:
	text "#MON SALON"
	line "and DANCE HALL"
	done

EeveeRanchEeveeBrianSeenText:
	text "EEEEEVEEEEE"

	para "No wait, #MON"
	line "don't say their"
	cont "name in the games"

	para "What sounds do"
	line "EEVEE make?"
	done

EeveeRanchEeveeBrianBeatenText:
	text "So is EEVEE a fox"
	line "or cat or dog?"
	done

EeveeRanchEeveeBrianAfterText:
	text "I'm tired of this"
	line "furry stuff."

	para "Bye."
	done
EeveeRanchExterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 25, 37, ROUTE_D, 1
	warp_event 26, 37, ROUTE_D, 1
	warp_event 19, 33, EEVEE_RANCH_POKECENTER_1F, 1
	warp_event 10, 25, EEVEE_RANCH_INTERIOR, 1
	warp_event  9, 21, EEVEE_RANCH_INTERIOR, 3
	warp_event 10, 21, EEVEE_RANCH_INTERIOR, 4
	warp_event  1, 31, EEVEE_RANCH_GROOMERS, 1
	warp_event  8,  0, EEVEE_RANCH_HIVES, 1
	warp_event  9,  0, EEVEE_RANCH_HIVES, 2
	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 4, 31, BGEVENT_READ, EeveeRanchGroomerSignScript
	bg_event 9, 3, BGEVENT_READ, EeveeRanchHiveSignScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  2,  0, SPRITE_EEVEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEevee, -1
	object_event  3, 14, SPRITE_VAPOREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorVaporeon, -1
	object_event 12,  0, SPRITE_JOLTEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorJolteon, -1
	object_event 21, 10, SPRITE_FLAREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorFlareon, -1
	object_event 28,  0, SPRITE_ESPEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorEspeon, -1
	object_event 19,  1, SPRITE_UMBREON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorUmbreon, EVENT_GOT_UMBREON
	object_event 29, 14, SPRITE_GLACEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorGlaceon, -1
	object_event 22, 21, SPRITE_LEAFEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorLeafeon, -1
	object_event  7,  6, SPRITE_SYLVEON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeRanchExteriorSylveon, -1
	object_event 13, 13, SPRITE_EEVEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, EeveeRanchEeveeBrian, EVENT_BEAT_MAD_DOG_BRIANEON
