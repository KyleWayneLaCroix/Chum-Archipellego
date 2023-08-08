	object_const_def
;	const MAPNAME_OBJECTNAME
	const MEEMAN2F_STUDENT
	const MEEMAN2F_STUDENT2
	const MEEMAN2F_WHINPIN
	const MEEMAN2F_BRIAN
	const MEEMAN2F_DRINKER
	const MEEMAN2F_COLE
	const MEEMAN2F_JASMINE
	const MEEMAN2F_SCOTTY
	const MEEMAN2F_HOLLOWY
	const MEEMAN2F_JACK_SIMON
	const MEEMAN2F_JOHN_MARTIN
	const MEEMAN2F_DR_HRACH
	const MEEMAN2F_DAVID_ANANT
	const MEEMAN2F_JEN_YANG

Meeman2F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script Meeman2FNoopScene1, SCENE_MEEMAN_2F_WHITTEN
	scene_script Meeman2FNoopScene2, SCENE_MEEMAN_2F_WHITTEN_GONE

	def_callbacks
;	callback type, script

Meeman2FNoopScene1:
Meeman2FNoopScene2:
ChrisWhinpinScript:
	end

ChrisWhinpinApologyRightSideScript:
	applymovement PLAYER, WhinpinPlayerMoveLeft
	; fallthrough
ChrisWhinpinApologySceneScript:
	turnobject PLAYER, RIGHT
	opentext
	writetext ChrisWhinpinIntroText
	waitbutton
	turnobject MEEMAN2F_WHINPIN, LEFT
	pause 25
	turnobject MEEMAN2F_WHINPIN, RIGHT
	pause 25
	turnobject MEEMAN2F_WHINPIN, LEFT
	pause 25
	turnobject MEEMAN2F_WHINPIN, RIGHT
	pause 25
	turnobject MEEMAN2F_WHINPIN, DOWN
	pause 25
	writetext ChrisWhinpinApology
	waitbutton
	turnobject MEEMAN2F_WHINPIN, LEFT
	pause 25
	turnobject MEEMAN2F_WHINPIN, RIGHT
	pause 25
	turnobject MEEMAN2F_WHINPIN, LEFT
	pause 25
	turnobject MEEMAN2F_WHINPIN, RIGHT
	pause 25
	turnobject MEEMAN2F_WHINPIN, DOWN
	pause 25
	writetext ChrisWhinpinApology2
	waitbutton
	turnobject MEEMAN2F_WHINPIN, LEFT
	pause 25
	turnobject MEEMAN2F_WHINPIN, RIGHT
	pause 25
	turnobject MEEMAN2F_WHINPIN, LEFT
	pause 25
	turnobject MEEMAN2F_WHINPIN, RIGHT
	pause 25
	turnobject MEEMAN2F_WHINPIN, DOWN
	pause 25
	writetext ChrisWhinpinApology3
	waitbutton
	turnobject MEEMAN2F_WHINPIN, LEFT
	pause 25
	turnobject MEEMAN2F_WHINPIN, RIGHT
	pause 25
	turnobject MEEMAN2F_WHINPIN, LEFT
	pause 25
	turnobject MEEMAN2F_WHINPIN, RIGHT
	pause 25
	turnobject MEEMAN2F_WHINPIN, DOWN
	pause 25
	writetext ChrisWhinpinApology4
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_AFTER
	applymovement MEEMAN2F_WHINPIN, ChrisWhinpinLeaveMovement
	pause 25
	special RestartMapMusic
	pause 20
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement MEEMAN2F_WHINPIN, ChrisWhinpinComeBackMovement
	turnobject MEEMAN2F_WHINPIN, DOWN
	pause 15
	opentext
	writetext ChrisWhinpinApology5
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_AFTER
	applymovement MEEMAN2F_WHINPIN, ChrisWhinpinLeaveMovement
	pause 15
	special RestartMapMusic
	pause 20
	disappear MEEMAN2F_WHINPIN
	setscene SCENE_MEEMAN_2F_WHITTEN_GONE
	setevent EVENT_SAW_WHINPIN_APOLOGY
	special RestartMapMusic
	end

