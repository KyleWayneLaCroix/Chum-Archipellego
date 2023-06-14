	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_BETWEENS_TRADITIONAL_HOUSE_GRAMPS
	const THE_BETWEENS_TRADITIONAL_HOUSE_GRANNY
	const THE_BETWEENS_TRADITIONAL_HOUSE_GIRL1
	const THE_BETWEENS_TRADITIONAL_HOUSE_GIRL2

TheBetweensTraditionalHouse_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TrainerSenpaiKouhaiTouko:
	checkevent EVENT_BEAT_SENPAI_KOUHAI_YUU_TOU
	iftrue .After
	opentext
	writetext SenpaiKouhaiTouIntro
	waitbutton
	showemote EMOTE_SHOCK, THE_BETWEENS_TRADITIONAL_HOUSE_GIRL2, 1
	faceplayer
	writetext TrainerSenpaiKouhaiYuuTouSeenText
	waitbutton
	closetext
	winlosstext SenpaiKouhaiYuuTouBeatenText, 0
	loadtrainer SENPAI_KOUHAI, YUU_TOU
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SENPAI_KOUHAI_YUU_TOU
.After:
	faceplayer
	opentext
	writetext SenpaiKouhaiAfterTouStraightText
	waitbutton
	checkevent EVENT_IS_GAY
	iftrue .Homo
	sjump .End
.Homo:
	writetext SenpaiKouhaiTouGayText
	waitbutton
.End:
	closetext
	end

SenpaiKouhaiTouGayText:
	text "TOUKO: Look, you"
	line "clearly know what"
	cont "this is like with"
	cont "older relatives &"
	cont "gay kids."

	para "YUU is trying to"
	line "straddle the line"
	cont "here though so"
	cont "they let me stay"
	cont "the night."

	para "Pretty sure they"
	line "figured it out"
	cont "though."
	done

SenpaiKouhaiAfterTouStraightText:
	text "TOUKO: This is so"
	line "awkward."

	para "My girl- er uh"
	line "my friend is just"
	cont "arguing with her"
	cont "grandparents and"
	cont "then a stranger"
	cont "just walks up and"
	cont "starts a #MON"
	cont "battle."
	done

TrainerSenpaiKouhaiYuu:
	checkevent EVENT_BEAT_SENPAI_KOUHAI_YUU_TOU
	iftrue .After
	opentext
	writetext SenpaiKouhaiYuuIntro
	waitbutton
	showemote EMOTE_SHOCK, THE_BETWEENS_TRADITIONAL_HOUSE_GIRL1, 1
	faceplayer
	writetext TrainerSenpaiKouhaiYuuTouSeenText
	waitbutton
	closetext
	winlosstext SenpaiKouhaiYuuTouBeatenText, 0
	loadtrainer SENPAI_KOUHAI, YUU_TOU
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SENPAI_KOUHAI_YUU_TOU
.After:
	faceplayer
	opentext
	writetext SenpaiKouhaiYuuAfterStraightText
	waitbutton
	checkevent EVENT_IS_GAY
	iftrue .Homo
	sjump .End
.Homo:
	writetext SenpaiKouhaiYuuGayText
	waitbutton
.End:
	closetext
	end

SenpaiKouhaiYuuAfterStraightText:
	text "YUU: Ugh, my"
	line "grandparents just"
	cont "don't get me."

	para "They say they're"
	line "not too tradit-"
	cont "-ional, but look"
	cont "at this house!"

	para "It's even in the"
	line "tileset!"

	para "This is clearly"
	line "TRADITIONAL-HOUSE."
	done

SenpaiKouhaiYuuGayText:
	text "YUU: You seem like"
	line "you get it, can"
	cont "you talk to my"
	cont "grandparents for"
	cont "me?"

	para "I don't wanna do"
	line "the whole coming"
	cont "out thing, it'll"
	cont "be so awkward."

	para "Besides, they'd"
	line "say we can't do"
	cont "sleepovers any-"
	cont "-more."
	done

SenpaiKouhaiYuuTouBeatenText:
	text "TOUKO: Oh no, we"
	line "lost!"

	para "YUU: Not even the"
	line "power of love-I"
	cont "mean freindship"
	cont "could help us win"
	done
TrainerSenpaiKouhaiYuuTouSeenText:
	text "YUU: Uhhhhhh"
	line "excuse me."

	para "Why are you here?"

	para "TOUKO: Yeah, who"
	line "invited you in?"
	done

SenpaiKouhaiYuuIntro:
	text "YUU: It's fine"
	line "gramma, we're"
	cont "just really good"
	cont "friends."
	done

SenpaiKouhaiTouIntro:
	text "TOUKO: That's"
	line "right ma'am, we"
	cont "were just rehear-"
	cont "-sing for a play."
	done
