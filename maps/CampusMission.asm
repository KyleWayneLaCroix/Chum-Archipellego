	object_const_def
;	const MAPNAME_OBJECTNAME
	const CAMPUSMISSION_PREACHER
	const CAMPUSMISSION_GRANNY
	const CAMPUSMISSION_TEACHER
	const CAMPUSMISSION_POKEFANM

CampusMission_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

CampusMissionPokefanM:
	faceplayer
	opentext
	checkevent EVENT_IS_GAY
	iftrue .Gay
	writetext CampusMissionYouthLeaderText
	waitbutton
	closetext
	end
.Gay:
	writetext CampusMissionYouthLeaderGayText
	waitbutton
	closetext
	end

CampusMissionPreacher:
	opentext
	checkevent EVENT_BEAT_PASTOR_JOELEO
	iftrue .BeatenPastor
	writetext CampusMissionPreacherSermon
	waitbutton

	checkevent EVENT_IS_GAY
	iftrue .Gay
	closetext
	end
.Gay:
	playmusic MUSIC_SAGE_ENCOUNTER
	faceplayer
	writetext CampusMissionPastorSeenText
	waitbutton
	closetext
	winlosstext CampusMissionPastorBeatenText, 0
	setlasttalked CAMPUSMISSION_PREACHER
	loadtrainer BROCK, JOELEO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PASTOR_JOELEO
	opentext
.BeatenPastor:
	faceplayer
	writetext CampusMissionPastorAfterText
	waitbutton
	closetext
	end

CampusMissionGranny:
	faceplayer
	opentext
	checkevent EVENT_GOT_SLOWPOKETAIL_FROM_MISSION
	iftrue .After
	writetext CampusMissionGrannyWelcomeText
	waitbutton
	verbosegiveitem SLOWPOKETAIL
	setevent EVENT_GOT_SLOWPOKETAIL_FROM_MISSION
	waitbutton
.After:
	checkevent EVENT_IS_GAY
	iftrue .Gay
	writetext CampusMissionGrannyAfterText
	waitbutton
	closetext
	end
.Gay:
	checkevent EVENT_BEAT_POKEFANF_BEVERLY
	iftrue .BeatenGranny
	playmusic MUSIC_SAGE_ENCOUNTER
	writetext CampusMissionGrannySeenText
	waitbutton
	closetext
	winlosstext CampusMissionGrannyBeatenText, 0
	setlasttalked CAMPUSMISSION_GRANNY
	loadtrainer POKEFANF, BEVERLY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_POKEFANF_BEVERLY
	opentext
.BeatenGranny
	writetext CampusMissionGrannyAfterGayText
	waitbutton
	closetext
	end

CampusMissionTeacher:
	faceplayer
	opentext
	checkevent EVENT_BEAT_TEACHER_COLETTE
	iftrue .AfterNotSaved
	checkevent EVENT_GOT_SAVED
	iftrue .AfterSaved
	checkevent EVENT_IS_GAY
	iftrue .HereticBattle
	writetext CampusMissionTeacherIntro
	yesorno
	iftrue .AcceptJesus
	;fallthrough
.WhosJesus:
	writetext CampusMissionTeacherWhoJesus
	waitbutton
	;fallthrough
.AcceptJesus:
	writetext CampusMissionTeacherJesusQuestion
	yesorno
	iftrue .AlreadySaved
	;fallthrough
.OhNo:
	writetext CampusMissionTeacherNotSaved
	yesorno
	iftrue .SavedNow
	; fallthrough
.LearnHow:
	writetext CampusMissionTeacherHowToSaved
	waitbutton
	; fallthrough
.SavedNow:
	writetext CampusMissionTeacherSavedNowQuest
	yesorno
	iftrue .GotSaved
.AreYouGay:
	writetext CampusMissionTeacherWhyNotSaved
	yesorno
	iftrue .NoHomo

.GotSaved:
	writetext CampusMissionTeacherGotSaved
	setevent EVENT_GOT_SAVED
	yesorno
	iffalse .AntiChristian
.NoHomo:
	writetext CampusMissionTeacherCantBeGay
	yesorno
	iftrue .HereticBattle
	writetext CampusMissionTeacherNotGays
	end
.AlreadySaved:
	writetext CampusMissionTeacherAlreadySaved
	setevent EVENT_GOT_SAVED
	waitbutton
	end
.AntiChristian:
	writetext CampusMissionTeacherHatesGod
	waitbutton
	writetext CampusMissionTeacherAfterNotSaved
	waitbutton
	end