JenYangScript:
	trainer TEACHER, JEN_YANG, EVENT_BEAT_TEACHER_JEN_YANG, JenYangSeenText, JenYangBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JenYangAfterText
	waitbutton
	closetext
	end

DrAnantScript:
	faceplayer
	opentext
	writetext DrAnantText
	yesorno
	iffalse .NoDavid
	writetext DrAnantText2
	waitbutton
	checkevent EVENT_GOT_ANANT_NUGGET
	iftrue .After
	writetext DrAnantGivesNugget
	waitbutton
	verbosegiveitem NUGGET
	waitbutton
	iffalse .PackFull
	setevent EVENT_GOT_ANANT_NUGGET
.After
	writetext DrAnantText3
	waitbutton
	closetext
	end
.NoDavid:
	writetext DrAnantNoText
	waitbutton
	closetext
	end
.PackFull
	closetext
	end

JackSimonScript:
	trainer WEIRDO, JACK_SIMON, EVENT_BEAT_WEIRDO_JACK_SIMON, JackSimonSeenText, JackSimonBeatenText, 0, .Script

.Script:
	opentext
	writetext JackSimonWantToHear
	yesorno
	iffalse .RefuseRealityCheck
	writetext JackSimonRealityCheck1
	yesorno
	iftrue .RealityCheck2
	writetext JackSimonDontFeelInControl
	waitbutton
.RealityCheck2:
	writetext JackSimonRealityCheck2
	waitbutton
	closetext
	pause 255
	opentext
	writetext JackSimonRealityCheck3
	waitbutton
	closetext
	end
.RefuseRealityCheck:
	writetext JackSimonRealityRefusal
	waitbutton
	closetext
	end

JohnMartinScript:
	jumptextfaceplayer JohnMartinText


ScottyScript:
	trainer SUPERVISOR, SCOT, EVENT_BEAT_SUPERVISOR_SCOT, ScottySeenText, ScottyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScottyAfterText
	waitbutton
	closetext
	end

ColeScript:
	jumptextfaceplayer ColeText


JasmineHScript:
	trainer LASS, JASMINEH, EVENT_BEAT_LASS_JASMINE, JasmineHSeenText, JasmineHBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JasmineHAfterText
	waitbutton
	closetext
	end

HollowyScript:
	trainer FURRY, HOLLOWY, EVENT_BEAT_FURRY_HOLLOWY, HollowySeenText, HollowyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HollowyAfterText
	waitbutton
	closetext
	end


ChelseaDrinkerScript:
	trainer WHITE_GIRL, DRINKER, EVENT_BEAT_WHITE_GIRL_DRINKER, DrinkerSeenText, DrinkerBeatenText, 0, .Script

.Script:
	opentext
	checkevent EVENT_GOT_DRINKER_BIG_PEARL
	iftrue .After
	writetext DrinkerRewardText
	waitbutton
	verbosegiveitem BIG_PEARL
	iffalse .BagFull
	setevent EVENT_GOT_DRINKER_BIG_PEARL
	closetext
	end
.After:
	writetext DrinkerAfterText
	waitbutton
	closetext
	end
.BagFull:
	end

TrainerPhotographerBrian:
	trainer PHOTOGRAPHER, PBRIAN, EVENT_BEAT_PHOTOGRAPHER_BRIAN, MeemanPhotoBrianSeenText, MeemanPhotoBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext MeemanPhotoBrianAfterText
	waitbutton
	closetext
	playsound SFX_ZAP_CANNON
	earthquake 120
	waitsfx
	cry FURIOUSB
	waitsfx
	disappear MEEMAN2F_BRIAN
	refreshscreen
	end

Meeman2FStudentScript:
	jumptextfaceplayer Meeman2FStudentText

DrHrachScript:
	jumptextfaceplayer DrHrachText

Meeman2FStudent2Script:
	jumptextfaceplayer Meeman2FStudent2Text

JenYangSignScript:
	jumptext JenYangSignText

