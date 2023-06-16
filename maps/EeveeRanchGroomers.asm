DEF GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE   EQU 500
DEF GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_PRICE EQU 300

	object_const_def
;	const MAPNAME_OBJECTNAME
	const EEVEE_RANCH_GROOMERS_DAISY
	const EEVEE_RANCH_GROOMERS_OLDER_HARICUT
	const EEVEE_RANCH_GROOMERS_YOUNGER_HAIRCUT
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_1
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_2
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_3
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_4
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_5
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_6
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_7
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_8
	const EEVEE_RANCH_GROOMERS_KIMONO_GIRL_9
	const EEVEE_RANCH_GROOMERS_VICTORIA

EeveeRanchGroomers_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerKimonoGirlSui:
	trainer KIMONO_GIRL, SUI, EVENT_BEAT_KIMONO_GIRL_SUI, KimonoGirlSuiSeenText, KimonoGirlSuiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlSuiAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlAkane:
	trainer KIMONO_GIRL, AKANE, EVENT_BEAT_KIMONO_GIRL_AKANE, KimonoGirlAkaneSeenText, KimonoGirlAkaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlAkaneAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlRiko:
	trainer KIMONO_GIRL, RIKO, EVENT_BEAT_KIMONO_GIRL_RIKO, KimonoGirlRikoSeenText, KimonoGirlRikoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlRikoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlKimi:
	trainer KIMONO_GIRL, KIMI, EVENT_BEAT_KIMONO_GIRL_KIMI, KimonoGirlKimiSeenText, KimonoGirlKimiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKimiAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlKari:
	trainer KIMONO_GIRL, KARI, EVENT_BEAT_KIMONO_GIRL_KARI, KimonoGirlKariSeenText, KimonoGirlKariBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKariAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlHika:
	trainer KIMONO_GIRL, HIKA, EVENT_BEAT_KIMONO_GIRL_HIKA, KimonoGirlHikaSeenText, KimonoGirlHikaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlHikaAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlHana:
	trainer KIMONO_GIRL, HANA, EVENT_BEAT_KIMONO_GIRL_HANA, KimonoGirlHanaSeenText, KimonoGirlHanaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlHanaAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlSen:
	trainer KIMONO_GIRL, SEN, EVENT_BEAT_KIMONO_GIRL_SEN, KimonoGirlSenSeenText, KimonoGirlSenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlSenAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlHachi:
	trainer KIMONO_GIRL, HACHI, EVENT_BEAT_KIMONO_GIRL_HACHI, KimonoGirlHachiSeenText, KimonoGirlHachiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlHachiAfterBattleText
	waitbutton
	closetext
	end

EeveeGroomersVictoriaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_FLASHLIGHT
	iftrue .VictoriaGaveFlashlight
	writetext VictoriaIntroText
	promptbutton
	checkevent EVENT_BEAT_KIMONO_GIRL_SUI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_AKANE
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_RIKO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KIMI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KARI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_HIKA
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_HANA
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SEN
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_HACHI
	iffalse .KimonoGirlsUndefeated
	sjump .GetFlashlight
	end

.KimonoGirlsUndefeated:
	writetext VictoriaKimonoGirlsUndefeatedText
	waitbutton
	closetext
	end

.GetFlashlight:
	writetext GroomersVictoriaMustFightText
	waitbutton
	closetext
	winlosstext GroomersVictoriaWinText, 0
	setlasttalked EEVEE_RANCH_GROOMERS_VICTORIA
	loadtrainer FURRY, VICTORIA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FURRY_VICTORIA
.AfterVictorious:
	opentext
	writetext GroomersVictoriaYouWonText
	waitbutton
	verbosegiveitem FLASHLIGHT
	setevent EVENT_GOT_FLASHLIGHT
	waitbutton
.VictoriaGaveFlashlight:
	writetext GroomersVictoriaAfterText
	waitbutton
	closetext
	end
DaisyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext DaisyOfferGroomingText
	yesorno
	iffalse .Refused
	writetext DaisyWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext DaisyAlrightText
	waitbutton
	closetext
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	opentext
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	promptbutton
	writetext DaisyAllDoneText
	waitbutton
	closetext
	end

.AlreadyGroomedMon:
	writetext DaisyAlreadyGroomedText
	waitbutton
	closetext
	end

.Refused:
	writetext DaisyRefusedText
	waitbutton
	closetext
	end

.CantGroomEgg:
	writetext DaisyCantGroomEggText
	waitbutton
	closetext
	end