.HereticBattle:
	setevent EVENT_IS_GAY
	playmusic MUSIC_SAGE_ENCOUNTER
	writetext CampusMissionTeacherSeenText
	waitbutton
	closetext
	winlosstext CampusMissionTeacherBeatenText, 0
	setlasttalked CAMPUSMISSION_TEACHER
	loadtrainer TEACHER, COLETTE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TEACHER_COLETTE
.AfterBattle:
	opentext
	writetext CampusMissionTeacherGayyText
	waitbutton
	closetext
	end
.AfterNotSaved:
	writetext CampusMissionTeacherAfterNotSaved
	waitbutton
	closetext
	end
.AfterSaved:
	writetext CampusMissionTeacherAfterSaved
	waitbutton
	closetext
	end

CampusMissionSignScript:
	jumptext CampusMissionSignText

CampusMissionBoxesScript:
	jumptext CampusMissionBoxesText

CampusMissionComputerScript:
	opentext
	writetext CampusMissionComputerText
	closetext
	refreshscreen
	pokepic SALANDIT2
	waitbutton
	closepokepic
	opentext
	writetext CampusMissionClickOnIt
	yesorno
	iffalse .NoPorno
	writetext CampusMissionAreYouSure
	yesorno
	iffalse .NoPorno
	writetext CampusMissionAreYouReallySure
	yesorno
	iffalse .NoPorno
	writetext CampusMIssionLastChance
	yesorno
	iffalse .NoPorno
	playmusic MUSIC_RUINS_OF_ALPH_RADIO
	writetext CampusMissionShowPorn
	waitbutton
	closetext
	refreshscreen
	pokepic SALAZZLE2
	waitbutton
	waitbutton
	waitbutton
	closepokepic
	opentext
	writetext CampusMissionTriedToWarnYou
	waitbutton
	closetext
	end
.NoPorno
	writetext CampusMissionNoPorn
	waitbutton
	closetext
	end

CampusMissionAreYouSure:
	text "Are you sure?"
	line "I did the DEAD"
	cont "DOVE DO NOT EAT"
	cont "gag & everything."

	para "You really wanna"
	line "click it?"
	done

CampusMissionAreYouReallySure:
	text "Bro, that folder"
	line "could have any"
	cont "image in it as"
	cont "long as it's "
	cont "56x56 pixels and"
	cont "two colors."
	done

CampusMIssionLastChance:
	text "Look, I'm warn-"
	line "-ing you. I found"
	cont "a fork of the"
	cont "CRYSTAL disassem-"
	cont "-bly on GITHUB"
	cont "named NUDE"
	cont "CRYSTAL."

	para "Had sprites for a"
	line "Raichu with a"
	cont "VERY visible"
	cont "penis."

	para "Also naked gfx"
	line "for the girl"
	cont "trainer."

	para "Didn't care for"
	line "that."

	para "Point is, I could"
	line "have put those in"
	cont "this game!"

	para "It would be easy!"

	para "Are you SURE you"
	line "want to click on"
	cont "the folder?"

	para "This is your last"
	line "warning."
	done

CampusMissionShowPorn:
	text "Well, I guess I"
	line "can't stop you."

	para "Well I could, but"
	line "you're gonna see"
	cont "it anyway now."
	done

CampusMissionTriedToWarnYou:
	text "You wanted this."
	done

CampusMissionNoPorn:
	text "Yeah probably for"
	line "the best."
	done

CampusMissionSignText:
	text "EMPLOYEES ONLY"
	done

CampusMissionBoxesText:
	text "These boxes are"
	line "full of little"
	cont "cartoon tracts"
	cont "labeled:"

	para "Darkest Mystery"
	line "Dungeons."

	para "They seem to be"
	line "about a girl who"
	cont "gets into role-"
	cont "-playing games at"
	cont "college and then"
	cont "dies."
	done

CampusMissionComputerText:
	text "A folder labeled"
	line "FURRY PORN"
	cont "sits on the"
	cont "desktop."
	done

CampusMissionClickOnIt:
	text "Click on it?"
	done

CampusMissionYouthLeaderText:
	text "Hey there, I'm a"
	line "hip young YOUTH"
	cont "LEADER."

	para "I'm the reason"
	line "they had to"
	cont "remove the backs"
	cont "of the chairs."

	para "I'm organizing a"
	line "cool tournament"
	cont "to get kids to"
	cont "show up!"

	para "All the kids are"
	line "into PLAYSTATION"
	cont "ALL STAR BATTLE"
	cont "MELEE ULTIMATE."

	para "It's gonna be a"
	line "huge hit!"
	done