CaseyOfficeSignScript:
	jumptext CaseyOfficeSignText

WebClassSignScript:
	jumptext WebClassSignText

ArantSignScript:
	jumptext ArantSignText

DesignSignScript:
	jumptext DesignSignText

EICSignScript:
	jumptext EICSignText

FreemanSignScript:
	jumptext FreemanSignText

DrHrachSignScript:
	jumptext DrHrachSignText

MeemanClassRoomSignScript:
	jumptext MeemanClassroomSignText

MeemanEmptyOfficeSignScript:
	jumptext MeemanEmptyOfficeSignText

JournalismComputerScript:
	jumptext JournalismComputerText

CaseyOfficeComputerScript:
	opentext
	writetext CaseyOfficeComputerText
	yesorno
	iffalse .End
	writetext CaseyOfficeComputerText2
	waitbutton
.End:
	closetext
	end

ClassroomComputerScript:
	jumptext ClassroomComputerText

FreemanComputerScript:
	jumptext FreemanComputerText

DesignComputerScript:
	jumptext DesignComputerText

FreemanShelfScript:
	jumptext FreemanShelfText

FreemanBoxesScript:
	jumptext FreemanBoxesText

DrinkerComputerScript:
	jumptext DrinkerComputerText

DrinkerStatueScript:
	jumptext DrinkerStatueText

DrinkerShelfScript:
	jumptext DrinkerShelfText

EmptyOfficeComputerScript:
	end

WhinpinPlayerMoveLeft:
	step LEFT
	step_end

ChrisWhinpinLeaveMovement:
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

ChrisWhinpinComeBackMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step_end

DrinkerShelfText:
	text "The shelves are"
	line "lined with news"
	cont "clippings of"
	cont "DRINKER's writing."
	done

DrinkerStatueText:
	text "DRINKER seems to"
	line "had all of her"
	cont "awards melted"
	cont "down and cast"
	cont "into new statues"
	cont "to her glory."
	done

DrinkerComputerText:
	text "Her desktop"
	line "background is"
	cont "just the word"
	cont "JOURNALISM on the"
	cont "front cover of a"
	cont "Bible."
	done

FreemanBoxesText:
	text "Boxes full of old"
	line "newspapers and"
	cont "office equipment."

	para "There are a few"
	line "broken monitors"
	cont "that have CDs"
	cont "stuck in them."
	done

FreemanShelfText:
	text "The shelf is full"
	line "of old press kits"
	cont "for movies."
	done

DesignComputerText:
	text "Advice animal"
	line "memes and rage"
	cont "comics are used"
	cont "to fill the spots"
	cont "they couldn't get"
	cont "ads for."
	done

FreemanComputerText:
	text "An incredibly"
	line "poorly written"
	cont "story on a very"
	cont "dull campus event"
	cont "is half-written"
	cont "on the screen."
	done

ClassroomComputerText:
	text "A very shitty"
	line "student project"
	cont "in progress is"
	cont "on the screen."
	done

CaseyOfficeComputerText2:
	text "CONGRATS CASEY,"

	para "You have been"
	line "diagnosed with"
	cont "mild, acute,"
	cont "chronic malaise"

	para "To deal with this"
	line "condition, your"
	cont "MEDICAL MARIJUANA"
	cont "CARD should be in"
	cont "your mailbox at"
	cont "420 IVY ROAD now!"

	para "Come visit us at"
	line "the DR. NUGGZ MD"
	cont "DISPENSARY found"
	cont "near AWAKENING"
	cont "BEACH, through"
	cont "the DANK CAVE."

	para "Remember to bring"
	line "your medical card"

	para "Can't sell to you"
	line "without it."
	done

CaseyOfficeComputerText:
	text "The computer is"
	line "open to a gmail"
	cont "account."

	para "The first email"
	line "is from a DR."
	cont "NUGG with the"
	cont "subject line"
	cont "IT'S IN YOUR"
	cont "POCKET."

	para "Do you open it?"
	done

