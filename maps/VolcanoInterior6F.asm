	object_const_def
;	const MAPNAME_OBJECTNAME
	const VOLCANO_INTERIOR_6F_TREE_BRIAN
	const VOLCANO_INTERIOR_6F_ROCK_BRIAN
	const VOLCANO_INTERIOR_6F_MERBRIAN
	const VOLCANO_INTERIOR_6F_BRIAN_M_3
	const VOLCANO_INTERIOR_6F_TROPHY
	const VOLCANO_INTERIOR_6F_BALL_BRIAN
	const VOLCANO_INTERIOR_6F_POKE_BALL_1
	const VOLCANO_INTERIOR_6F_POKE_BALL_2
	const VOLCANO_INTERIOR_6F_POKE_BALL_3

VolcanoInterior6F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script


TrainerTrophyBrian:
	trainer GLITCH_T, TROPHY, EVENT_BEAT_GLITCH_6, TrophyBrianSeenText, TrophyBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext TrophyBrianAfterText
	waitbutton
	closetext
	playsound SFX_TRANSACTION
	waitsfx
	disappear VOLCANO_INTERIOR_6F_TROPHY
	opentext
	verbosegiveitem NUGGET
	waitbutton
	closetext
	end

TrophyBrianSeenText:
	text "CONGRATULATION"

	para "YOU HAVE BEATEN"
	line "CHUM ARCHIPELAGO"

	para "YOU ARE HERO!"

	para "YOU SAVED THE DAY"
	line " BRIAN IS NOW WHOLE"
	line "WITHOUT YOU HE WOULD NO LONGER"
	cont "AND MADE THE WORLD"
	cont "A BETTER PLACE."

	para "THE WHOLE WORLD IS"
	line "GRATEFUL AND GIVES"
	cont "YOU THIS TROPHY TO"
	cont "PROVE YOUR VICTORY"

	para "INITIATE CREDIT"
	cont "SEQUENCE"
	done

TrophyBrianBeatenText:
	text "HALL OF FAME"
	done

TrophyBrianAfterText:
	text "     #MON"
	line "CHUM ARCHIPELAGO "
	cont "     STAFF       "

	para "     DIRECTOR    "
	line "   KYLE LACROIX  "

	para "   CO-DIRECTOR   "
	line "   KYLE LACROIX  "

	para "   PROGRAMMERS   "
	line "   KYLE LACROIX  "
	line "   KYLE LACROIX  "
	line "   KYLE LACROIX  "
	line "   KYLE LACROIX  "

	para "   PROGRAMMERS   "
	line "   KYLE LACROIX  "
	line "   KYLE LACROIX  "
	line "   KYLE LACROIX  "

	para "GRAPHICS DIRECTOR"
	line "   KYLE LACROIX  "

	para "     THE END     "
	done

TrainerTreeBrian4:
	trainer TREE_BRIAN, TREEBRIAN_4, EVENT_BEAT_TREE_BRIAN_4, TreeBrian4SeenText, TreeBrian4BeatenText, 0, .Script

.Script:
	opentext
	writetext TreeBrian4AfterText
	waitbutton
	closetext
	playsound SFX_TOXIC
	earthquake 80
	waitsfx
	disappear VOLCANO_INTERIOR_6F_TREE_BRIAN
	opentext
	verbosegiveitem REVIVAL_HERB, 2
	waitbutton
	closetext
	end

TreeBrian4SeenText:
	text "As a tree, I can"
	line "grow wherever the"
	cont "hell I want."
	done

TreeBrian4BeatenText:
	text "I think I get"
	line "why the other TREE"
	cont "BRIANs have been"
	cont "outside."
	done

TreeBrian4AfterText:
	text "I think stuff's"
	line "leaking from the"
	cont "BROCANO."

	para "We BRIANs usually"
	line "don't congregate"
	cont "like this outside"
	cont "of BRIANMAS and"
	cont "BRISTER."

	para "Here, have some"
	line "weed, and have a"
	cont "nice day."
	done

TrainerMerBrian:
	trainer MER, MERBRIAN, EVENT_BEAT_MER_BRIAN,MerBrianSeenText, MerBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext MerBrianAfterText
	waitbutton
	closetext
	playsound SFX_BUBBLEBEAM
	earthquake 80
	waitsfx
	disappear VOLCANO_INTERIOR_6F_MERBRIAN
	opentext
	verbosegiveitem MYSTIC_WATER
	waitbutton
	closetext
	end

MerBrianSeenText:
	text "Glub glub!"
	done

MerBrianBeatenText:
	text "Just kidding, MER"
	line "PEOPLE can talk"
	cont "normally."

	para "They just choose"
	line "not to sometimes."
	done

MerBrianAfterText:
	text "BRIAN: Goodbye."
	line "Turns out my one"
	cont "weakness is lava."

	para "And I just looked"
	line "down and saw this"
	cont "was lava."

	para "Not water."

	para "Like a Looney"
	line "Tune."
	done

TrainerBrianM3:
	trainer BRIAN_M, BRIAN_M_3, EVENT_BEAT_BRIAN_M_3,BrianM3SeenText, BrianM3BeatenText, 0, .Script

.Script:
	opentext
	writetext BrianM3AfterText
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 250
	waitsfx
	disappear VOLCANO_INTERIOR_6F_BRIAN_M_3
	end