CampusMissionYouthLeaderGayText:
	text "Oh hey, you're"
	line "that gay kid."

	para "Don't worry, I'm"
	line "hip and cool."

	para "That means I will"
	line "NOT call you a"
	cont "slur."

	para "At least not one"
	line "about your sexual"
	cont "sins at least."

	para "But I also won't"
	line "support you, will"
	cont "call you a sinner"
	cont "and out you at"
	cont "any moment."

	para "I'm praying for"
	line "you!"

	para "I'm the cool one."
	done
CampusMissionPreacherSermon:
	text "PASTOR: ...And lo"
	line "the LITLEO shall"
	cont "lie down with the"
	cont "WOOLOO..."

	para "..."

	para "         ..."

	para "This is going on"
	line "for a while..."

	para "Maybe he'll wrap"
	line "up soon?"

	para "        ..."

	para "     ..."

	para "PASTOR: ...and"
	line "that's why"
	cont "PRESIDENT GIOVONI"
	cont "is meant to weild"
	cont "unilateral power."

	para "Due to his great"
	line "humbleness, he"
	cont "has inherited the"
	cont "earth."

	para "   ..."

	para "        ..."

	para "PASTOR: GOD then"
	line "promised never"
	cont "again to let the"
	cont "battery die on"
	cont "the world's cart"
	cont "after the SUPER"
	cont "NOAH'S ARK 3D"
	cont "incident..."

	para "..."

	para "        ..."

	para "He doesn't seem to"
	line "be stopping soon."

	para "He also hasn't"
	line "seen you, so you"
	cont "can leave."
	done

CampusMissionPastorSeenText:
	text "Hold on, do I"
	line "smell a servant"
	cont "of the devil in"
	cont "my chapel?"
	done

CampusMissionPastorBeatenText:
	text "You are corrupted"
	line "by sin."
	done

CampusMissionPastorAfterText:
	text "Your faith in the"
	line "devil is strong,"
	cont "but misplaced."

	para "You will suffer"
	line "for all eternity"
	cont "unless you recant"
	done

CampusMissionGrannySeenText:
	text "Wait a minute..."
	line "are you here to"
	cont "infect my grand-"
	cont "-daughter with"

	para "gay?"
	done

CampusMissionGrannyBeatenText:
	text "My #MON don't"
	line "evolve."
	done

CampusMissionGrannyAfterGayText:
	text "I'm sorry, but I"
	line "can no longer"
	cont "offer you food."
	done

CampusMissionTeacherGayyText:
	text "I get it, it's"
	line "hard work, being"
	cont "straight."

	para "But you can't just"
	line "take the easy way"
	cont "out and kiss EVE"
	cont "behind the gym."

	para "People walk by"
	line "there and see you."

	para "Anyway, I'm sorry"
	line "you want to be a"
	cont "sinner still."
	done


CampusMissionTeacherBeatenText:
	text "My faith just"
	line "wasn't strong"
	cont "enough..."
	done

CampusMissionTeacherSeenText:
	text "My faith will"
	line "lead me to"
	cont "victory!"
	done

CampusMissionTeacherHatesGod:
	text "I guess you just"
	line "hate GOD."
	done

CampusMissionTeacherAfterSaved:
	text "I'll be praying"
	line "for you!"
	done

CampusMissionTeacherAfterNotSaved:
	text "I'll be praying"
	line "for you."
	done

CampusMissionTeacherWhyNotSaved:
	text "You still don't"
	line "believe?"

	para "You know, there"
	line "are uncontacted"
	cont "people who have"
	cont "to figure out all"
	cont "this by looking"
	cont "at trees or go to"
	cont "hell."

	para "You have this on"
	line "easy mode and you"
	cont "are just throwing"
	cont "it all away!"

	para "Wait... Those.."
	line "     shoes..."

	para "That... Hat.."

	para "You're not a GAY"
	line "are you?"
	done

CampusMissionTeacherNotGays:
	text "Hooray! I'm glad"
	line "you were able to"
	cont "move past your"
	cont "perversion."

	para "Now I can truly"
	line "put you into the"
	cont "win column."
	done

CampusMissionTeacherCantBeGay:
	text "Well, GOD hates"
	line "the homosexuality"

	para "While it is true"
	line "that you should"
	cont "care more about"
	cont "whats inside a"
	cont "person you date"
	cont "than outer"
	cont "appearance."

	para "This one aspect of"
	line "outer appearance"
	cont "is kind of a big"
	cont "deal for GOD."

	para "Real no-no move,"
	line "the whole gay..."

	para "thing."

	para "Are you sure you"
	line "want to be gay?"
	done

