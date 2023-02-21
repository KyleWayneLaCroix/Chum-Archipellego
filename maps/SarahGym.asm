	object_const_def
;	const MAPNAME_OBJECTNAME


SarahGym_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

SarahGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SARAH1
	iftrue .BeatSarah
	writetext SarahGymGuideText
	waitbutton
	closetext
	end
.BeatSarah:
	writetext SarahGymGuideAfterText
	waitbutton
	closetext
	end

TrainerLassCarrieScript:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterText
	waitbutton
	closetext
	end

TrainerLassBridgetScript:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassBridgetAfterText
	waitbutton
	closetext
	end

TrainerWhiteGirlJaclynScript:
	trainer WHITE_GIRL, JACLYN, EVENT_BEAT_WHITE_GIRL_JACLYN, WhiteGirlJaclynSeenText, WhiteGirlJaclynBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WhiteGirlJaclynAfterText
	waitbutton
	closetext
	end

TrainerWhiteGirlBrendaScript:
	trainer WHITE_GIRL, BRENDA, EVENT_BEAT_WHITE_GIRL_BRENDA, WhiteGirlBrendaSeenText, WhiteGirlBrendaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WhiteGirlBrendaAfterText
	waitbutton
	closetext
	end

GymLeaderSarahScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SARAH1
	iftrue .After
	writetext GymLeaderSarahSeenText
	waitbutton
	closetext
	winlosstext GymLeaderSarahBeatenText, 0
	loadtrainer SARAH, SARAH1
	startbattle
	reloadmapafterbattle
	opentext
	writetext GymLeaderSarahGiveBadgeText
	waitbutton
	setflag ENGINE_STORMBADGE
	setevent EVENT_BEAT_SARAH1
	setmapscene JUNGLE_GATE, SCENE_JUNGLE_GATE_GOT_BADGE
	writetext GymLeaderSarahGiveFlyText
	waitbutton
	verbosegiveitem HM_FLY
.After:
	opentext
	writetext GymLeaderSarahAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerFLois:
	trainer COOLTRAINERF, LOIS, EVENT_BEAT_COOLTRAINERF_LOIS, CooltrainerFLoisSeenText, CooltrainerFLoisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFLoisAfterText
	waitbutton
	closetext
	end

CooltrainerFLoisSeenText:
	text "I thought this"
	line "was a regular gym"
	cont "like for humans"
	cont "work out in."

	para "But this is cool"
	line "too I guess."
	done

CooltrainerFLoisBeatenText:
	text "You're strong!"
	line "Mind spotting me?"
	done

CooltrainerFLoisAfterText:
	text "At least this"
	line "gym pays me to"
	cont "be here."
	done

GymLeaderSarahSeenText:
	text "Ho ho ho ho!"

	para "Welcome to the"
	line "toughest gym in"
	cont "the ARCHIPELAGO!"

	para "I thought we"
	line "were all going to"
	cont "be GYM LEADERS,"
	cont "but I didn't get"
	cont "the memo about us"
	cont "all doing other"
	cont "random stuff."

	para "But I'm going to"
	line "prove that gyms"
	cont "are still cool."

	para "I had to get"
	line "certified for the"
	cont "job and that cost"
	cont "a decent chunk of"
	cont "#cash."

	para "You will be the"
	line "first to lose to"
	cont "my gym!"
	done

GymLeaderSarahBeatenText:
	text "Here's the thing."

	para "Even though I"
	line "lost, when you"
	cont "think about it..."

	para "I also won."

	para "When I give you"
	line "the badge, you'll"
	cont "wear it, which"
	cont "advertises the"
	cont "gym!"

	para "Ha!"
	done

GymLeaderSarahGiveBadgeText:
	text "Congratulations,"
	line "you have earned"
	cont "the CHUM badge."
	done

GymLeaderSarahGiveFlyText:
	text "And since you"
	line "were the first to"
	cont "beat me, I also"
	cont "have an extra"
	cont "gift for you!"
	done