TrainerGrannyRuth:
	checkevent EVENT_BEAT_GRANNY_RUTH
	iftrue .After
	opentext
	writetext TrainerGrannyRuthIntro
	waitbutton
	faceplayer
	writetext TrainerGrannyRuthSeenText
	waitbutton
	closetext
	winlosstext GrannyRuthBeatenText, 0
	loadtrainer GRANNY, RUTH
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GRANNY_RUTH
.After:
	faceplayer
	opentext
	writetext GrannyAfterStraightText
	waitbutton
	checkevent EVENT_IS_GAY
	iftrue .Homo
	sjump .End
.Homo:
	writetext GrannyAfterGayText
	waitbutton
.End:
	closetext
	end

GrannyAfterGayText:
	text "You look like the"
	line "sort of person who"
	cont "may have tried a"
	cont "similar scheme when"
	cont "you were her age."
	done

GrannyAfterStraightText:
	text "Sorry about that."

	para "Our granddaughter"
	line "is clearly gay &"
	cont "is pretending not"
	cont "to be so that we"
	cont "allow sleepovers"
	cont "with her girl-"
	cont "-friend."
	done

GrannyRuthBeatenText:
	text "It's also very"
	line "rude for you to"
	cont "beat me in a"
	cont "#MON battle in my"
	cont "own home."
	done

TrainerGrannyRuthSeenText:
	text "Excuse me dear,"
	line "but you're being"
	cont "quite rude."

	para "You walk into our"
	line "home uninvited,"
	cont "and interrupt a"
	cont "family discussion"

	para "It's time for you"
	line "to learn some"
	cont "manners."
	done

TrainerGrannyRuthIntro:
	text "And we do love"
	line "TOUKO, she's"
	cont "already practi-"
	cont "-cally a member"
	cont "of the -"
	done

TrainerGrampsDerek:
	checkevent EVENT_BEAT_GRAMPS_DEREK
	iftrue .After
	opentext
	writetext TrainerGrampsDerekIntro
	waitbutton
	showemote EMOTE_SHOCK,THE_BETWEENS_TRADITIONAL_HOUSE_GRAMPS, 30
	faceplayer
	writetext TrainerGrampsDerekSeenText
	waitbutton
	closetext
	winlosstext GrampsDerekBeatenText, 0
	loadtrainer GRAMPS, DEREK
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GRAMPS_DEREK
.After:
	faceplayer
	opentext
	writetext GrampsAfterStraightText
	waitbutton
	checkevent EVENT_IS_GAY
	iftrue .Homo
	sjump .End
.Homo:
	readmem wPlayerGender
	ifequal 1, .Lesbian
	writetext GrampsAfterGayText
	waitbutton
	sjump .End
.Lesbian:
	writetext GrampsAfterLesbianText
	waitbutton
.End:
	closetext
	end

GrampsAfterLesbianText:
	text "Say..."

	para "You look like you"
	line "enjoy the work of"
	cont "the poet, Sappho."

	para "Maybe you can"
	line "encourage our"
	cont "granddaughter."

	para "She could use a"
	line "role model in"
	cont "someone like"
	cont "herself!"
	done

GrampsAfterGayText:
	text "Say..."

	para "You look like a"
	line "friend of Dorothy"

	para "Maybe you can"
	line "encourage our"
	cont "granddaughter."

	para "She could use a"
	line "role model in"
	cont "someone like"
	cont "herself!"
	done

GrampsAfterStraightText:
	text "Sorry about that,"
	para "just a stressful"
	line "time here lately."

	para "We've raised our"
	line "granddaughter for"
	cont "a long time, and"
	cont "it's just so hard"
	cont "to understand the"
	cont "young people."
	done

GrampsDerekBeatenText:
	text "Beating up an old"
	line "man's old man"
	cont "#MON."

	para "For shame."
	done

TrainerGrampsDerekSeenText:
	text "Excuse me, we are"
	line "having an impor-"
	cont "-tant discussion"
	cont "with our grand-"
	cont "-daughter."

	para "Too many of you"
	line "trainers keep"
	cont "walking through"
	cont "our house!"
	done

TrainerGrampsDerekIntro:
	text "Yuu, we love you"
	line "no matter what."

	para "No matter who"
	line "you're with-"
	done

TheBetweensTraditionalHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  0,  2,  THE_BETWEENS_FACILITY, 4
	warp_event  9,  9,  THE_BETWEENS_ELITE_FOUR_ROOM, 4
	warp_event  9,  3, THE_BETWEENS_VICTORY_ROAD, 3
	warp_event  9,  2, THE_BETWEENS_VICTORY_ROAD, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  5,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TrainerGrampsDerek, 0
	object_event  5,  8, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TrainerGrannyRuth, 0
	object_event  2,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TrainerSenpaiKouhaiTouko, 0
	object_event  2,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TrainerSenpaiKouhaiYuu, 0