BrianM3SeenText:
	text "BRIAN: HALT!"

	para "Who goes there?"

	para "This volcano now"
	line "belongs to us,"
	cont "the 'Brian Gang.'"

	para "It's our first"
	line "step to taking"
	cont "over the world!"

	para "And if it weren't"
	line "for nosey charac-"
	cont "-ters like YOU..."
	cont "We'd practically"
	cont "OWN this world!"

	para "So let's see you"
	line "deal with this!"
	done

BrianM3BeatenText:
	text "Gotta mow the"
	line "lawn soon."
	done

BrianM3AfterText:
	text "I tried opening"
	line "and closing my"
	cont "NEOSQUID, but"
	cont "the bridge is"
	cont "still standing."

	para "I will try one"
	line "more time."
	done

TrainerRockBrian3:
	trainer ROCK_BRIAN, ROCKBRIAN_3, EVENT_BEAT_ROCK_BRIAN_3, RockBrian3SeenText, RockBrian3BeatenText, 0, .Script

.Script:
	opentext
	writetext RockBrian3AfterText
	waitbutton
	writetext RockBrian3RockSmash
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	disappear VOLCANO_INTERIOR_6F_ROCK_BRIAN
	opentext
	verbosegiveitem KINGS_ROCK
	waitbutton
	closetext
	end

RockBrian3SeenText:
	text "I'm not a rolling"
	line "stone, but I have"
	cont "no moss."

	para "What other old"
	line "sayings are pure"
	cont "bullshit?"
	done

RockBrian3BeatenText:
	text "Actually, all"
	line "rocks can talk."

	para "Most just choose"
	line "not to."

	para "That's a rock"
	line "fact from me."
	done

RockBrian3AfterText:
	text "BRIAN: You know,"
	line "as a rock, it's"
	cont "not like I can"
	cont "move."

	para "The only way to"
	line "continue on is"
	cont "to ROCK SMASH me."

	para "It's okay."

	para "I'm ready."

	para "Go ahead."

	para ""

	para ""

	para "No, no, I get it."
	line "You've gotta get"
	cont "on with your"
	cont "quest."

	para "..."

	para "...."

	para "Really dude, this"
	line "anticipation is"
	cont "so much worse."

	para "Just SMASH me"
	line "already."

	para ""

	para ""

	para "Oh wait, Kyle got"
	line "rid of that HM."

	para "Here, I'll take"
	line "care of it for"
	cont "you."

	done

RockBrian3RockSmash:
	text "ROCK BRIAN used"
	line "ROCK SMASH!"

	done


TrainerBallBrian4:
	trainer BALL_BRIAN, BALLBRIAN_4, EVENT_BEAT_BALL_BRIAN_4, BallBrian4SeenText, BallBrian4BeatenText, 0, .Script

.Script:
	opentext
	writetext BallBrian4AfterText
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	disappear VOLCANO_INTERIOR_6F_BALL_BRIAN
	opentext
	verbosegiveitem GS_BALL
	closetext
	end

BallBrian4SeenText:
	text "BRIAN: SURPRISE"
	line "MOTHERFUCKER!"

	para "I COULD ROLL THE"
	line "WHOLE TIME!"
	done

BallBrian4BeatenText:
	text "You beat me yet"
	line "again."

	para "My gimmick of"
	line "using only round"
	cont "#MON, is,"

	para "while lovable,"

	para "a bit less than"
	line "effective."
	done

BallBrian4AfterText:
	text "TERU-SAMA is the"
	line "name assigned to"
	cont "unused item slots"
	cont "in Gen II."

	para "No one really"
	line "knows what the"
	cont "name refers to,"
	cont "and most don't do"
	cont "anything."

	para "Most."

	para "I gotta go, you"
	line "should take this."

	para "You'll need it"
	line "at the end."
	done

VolcanoInterior6FMaxPotion:
	itemball MAX_POTION

VolcanoInterior6FRareCandy:
	itemball RARE_CANDY

VolcanoInterior6FTMPsychic:
	itemball TM_FIRE_BLAST

VolcanoInterior6FHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_VOLCANO_INTERIOR_6F_HIDDEN_HYPER_POTION

VolcanoInterior6FHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_VOLCANO_INTERIOR_6F_HIDDEN_MAX_ETHER

VolcanoInterior6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 9, 3, VOLCANO_INTERIOR_5F_HALL, 2
	warp_event 33, 29, VOLCANO_EXTERIOR, 10

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 43, 27, BGEVENT_ITEM, VolcanoInterior6FHiddenHyperPotion
	bg_event 32, 16, BGEVENT_ITEM, VolcanoInterior6FHiddenMaxEther

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  9, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerTreeBrian4, EVENT_BEAT_TREE_BRIAN_4
	object_event 29, 16, SPRITE_ROCK, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerRockBrian3, EVENT_BEAT_ROCK_BRIAN_3
	object_event 36,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerMerBrian, EVENT_BEAT_MER_BRIAN
	object_event 22, 24, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBrianM3, EVENT_BEAT_BRIAN_M_3
	object_event 33, 30, SPRITE_SILVER_TROPHY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerTrophyBrian, EVENT_BEAT_GLITCH_6
	object_event 44, 17, SPRITE_ROLLY_BALL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBallBrian4, EVENT_BEAT_BALL_BRIAN_4
	object_event 29, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior6FMaxPotion, EVENT_VOLCANO_INTERIOR_6F_MAX_POTION
	object_event 25, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior6FRareCandy, EVENT_VOLCANO_INTERIOR_6F_RARE_CANDY
	object_event 58, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior6FTMPsychic, EVENT_GOT_TM32_PSYCHIC