JournalismComputerText:
	text "You glance at"
	line "the computer"
	cont "screen and see"
	cont "next semester's"
	cont "class plan."

	para "Looks like ADOBE"
	line "FLASH and TWITTER"
	cont "will be required"
	cont "courses."
	done

MeemanPhotoBrianSeenText:
	text "BRIAN: WALK AND"
	line "TALK, BITCH!"
	done

MeemanPhotoBrianBeatenText:
	text "Oh god, thanks."
	line "It's like I was"
	cont "stuck in some"
	cont "vague memory of"
	cont "college."
	done

MeemanPhotoBrianAfterText:
	text "BRIAN: No for"
	line "real dude, I"
	cont "appreciate it."

	para "Feel like I've"
	line "been all over"
	cont "the place."

	para "Memory all fuzzy"

	para "Things just seem"
	cont "off..."

	para "Something weird's"
	line "happening to me."

	para "Do I know you?"
	line "You look famil-"
	done

MeemanEmptyOfficeSignText:
	text "                 "
	line "      OFFICE     "

	para "The placard is"
	line "empty."

	para "Looks like no one"
	line "has this office"
	cont "right now."
	done

MeemanClassroomSignText:
	text "  CLASSROOM 2B   "
	done


DrHrachSignText:
	text "  DR. TOM HRACH  "
	line "      OFFICE     "
	done

FreemanSignText:
	text " THE SEMESTERLY  "
	line "    FREEMAN"
	done

EICSignText:
	text " CHELSEA DRINKER  "
	line " EDITOR IN CHIEF "
	
	para "   HERO TO THE   "
	line "   DOWNTRODDEN"
	done

DesignSignText:
	text "DESIGN AND LAYOUT"
	para "   DO NOT FEED   "
	done

ArantSignText:
	text " DR. DAVID ANANT "
	line "     OFFICE      "
	done

WebClassSignText:
	text "WEB PUBLISHING"
	line "  CLASSROOM"
	done

CaseyOfficeSignText:
	text "  STORAGE CLOSET "

	para "A yellow sticky"
	line "note is stuck on"
	cont "the sign and says"
	
	para "   K.C. Smilbur  "
	line "      OFFICE     "
	done

JenYangSignText:
	text "  DR. JEN YANG   "
	line "      OFFICE     "
	done

DrinkerSeenText:
	text "DRINKER: I have"
	line "recently defeated"
	cont "the entire SGA,"
	cont "school admins,"
	cont "the campus police"
	cont "Action News Five,"
	cont "Furious B, a"
	cont "nest of angry"
	cont "hornets, and soon"
	
	para "you."
	done

DrinkerBeatenText:
	text "I still have more"
	line "journalism awards"
	cont "than you ever"
	cont "will in your life"
	done

DrinkerRewardText:
	text "DRINKER: You have"
	line "done what was"
	cont "once thought to"
	cont "be impossible."

	para "You were better"
	line "than me at"
	cont "something."

	para "It wasn't the"
	line "most important"
	cont "thing, but it was"
	cont "something."

	para "In honor of this"
	line "occassion, I"
	cont "present you with"
	cont "this."
	done

DrinkerAfterText:
	text "DRINKER: Tireless"
	line "reporting is the"
	cont "only thing that"
	cont "stands between"
	cont "our nation and"
	cont "unending chaos &"
	cont "disarray."

	para "That's why I had"
	line "to kill the  SGA"
	cont "president."
	done

Meeman2FStudent2Text:
	text "I left some cool"
	line "aviators in this"
	cont "classroom, but I"
	cont "can't find them"
	cont "in the lost and"
	cont "found."

	para "I guess someone"
	line "stole them..."
	done

Meeman2FStudentText:
	text "I think today is"
	line "a holiday or"
	cont "something."

	para "There's only a"
	line "maximum of 15"
	cont "people on each"
	cont "floor."

	para "How odd."
	done

DrHrachText:
	text "HRACH: Excuse me,"
	line "I am very busy."

	para "After a certain"
	line "other professor"
	cont "had the class do"
	cont "a Harlem Shake"
	cont "challenge for a"
	cont "grade, I'm afraid"
	cont "I will need to"
	cont "come up with a"
	cont "brilliant idea"
	cont "to remain the"
	cont "cool professor."

	para "Maybe there's"
	line "some inspiraation"
	cont "on Friendster..."
	done