OlderHaircutBrotherScript:
	faceplayer
	opentext
	special PlaceMoneyTopRight
	writetext GoldenrodUndergroundOlderHaircutBrotherOfferHaircutText
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	writetext GoldenrodUndergroundOlderHaircutBrotherAskWhichMonText
	promptbutton
	special OlderHaircutBrother
	ifequal $0, .Refused
	ifequal $1, .Refused
	setflag ENGINE_GOLDENROD_UNDERGROUND_GOT_HAIRCUT
	ifequal $2, .two
	ifequal $3, .three
	sjump .else
.two
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then
.three
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then
.else
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then
.then
	takemoney YOUR_MONEY, GOLDENRODUNDERGROUND_OLDER_HAIRCUT_PRICE
	special PlaceMoneyTopRight
	writetext GoldenrodUndergroundOlderHaircutBrotherWatchItBecomeBeautifulText
	waitbutton
	closetext
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	opentext
	writetext GoldenrodUndergroundOlderHaircutBrotherAllDoneText
	waitbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue EitherHaircutBrotherScript_SlightlyHappier
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue EitherHaircutBrotherScript_Happier
	sjump EitherHaircutBrotherScript_MuchHappier
.Refused:
	writetext GoldenrodUndergroundOlderHaircutBrotherThatsAShameText
	waitbutton
	closetext
	end
.NotEnoughMoney:
	writetext GoldenrodUndergroundOlderHaircutBrotherYoullNeedMoreMoneyText
	waitbutton
	closetext
	end
.AlreadyGotHaircut:
	writetext GoldenrodUndergroundOlderHaircutBrotherOneHaircutADayText
	waitbutton
	closetext
	end

YoungerHaircutBrotherScript:
	faceplayer
	opentext
	special PlaceMoneyTopRight
	writetext GoldenrodUndergroundYoungerHaircutBrotherOfferHaircutText
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	writetext GoldenrodUndergroundYoungerHaircutBrotherAskWhichMonText
	promptbutton
	special YoungerHaircutBrother
	ifequal $0, .Refused
	ifequal $1, .Refused
	setflag ENGINE_GOLDENROD_UNDERGROUND_GOT_HAIRCUT
	ifequal $2, .two
	ifequal $3, .three
	sjump .else
.two
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then
.three
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then
.else
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	sjump .then
.then
	takemoney YOUR_MONEY, GOLDENRODUNDERGROUND_YOUNGER_HAIRCUT_PRICE
	special PlaceMoneyTopRight
	writetext GoldenrodUndergroundYoungerHaircutBrotherIllMakeItLookCoolText
	waitbutton
	closetext
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	opentext
	writetext GoldenrodUndergroundYoungerHaircutBrotherAllDoneText
	waitbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue EitherHaircutBrotherScript_SlightlyHappier
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue EitherHaircutBrotherScript_Happier
	sjump EitherHaircutBrotherScript_MuchHappier
.Refused:
	writetext GoldenrodUndergroundYoungerHaircutBrotherHowDisappointingText
	waitbutton
	closetext
	end
.NotEnoughMoney:
	writetext GoldenrodUndergroundYoungerHaircutBrotherShortOnFundsText
	waitbutton
	closetext
	end
.AlreadyGotHaircut:
	writetext GoldenrodUndergroundYoungerHaircutBrotherOneHaircutADayText
	waitbutton
	closetext
	end

EitherHaircutBrotherScript_SlightlyHappier:
	writetext HaircutBrosText_SlightlyHappier
	special PlayCurMonCry
	waitbutton
	closetext
	end

EitherHaircutBrotherScript_Happier:
	writetext HaircutBrosText_Happier
	special PlayCurMonCry
	waitbutton
	closetext
	end

EitherHaircutBrotherScript_MuchHappier:
	writetext HaircutBrosText_MuchHappier
	special PlayCurMonCry
	waitbutton
	closetext
	end

VictoriaIntroText:
	text "VICTORIA: Hello!"
	line "Welcome to the"
	cont "EEVEE SALON!"

	para "We have several"
	line "groomers here to"
	cont "cut the hair of"
	cont "your #MON."

	para "We also have some"
	line "dancers on the"
	cont "stage who are"
	cont "EEVEE Trainers."

	para "If you can beat"
	line "all of them, I'll"
	cont "give you a useful"
	cont "prize!"
	done

VictoriaKimonoGirlsUndefeatedText:
	text "VICTORIA: Looks"
	line "like you have a"
	cont "few more to beat!"

	para "Come back once"
	line "you've beaten all"
	cont "of them."
	done

GroomersVictoriaMustFightText:
	text "VICTORIA: Looks"
	line "like you beat all"
	cont "the KIMONO GIRLS."

	para "Now it's my turn"
	line "to fight you!"
	done

GroomersVictoriaWinText:
	text "VICTORIA: I cyant"
	line "bemewve I pawst."
	done