GymLeaderSarahAfterText:
	text "The FLY HM will"
	line "allow any of your"
	cont "#MON who can"
	cont "learn FLY to take"
	cont "you anywhere you"
	cont "have been before."

	para "Even if they"
	line "don't know the"
	cont "move right now, as"
	cont "long as they CAN"
	cont "learn the move,"
	cont "you can FLY away!"

	para "Which you should"
	line "do as advertising"
	cont "for the gym."
	done

WhiteGirlBrendaSeenText:
	text "Is it gender"
	line "discrimination to"
	cont "only hire woman"
	cont "#MON Trainers?"
	done

WhiteGirlBrendaBeatenText:
	text "Will my DEERLING"
	line "change with the"
	cont "seasons in a"
	cont "GEN II hack?"
	done

WhiteGirlBrendaAfterText:
	text "You're the first"
	line "trainer to ever"
	cont "challenge the"
	cont "gym."
	done

WhiteGirlJaclynSeenText:
	text "You're lightyears"
	line "away from beating"
	cont "SARAH!"
	done

WhiteGirlJaclynBeatenText:
	text "I guess I'm not"
	line "as good as you..."
	done

WhiteGirlJaclynAfterText:
	text "I honestly have"
	line "no idea what"
	cont "lightyears are."

	para "Outside of BUZZ"
	line "I guess..."
	done

LassBridgetSeenText:
	text "Why the fuck is"
	line "there ICE here?"

	para "It's so fucking"
	line "cold."
	done

LassBridgetBeatenText:
	text "I'm freezing my"
	line "nips off."
	done

LassBridgetAfterText:
	text "I don't think"
	line "this gym employs"
	cont "enough people for"
	cont "all the worker's"
	cont "rights laws to be"
	cont "in effect."
	done

LassCarrieSeenText:
	text "I convinced SARAH"
	line "to let me run"
	cont "with the PINK"
	cont "gimmick instead"
	cont "of PINK GRASS."
	done

LassCarrieBeatenText:
	text "I should have"
	line "tried to argue"
	cont "for #MON that"
	cont "are PINK when"
	cont "SHINY."
	done

LassCarrieAfterText:
	text "I hope I don't"
	line "lose my job..."

	para "There aren't any"
	line "other gyms to"
	cont "hire me."
	done

SarahGymGuideAfterText:
	text "Hey there champ!"

	para "You did it, you"
	line "beat SARAH!"

	para "This means you're"
	line "just a step away"
	cont "from becoming the"
	cont "CHAMPION!"
	done

SarahGymGuideText:
	text "Hey there champ-"
	line "in-the-making!"

	para "This is the only"
	line "gym in the entire"
	cont "CHUM ARCHIPELAGO!"

	para "So if you get the"
	line "badge, you win!"

	para "Here's a tip:"
	line "SARAH uses pink"
	cont "GRASS #MON."

	para "So use a type"
	line "GRASS is weak to!"

	para "Like FLYING."

	para "Or POISON"

	para "Bug would work"
	line "too."

	para "Can't forget FIRE"
	line "of course."

	para "Even ICE!"

	para "I guess now that"
	line "I think about it,"
	cont "GRASS is tied for"
	cont "most weaknesses."

	para "Anyway, good luck"
	line "with the fight!"

	para "Watch out for the"
	line "HOPPIP!"
	done

SarahGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  3, 21, UNIVERCITY, 6
	warp_event  2, 21, UNIVERCITY, 6

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  5, 19, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SarahGymGuideScript, 0
	object_event  0,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerLassCarrieScript, 0
	object_event  5,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerLassBridgetScript, 0
	object_event 11,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerWhiteGirlJaclynScript, 0
	object_event 13,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerWhiteGirlBrendaScript, 0
	object_event 15, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerFLois, 0
	object_event 13, 17, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GymLeaderSarahScript, 0