HollowySeenText:
	text "HOLLOWY: Wanna"
	line "hear me make a"
	cont "noise like a"
	cont "dolphin?"
	done

HollowyBeatenText:
	text "I love to collect"
	line "mascot costumes!"
	done

HollowyAfterText:
	text "HOLLOWY: ADHD?"
	line "what's that?"
	done

JasmineHSeenText:
	text "JASMINE: I'm"
	line "trying to collect"
	cont "all of the cutest"
	cont "#MON!"
	done

JasmineHBeatenText:
	text "I prefer to"
	line "collect #MON"
	cont "not battle them."
	done

JasmineHAfterText:
	text "JASMINE: Everyone"
	line "here can be a"
	cont "little bit much"
	cont "sometimes."

	para "But it's a fun"
	line "job."
	done

ColeText:
	text "COLE: I do the"
	line "layouts here."

	para "Job got wayyy"
	line "easier when it"
	cont "became a one-"
	cont "-page paper."
	done


ScottySeenText:
	text "Scotty: I used"
	line "to run this place"

	para "but I'm just here"
	line "to visit and"
	cont "start some shit"
	cont "today."
	done

ScottyBeatenText:
	text "I could beat the"
	line "shit out of you"
	cont "in a fist fight."
	done

ScottyAfterText:
	text "Scotty: pretty"
	line "wild that you"
	cont "can do cockfights"
	cont "now, but just"
	cont "regular fighting"
	cont "is still illegal."

	para "Dumb shit."
	done

JohnMartinText:
	text "J. Martin: Hey"
	line "big guy!"

	para "I'm the sports"
	line "editor here, but"
	cont "everyone is all"
	cont "about dogfighting"
	cont "now."

	para "What happened to"
	line "good old football"

	para "A completely un-"
	line "-problematic game"
	done

JackSimonWantToHear:
	text "JACK SIMON: Do"
	line "you want to"
	cont "hear my magnum"
	cont "opus column?"

	para "It will change"
	line "the world."
	done

JackSimonRealityRefusal:
	text "This will be the"
	line "biggest mistake"
	cont "of your life."

	para "You are turning"
	line "your nose up at"
	cont "unlocking the"
	cont "secrets of the"
	cont "universe."
	done

JackSimonSeenText:
	text "JACK SIMON: Man,"
	line "I got writer's"
	cont "block or somethin"

	para "I feel like if I"
	line "have a #MON"
	cont "battle, the brain"
	cont "genius will get"
	cont "knocked loose."
	done

JackSimonBeatenText:
	text "THAT DID IT."

	para "I have pierced"
	line "the veil of all"
	cont "mortal knowledge."

	para "This will be my"
	line "magnum opus."
	done

JackSimonRealityCheck1:
	text "Alright, here's"
	line "my masterpiece:"

	para "Reality Check"
	line "    by Jack Simon"

	para "Take a deep"
	line "breath."

	para "Clear your mind."

	para "Now focus on this"
	line "sentence, repeat"
	cont "it in your head:"

	para "I am in control"
	line "of my destiny,"
	cont "nobody controls"
	cont "my destiny but me"

	para "Repeat this over"
	line "and over again."

	para "Make it resonate"
	line "in your mind."

	para "Say it out loud"
	line "if you feel like."

	para "Now don't you"
	line "feel more in"
	cont "control of your"
	cont "destiny?"
	done

JackSimonDontFeelInControl:
	text "Well, you better"
	line "keep listinen'"
	cont "bud, cause you"
	cont "will soon."
	done