CampusMissionTeacherGotSaved:
	text "Oh! that's so"
	line "SO amazing!"
	cont "I knew GOD wasn't"
	cont "dead!"

	para "Welcome to the"
	line "church family!"

	para "Oh wait, now that"
	line "I think about it,"
	cont "you do look kinda"
	cont "hmmm....."

	para "You're not gay"
	line "are you?"
	done

CampusMissionTeacherAlreadySaved:
	text "Oh, that's good."

	para "I'm really here"
	line "to get my saved"
	cont "stats up though."
	done 

CampusMissionTeacherSavedNowQuest:
	text "Well since you"
	line "know how, will"
	cont "you accept HIM"
	cont "into your heart?"
	done

CampusMissionTeacherHowToSaved:
	text "Oh no!"

	para "Well to be saved"
	line "you need to let"
	cont "JESUS into your"
	cont "heart."

	para "You see, he died"
	line "for EVERYONE's"
	cont "sins, but"

	para "It doesn't count"
	line "for saving you"
	cont "until you tell"
	cont "him you accept it"

	para "It's kind of like"
	line "a mail-in rebate."

	para "Although we are"
	line "CALVINISTs here,"
	cont "this means that"
	cont "GOD predestines"
	cont "who will believe"
	cont "in HIM."

	para "You see, we are"
	line "such awful people"
	cont "that NO ONE can"
	cont "think of asking"
	cont "for forgiveness"
	cont "on their own."

	para "We're just too"
	line "sinful!"

	para "GOD just decided"
	line "before HE created"
	cont "everything who"
	cont "would decide to"
	cont "believe in HIM."

	para "Unlike those her-"
	line "-etical ARMINIANS"
	cont "who think that"
	cont "GOD uses his"
	cont "future vision to"
	cont "see who WOULD be"
	cont "a CHRISTIAN then"
	cont "decides they will"
	cont "be elected to be"
	cont "saved, we know"
	cont "the truth."

	para "Everyone is just"
	line "too sinful to"
	cont "make that choice."

	para "And that's why"
	line "GOD punishes you"
	cont "for eternity for"
	cont "not believing in"
	cont "HIM."
	done

CampusMissionTeacherNotSaved:
	text "Oh no! Do you"
	line "know how to?"
	done

CampusMissionTeacherJesusQuestion:
	text "Well have you"
	line "accepted JESUS"
	cont "into your heart?"
	done

CampusMissionTeacherWhoJesus:
	text "Oh! I knew in all"
	line "the movies that"
	cont "sinful college"
	cont "students didn't"
	cont "know who our LORD"
	cont "was, but I didn't"
	cont "think it'd be"
	cont "real!"

	para "Jesus is the SON"
	line "of GOD."

	para "He came to earth"
	line "and died for our"
	cont "sins."

	para "He had to do that"
	line "because GOD can't"
	cont "be near sin."

	para "So JESUS died for"
	line "them so we didn't"
	cont "have to."

	para "Well, we still"
	line "have to die, but"
	cont "you know what I"
	cont "mean."
	done

CampusMissionTeacherIntro:
	text "Oh! Welcome!"
	line "Do you know who"
	cont "JESUS is?"
	done

CampusMissionGrannyWelcomeText:
	text "Hello! Welcome to"
	line "the Baptist"
	cont "student mission."

	para "We're here to"
	line "help the poor"
	cont "souls here in the"
	cont "UNIVERCITY."

	para "Here, have some"
	line "food and enjoy"
	cont "the sermon!"
	done

CampusMissionGrannyAfterText:
	text "Not many people"
	line "were showing up"
	cont "until we offered"
	cont "the roasted"
	cont "SLOWPOKETAIL."

	para "We need to get"
	line "our GAMECUBE"
	cont "fixed to get the"
	cont "gamers to show up"
	done


CampusMission_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3,  9, UNIVERCITY, 4
	warp_event  2,  9, UNIVERCITY, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 12,  7, BGEVENT_UP, CampusMissionSignScript
	bg_event 15,  1, BGEVENT_UP, CampusMissionComputerScript
	bg_event 14,  1, BGEVENT_UP, CampusMissionComputerScript
	bg_event 13,  1, BGEVENT_UP, CampusMissionBoxesScript
	bg_event 12,  1, BGEVENT_UP, CampusMissionBoxesScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  3,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CampusMissionPreacher, 0
	object_event  0,  8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CampusMissionGranny, 0
	object_event  3,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CampusMissionTeacher, 0
	object_event 12,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CampusMissionPokefanM, 0