GroomersVictoriaYouWonText:
	text "VICTORIA: You won"
	line "so now I award"
	cont "you with this."
	done

GroomersVictoriaAfterText:
	text "VICTORIA: That"
	line "FLASHLIGHT is not"
	cont "only good for"
	cont "lighting things."

	para "It's also very"
	line "useful for self-"
	cont "-defense."
	done

GoldenrodUndergroundOlderHaircutBrotherOfferHaircutText:
	text "Welcome!"

	para "I work here at"
	line "the #SALON!"

	para "I'm the older and"
	line "better of the two"
	cont "HAIRCUT BROTHERS."

	para "I can make your"
	line "#MON beautiful"
	cont "for just ¥500."

	para "Would you like me"
	line "to do that?"
	done

GoldenrodUndergroundOlderHaircutBrotherAskWhichMonText:
	text "Which #MON"
	line "should I work on?"
	done

GoldenrodUndergroundOlderHaircutBrotherWatchItBecomeBeautifulText:
	text "OK! Watch it"
	line "become beautiful!"
	done

GoldenrodUndergroundOlderHaircutBrotherAllDoneText:
	text "There! All done!"
	done

GoldenrodUndergroundOlderHaircutBrotherThatsAShameText:
	text "Is that right?"
	line "That's a shame!"
	done

GoldenrodUndergroundOlderHaircutBrotherYoullNeedMoreMoneyText:
	text "You'll need more"
	line "money than that."

	para "Maybe try my less"
	line "talented younger"
	cont "brother who also"
	cont "cuts hair and"
	cont "charges less."
	done

GoldenrodUndergroundOlderHaircutBrotherOneHaircutADayText:
	text "I do only one"
	line "haircut a day. I'm"
	cont "done for today."
	done

GoldenrodUndergroundYoungerHaircutBrotherOfferHaircutText:
	text "Welcome to the"
	line "#MON SALON!"

	para "I'm the younger"
	line "and less expen-"
	cont "sive of the two"
	cont "HAIRCUT BROTHERS."

	para "However, this"
	line "doesn't mean I"
	cont "am worse at this"
	cont "than my big bro"

	para "I'm undercutting"
	line "his prices to"
	cont "drive him out of"
	cont "business, to get"
	cont "rid of the comp-"
	cont "-etition."

	para "I'll spiff up your"
	line "#MON for just"
	cont "¥300."

	para "So? How about it?"
	done

GoldenrodUndergroundYoungerHaircutBrotherAskWhichMonText:
	text "OK, which #MON"
	line "should I do?"
	done

GoldenrodUndergroundYoungerHaircutBrotherIllMakeItLookCoolText:
	text "OK! I'll make it"
	line "look cool!"
	done

GoldenrodUndergroundYoungerHaircutBrotherAllDoneText:
	text "There we go!"
	line "All done!"
	done

GoldenrodUndergroundYoungerHaircutBrotherHowDisappointingText:
	text "No? "
	line "How disappointing!"
	done

GoldenrodUndergroundYoungerHaircutBrotherShortOnFundsText:
	text "You're a little"
	line "short on funds."

	para "I am already"
	line "running on slim"
	cont "margins here."
	done

GoldenrodUndergroundYoungerHaircutBrotherOneHaircutADayText:
	text "I can do only one"
	line "haircut a day."

	para "Sorry, but I'm all"
	line "done for today."
	done

HaircutBrosText_SlightlyHappier:
	text_ram wStringBuffer3
	text " looks a"
	line "little happier."
	done

HaircutBrosText_Happier:
	text_ram wStringBuffer3
	text " looks"
	line "happy."
	done

HaircutBrosText_MuchHappier:
	text_ram wStringBuffer3
	text " looks"
	line "delighted!"
	done

DaisyOfferGroomingText:
	text "Hi! I'm still"
	line "learning, so I"
	cont "can groom one of"
	cont "your #MON for"
	cont "free!"

	para "Would you like me"
	line "to groom one?"
	done

DaisyWhichMonText:
	text "Which one should"
	line "I groom?"
	done

DaisyAlrightText:
	text "OK, I'll get it"
	line "looking great!"
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " looks"
	line "content."
	done

DaisyAllDoneText:
	text "All done!"

	para "It's such a cute"
	line "#MON."
	done

DaisyAlreadyGroomedText:
	text "I can do one"
	line "#MON a day!"
	done

DaisyRefusedText:
	text "You don't want to"
	line "have one groomed?"

	para "OK, feel free to"
	line "come back!"
	done

DaisyCantGroomEggText:
	text "I honestly can't"
	line "groom an EGG."
	done

KimonoGirlSuiSeenText:
	text "I love to spin!"
	done

KimonoGirlSuiBeatenText:
	text "I was too dizzy"
	line "to win."
	done