JackSimonRealityCheck2:
	text "You may not"
	line "believe destiny,"
	cont "but I do."

	para "To me, destiny is"
	line "who you want to"
	cont "become in your"
	cont "lifespan alive on"
	cont "this earth."

	para "Destiny is your"
	line "life, determined"
	cont "by how you live"
	cont "it, and how you"
	cont "can influence"
	cont "your life to be"
	cont "who or what you"
	cont "it to be."
	
	para "To take control"
	line "your destiny,"
	cont "begin by writing"
	cont "down your goals:"
	cont "who do you want"
	cont "to be?"

	para "Pause a moment"
	line "and realize the"
	cont "possibilities"
	cont "here are infinite"
	done

JackSimonRealityCheck3:
	text "There is no limit"
	line "to who you can"
	cont "become...."

	para "And don't tell"
	line "yourself:"

	para "I can't do (fill"
	line "in the blank)"

	para "You MUST remain"
	line "confident that"
	cont "YOU are in"
	cont "control of your"
	cont "desiny."

	para "No one controls"
	line "your destiny,"
	cont "but you."

	para "The ability to"
	line "become who you"
	cont "want to be is"
	cont "determined by"
	cont "you, so to"
	cont "become who you"
	cont "want to be, the"
	cont "first step is to"
	cont "find out who you"
	cont "want to become."

	para "Now write it"
	line "down!"

	para "Keep it with you"
	line "on a piece of"
	cont "paper, and keep"
	cont "it on you."

	para "Read it every"
	line "night before bed."

	para "Your destiny is"
	line "determined by"
	cont "your actions."

	para "Take a look at"
	line "your goals and"
	cont "ask yourself:"

	para "What steps must"
	line "I take to reach"
	cont "that goal?"

	para "The next step"
	line "is to go out,"

	para "and take those"
	line "steps."

	para "TAKE ACTION."

	para "DO IT NOW."

	para "Do this, and"
	line "you will be well"
	cont "on your way to"
	cont "becoming who you"
	cont "want to be."
	done


DrAnantText:
	text "ANANT: Well well"
	line "you must be a new"
	cont "journalist in"
	cont "training."

	para "Do you want to"
	line "hear some nuggets"
	cont "of wisdom from me"
	cont "the JOURNALISM"
	cont "chair?"
	done

DrAnantText2:
	text "Print journalism"
	line "is not only alive"
	cont "but the only real"
	cont "journalism."

	para "Don't feed the"
	line "broadcast students"
	cont "after midnight."

	para "Public Relations"
	line "isn't journalism,"
	cont "but it's the only"
	cont "concentration"
	cont "likely to get a"
	cont "job, so we keep"
	cont "it here."

	para "I hope these pro"
	line "tips will help"
	cont "you."

	para "They're called"
	line "pro tips because"
	cont "they are tips"
	cont "from me, a pro."
	done

DrAnantGivesNugget:
	text "For listening to"
	line "all of my nuggets"
	cont "of wisdom, here"
	cont "have this!"
	done

DrAnantText3:
	text "Not enough young"
	line "people these days"
	cont "appreciate wisdom"
	cont "of their elders."

	para "Or journalism."

	para "Or licorice."
	done

DrAnantNoText:
	text "Well, it sounds"
	line "like you should"
	cont "get the heck out"
	cont "of my office."

	para "Pardon my French."
	done

JenYangSeenText:
	text "JEN YANG: Oh!"

	para "You must be a"
	line "new student here."

	para "I hope you are"
	line "learning about"
	cont "JOURNALISM and"
	cont "the INTERNET."

	para "You must be here"
	line "to master the"
	cont "DRAGON DROP from"
	cont "me."

	para "Well get ready,"
	line "DRAGONs are quite"
	cont "tough."
	done

JenYangBeatenText:
	text "You have learned"
	line "the secrets of"
	cont "DRAGON DROP."
	done

JenYangAfterText:
	text "JEN YANG: I'm so"
	line "happy to see my"
	cont "students learn!"
	done

ChrisWhinpinApology5:
	text "WHINPIN: I know"
	line "this is a trying"
	cont "time for all of"
	cont "you."

	para "It'll be hard for"
	line "the FREEMAN to"
	cont "continue without"
	cont "me, but while it"
	cont "will never be as"
	cont "good, I believe"
	cont "you can all make"
	cont "an adequate paper"
	cont "if you work"
	cont "together."

	para "No need for"
	line "applause."
	done