KimonoGirlSuiAfterBattleText:
	text "Turns out that"
	line "like heroin and"
	cont "crack, spinning"
	cont "should be done in"
	cont "moderation."
	done

KimonoGirlAkaneSeenText:
	text "My passion is"
	line "burning as hot as"
	cont "Flareon's tail!"
	done

KimonoGirlAkaneBeatenText:
	text "I am burning with"
	line "rage now."
	done

KimonoGirlAkaneAfterBattleText:
	text "I'm like the jock"
	line "girl in a magic"
	cont "girl team."

	para "Meaning I'm the"
	line "one with all the"
	cont "gay subtext."

	para "Also text."
	done

KimonoGirlRikoSeenText:
	text "Jolteon is sooo"
	line "cute!"

	para "He is kind of"
	line "pointy though."

	para "Hard to pet 'em."
	done

KimonoGirlRikoBeatenText:
	text "If I had pet my"
	line "JOLTEON more..."
	done

KimonoGirlRikoAfterBattleText:
	text "One JOLTEON can"
	line "power a city"
	cont "block."

	para "Probably not for"
	line "very long though."

	para "I haven't tested"
	line "the theory yet."
	done

KimonoGirlKimiSeenText:
	text "I'm the goth of"
	line "the KIMONO GIRLS"
	done

KimonoGirlKimiBeatenText:
	text "Dang, I thought I"
	line "could win..."
	done

KimonoGirlKimiAfterBattleText:
	text "I'm not actually"
	line "goth, but since I"
	cont "have an UMBREON"

	para "the other girls"
	line "said I had to be"
	cont "the goth one."

	para "Goth stuff is"
	line "cool though, so I"
	cont "don't mind it."
	done

KimonoGirlKariSeenText:
	text "Espeon is named"
	line "that because ESP."

	para "Like Extra Sens-"
	line "-ory Perception."

	para "Plus eon"

	para "I can read your"
	line "mind."

	para "Because of the"
	line "Espeon."
	done

KimonoGirlKariBeatenText:
	text "I knew this'd"
	line "happen."
	done

KimonoGirlKariAfterBattleText:
	text "ESP isn't real."

	para "But Espeon is."

	para "real that is."

	para "Espeon is not"
	line "imaginary."
	done

KimonoGirlHikaSeenText:
	text "Oh"

	para "Another visitor."

	para "I guess we can"
	line "battle."
	done

KimonoGirlHikaBeatenText:
	text "It's n-not like I"
	line "like you b-baka!"
	done

KimonoGirlHikaAfterBattleText:
	text "I'm the tsundere"
	line "one."

	para "Every group needs"
	line "a tsundere one."
	done

KimonoGirlHanaSeenText:
	text "Did you know that"
	line "LEAFEON was in"

	para "the beta versions"
	line "of GOLD & SILVER?"
	done

KimonoGirlHanaBeatenText:
	text ": ("
	done

KimonoGirlHanaAfterBattleText:
	text "LEAFEON looked a"
	line "lot more..."

	para "leafy..."

	para "in the original"
	line "sprites."
	done

KimonoGirlSenSeenText:
	text "SYLVEON is the"
	line "only canonically"
	cont "TRANSGENDER"
	cont "#MON."
	done

KimonoGirlSenBeatenText:
	text "This is a hate"
	line "crime."
	done

KimonoGirlSenAfterBattleText:
	text "I am the only"
	line "canonically TRANS"
	cont "KIMONO GIRL."
	done

KimonoGirlHachiSeenText:
	text "My EEVEE is a bit"
	line "odd."

	para "No one has seen"
	line "this evolution"
	cont "outside of this"
	cont "ranch."
	done

KimonoGirlHachiBeatenText:
	text "I don't know how"
	line "to train them..."
	done

KimonoGirlHachiAfterBattleText:
	text "If you want to"
	line "know more about"
	cont "HONEON, go to the"
	cont "HIVEs."
	done

EeveeRanchGroomers_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  8, 11, EEVEE_RANCH_EXTERIOR, 7
	warp_event  7, 11, EEVEE_RANCH_EXTERIOR, 7

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 15,  8, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
	object_event  9,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OlderHaircutBrotherScript, -1
	object_event  9,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, YoungerHaircutBrotherScript, -1
	object_event  0,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSui, -1
	object_event  2,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlAkane, -1
	object_event  5,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlRiko, -1
	object_event  9,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKimi, -1
	object_event 11,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKari, -1
	object_event 15,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlHika, -1
	object_event  3,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlHana, -1
	object_event  8,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSen, -1
	object_event 13,  3, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlHachi, -1
	object_event  3,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EeveeGroomersVictoriaScript, 0