ChrisWhinpinApology4:
	text "WHINPIN: On an"
	line "unrelated note,"
	cont "I am retiring"
	cont "from the FREEMAN"

	para "The timing is just"
	line "a cooincidence."


	para "Goodbye forever."
	done

ChrisWhinpinApology3:
	text "WHINPIN: No one?"

	para "Well okay..."

	para "The disciplinary"
	line "committee has"
	cont "said that I must"
	cont "formally apolog-"
	cont "-ize to you all"
	cont "for my crimes."

	para "My lawyer has"
	line "said that I must"
	cont "specify that an"
	cont "apology does NOT"
	cont "mean that I am"
	cont "guilty."

	para "On a personal"
	line "level, I must"
	cont "also formally say"
	cont "that this apology"
	cont "does not mean I"
	cont "feel remotely bad"
	cont "about my actions."
	done

ChrisWhinpinApology2:
	text "WHINPIN: Speaking"
	line "of people pissing"
	cont "and clothing, did"
	cont "one of you piss"
	cont "all over my suit?"

	para "I probably won't"
	line "be mad if you"
	cont "confess."
	done

ChrisWhinpinApology:
	text "WHINPIN: Good,"
	line "now you see there"
	cont "have been some"
	cont "rumors that I"
	cont "burnt down my own"
	cont "home as part of a"
	cont "combination"
	cont "insurance/charity"
	cont "fraud."

	para "Also rumors that"
	line "I have several"
	cont "alternate names"
	cont "that are very"
	cont "similar that I"
	cont "use when I steal"
	cont "by shoving things"
	cont "in my pants."

	para "Now, you may ALSO"
	line "have heard that I"
	cont "shoved a bunch of"
	cont "books in my pants"
	cont "then peed myself"
	cont "when the cop saw"
	cont "me, so I had to"
	cont "pay extra for the"
	cont "pee-stained books"
	done

ChrisWhinpinIntroText:
	text "CHRIS WHINPIN:"
	line "EXCUSE ME PEONS"
	cont "I HAVE SOMETHING"
	cont "TO ANNOUNCE."

	para "EVERYONE LOOK AT"
	line "ME."

	para "ME, THE MOST"
	line "IMPORTANT ONE."
	done


Meeman2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 29,  0, MEEMAN_1F, 3
	warp_event 1, 26, MEEMAN_ROOF, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 13, 18, SCENE_MEEMAN_2F_WHITTEN, ChrisWhinpinApologySceneScript
	coord_event 14, 18, SCENE_MEEMAN_2F_WHITTEN, ChrisWhinpinApologyRightSideScript

	def_bg_events
;	bg_event x, y, type, script
	bg_event 22,  3, BGEVENT_READ, JenYangSignScript
	bg_event 18,  3, BGEVENT_READ, CaseyOfficeSignScript
	bg_event 23,  6, BGEVENT_READ, WebClassSignScript
	bg_event  2,  5, BGEVENT_READ, ArantSignScript
	bg_event 18, 17, BGEVENT_READ, DesignSignScript
	bg_event 26, 17, BGEVENT_READ, EICSignScript
	bg_event 12, 17, BGEVENT_READ, FreemanSignScript
	bg_event  4, 17, BGEVENT_READ, DrHrachSignScript
	bg_event  8, 15, BGEVENT_READ, MeemanClassRoomSignScript
	bg_event  4, 23, BGEVENT_READ, MeemanEmptyOfficeSignScript
	bg_event 19,  7, BGEVENT_UP, JournalismComputerScript
	bg_event  5,  1, BGEVENT_UP, JournalismComputerScript
	bg_event  8,  1, BGEVENT_UP, JournalismComputerScript
	bg_event  7, 19, BGEVENT_UP, JournalismComputerScript
	bg_event 18,  1, BGEVENT_UP, CaseyOfficeComputerScript
	bg_event 19,  1, BGEVENT_UP, CaseyOfficeComputerScript
	bg_event 12, 25, BGEVENT_UP, ClassroomComputerScript
	bg_event 29,  7, BGEVENT_UP, ClassroomComputerScript
	bg_event 28,  7, BGEVENT_UP, ClassroomComputerScript
	bg_event 27,  7, BGEVENT_UP, ClassroomComputerScript
	bg_event 26,  7, BGEVENT_UP, ClassroomComputerScript
	bg_event 25,  7, BGEVENT_UP, ClassroomComputerScript
	bg_event 24,  7, BGEVENT_UP, ClassroomComputerScript
	bg_event  9,  1, BGEVENT_UP, ClassroomComputerScript
	bg_event 18,  7, BGEVENT_UP, FreemanComputerScript
	bg_event 10, 21, BGEVENT_UP, FreemanComputerScript
	bg_event 11, 25, BGEVENT_UP, FreemanComputerScript
	bg_event 11, 21, BGEVENT_UP, FreemanComputerScript
	bg_event 10, 25, BGEVENT_UP, FreemanComputerScript
	bg_event 19, 25, BGEVENT_UP, FreemanComputerScript
	bg_event 15, 21, BGEVENT_UP, FreemanComputerScript
	bg_event 15, 25, BGEVENT_UP, FreemanComputerScript
	bg_event 14, 21, BGEVENT_UP, FreemanComputerScript
	bg_event 14, 25, BGEVENT_UP, FreemanComputerScript
	bg_event 12, 21, BGEVENT_UP, FreemanComputerScript
	bg_event 13, 25, BGEVENT_UP, FreemanComputerScript
	bg_event 13, 21, BGEVENT_UP, FreemanComputerScript
	bg_event 28, 18, BGEVENT_UP, FreemanShelfScript
	bg_event 29, 18, BGEVENT_UP, FreemanShelfScript
	bg_event 20, 21, BGEVENT_READ, FreemanBoxesScript
	bg_event 21, 21, BGEVENT_READ, FreemanBoxesScript
	bg_event 19, 21, BGEVENT_READ, FreemanBoxesScript
	bg_event 18, 21, BGEVENT_READ, FreemanBoxesScript
	bg_event 21, 20, BGEVENT_READ, FreemanBoxesScript
	bg_event 20, 20, BGEVENT_READ, FreemanBoxesScript
	bg_event 19, 20, BGEVENT_READ, FreemanBoxesScript
	bg_event 18, 20, BGEVENT_READ, FreemanBoxesScript
	bg_event 19, 13, BGEVENT_UP, DesignComputerScript
	bg_event 21, 13, BGEVENT_UP, DesignComputerScript
	bg_event 29, 13, BGEVENT_UP, DrinkerComputerScript
	bg_event  6, 25, BGEVENT_UP, EmptyOfficeComputerScript
	bg_event 27, 13, BGEVENT_UP, DrinkerShelfScript
	bg_event 26, 13, BGEVENT_UP, DrinkerShelfScript
	bg_event 25, 13, BGEVENT_UP, DrinkerStatueScript
	bg_event 24, 13, BGEVENT_UP, DrinkerStatueScript

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 23,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Meeman2FStudentScript, 0
	object_event  6, 11, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Meeman2FStudent2Script, 0
	object_event 16, 18, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChrisWhinpinScript, EVENT_SAW_WHINPIN_APOLOGY
	object_event 27, 24, SPRITE_FAIRY, SPRITEMOVEDATA_WANDER, 1, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerPhotographerBrian, EVENT_BEAT_PHOTOGRAPHER_BRIAN
	object_event 28, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, ChelseaDrinkerScript, 0
	object_event 20, 14, SPRITE_BILL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ColeScript, 0
	object_event 18, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, JasmineHScript, 0
	object_event 10, 26, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, ScottyScript, 0
	object_event 23, 21, SPRITE_MOM, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, HollowyScript, 0
	object_event 14, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, JackSimonScript, 0
	object_event 18, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JohnMartinScript, 0
	object_event  6, 20, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DrHrachScript, 0
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DrAnantScript, 0
	object_event 24,  2, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, JenYangScript, 0
