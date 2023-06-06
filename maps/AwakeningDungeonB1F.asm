	object_const_def
;	const MAPNAME_OBJECTNAME
	const AWAKENING_DUNGEON_B1F_GORON_1
	const AWAKENING_DUNGEON_B1F_GORON_2
	const AWAKENING_DUNGEON_B1F_GORON_3
	const AWAKENING_DUNGEON_B1F_GORON_4
	const AWAKENING_DUNGEON_B1F_BLOCK_1
	const AWAKENING_DUNGEON_B1F_BLOCK_2
	const AWAKENING_DUNGEON_B1F_GEL_1
	const AWAKENING_DUNGEON_B1F_GEL_2
	const AWAKENING_DUNGEON_B1F_OWL_BRIAN
	const AWAKENING_DUNGEON_B1F_OCTOROK_1
	const AWAKENING_DUNGEON_B1F_MERMAID
	const AWAKENING_DUNGEON_B1F_KEESE_1
	const AWAKENING_DUNGEON_B1F_KEESE_2
	const AWAKENING_DUNGEON_B1F_MOBLIN_1

AwakeningDungeonB1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, AwakeningDungeonB1FTiles

AwakeningDungeonB1FTiles:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_PUSHED_MIDDLE_LEFT_BLOCK
	iffalse .BottomLeftBlock
	changeblock 26, 28, $2a
	changeblock 26, 26, $33
	changeblock 30, 28, $1D
	changeblock 32, 28, $1E
	changeblock 30, 30, $21
	changeblock 32, 30, $22
.BottomLeftBlock:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_PUSHED_BOTTOM_LEFT_BLOCK
	iffalse .CorrectButton
	changeblock  8, 42, $32
	changeblock  2, 42, $5a
.CorrectButton
	checkevent EVENT_AWAKENING_DUNGEON_PRESSED_CORRECT_BUTTON
	iffalse .IncorrectButton
	changeblock 52, 18, $BF
    changeblock 48, 22, $16
    changeblock 50, 22, $17
    changeblock 48, 24, $14
    changeblock 50, 24, $15
.IncorrectButton:
	checkevent EVENT_AWAKENING_DUNGEON_PRESSED_INCORRECT_BUTTON
	iffalse .OwlBrian
	changeblock 48, 20, $BF
.OwlBrian:
	checkevent EVENT_BEAT_OWL_BRIAN
	iffalse .PPUp
    changeblock 4, 10, $16
    changeblock 6, 10, $17
    changeblock 4, 12, $14
    changeblock 6, 12, $15
.PPUp
	checkevent EVENT_AWAKENING_DUNGEON_B1F_PP_UP
	iffalse .MaxElixer
	changeblock 16,  8, $AF
.MaxElixer:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_MAX_ELIXER
	iffalse .MaxEther
	changeblock 30, 20, $AF
.MaxEther:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_MAX_ETHER
	iffalse .EndCallback
	changeblock 40,  2, $AF
.EndCallback:
	endcallback

AwakeningDungeonB1FBlock1:
AwakeningDungeonB1FBlock2:
	jumpstd StrengthBoulderScript

AwakeningDungeonB1FPPUpChest:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_PP_UP
	iftrue .End
	opentext
	verbosegiveitem PP_UP
	waitbutton
	changeblock 16,  8, $AF
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_DUNGEON_B1F_PP_UP
.End:
	end

AwakeningDungeonB1FMaxElixerChest:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_MAX_ELIXER
	iftrue .End
	opentext
	verbosegiveitem MAX_ETHER
	waitbutton
	changeblock 30, 20, $AF
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_DUNGEON_B1F_MAX_ELIXER
.End:
	end


AwakeningDungeonB1FMaxEtherChest:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_MAX_ETHER
	iftrue .End
	opentext
	verbosegiveitem MAX_ETHER
	waitbutton
	changeblock 40,  2, $AF
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_DUNGEON_B1F_MAX_ETHER
.End:
	end

AwakeningDungeonB1FRedGel:
	special FadeOutPalettes
	cry SIZZLIPEDE
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon SIZZLIPEDE, 32
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_GEL_1
	disappear AWAKENING_DUNGEON_B1F_GEL_1
	end

AwakeningDungeonB1FPurpleGel:
	special FadeOutPalettes
	cry MUNNA
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MUNNA, 32
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_GEL_2
	disappear AWAKENING_DUNGEON_B1F_GEL_2
	end

TrainerOwlBrian:
    trainer BRIAN_64, BRIAN_64_3, EVENT_BEAT_OWL_BRIAN, OwlBrianSeenText, OwlBrianBeatenText, 0, .Script

.Script:
    opentext
    writetext OwlBrianAfterText
    waitbutton
    changeblock 4, 10, $16
    changeblock 6, 10, $17
    changeblock 4, 12, $14
    changeblock 6, 12, $15
    reloadmappart
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_B1F_OWL_BRIAN
    end

 OwlBrianSeenText:
 	text "Hoot, hoot!"

 	para "Your journey has"
 	line "been long, and"
 	cont "hard."

 	para "LIKE MY DIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIICK"
 	done

 OwlBrianBeatenText:
 	text "I totally fooled"
 	line "you."
 	done

 OwlBrianAfterText:
 	text "BRIAN: I'll be"
 	line "seeing you in"
 	cont "person soon."

 	para "Hopefully, it"
 	line "won't be too"
 	cont "difficult for"
 	cont "everyone."

 	para "Give a hoot,"
 	line "don't pollute."
 	done

AwakeningDungeonB1FTopRightIncorrectButton:
	checkevent EVENT_AWAKENING_DUNGEON_PRESSED_INCORRECT_BUTTON
	iftrue .End
	playsound SFX_WRONG
	waitsfx
	changeblock 48, 20, $BF
	winlosstext B1FBladeTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_AWAKENING_DUNGEON_PRESSED_INCORRECT_BUTTON
	playsound SFX_STRENGTH
	earthquake 60
	changeblock 48, 20, $BF
.End:
	end

AwakeningDungeonB1FTopRightCorrectButton:
	checkevent EVENT_AWAKENING_DUNGEON_PRESSED_CORRECT_BUTTON
	iftrue .End
	playsound SFX_FANFARE
	changeblock 52, 18, $BF
    changeblock 48, 22, $16
    changeblock 50, 22, $17
    changeblock 48, 24, $14
    changeblock 50, 24, $15
	scall AwakeningDungeonB1FOpening
	setevent EVENT_AWAKENING_DUNGEON_PRESSED_CORRECT_BUTTON
	playsound SFX_STRENGTH
	earthquake 60
.End:
	end

B1FBladeTrapBeatenText:
	text "That was the"
	line "wrong button."
	done

AwakeningDungeonB1FOpening:
	opentext
	writetext AwakeningDungeonB1FOpeningText
	waitbutton
	reloadmappart
	closetext
	end

AwakeningDungeonB1FOpeningText:
	text "A path forward"
	line "appears!"
	done

TrainerGoron2:
    trainer GORON, KOGO, EVENT_BEAT_GORON_KOGO, Goron2SeenText, Goron2BeatenText, 0, .Script

.Script:
	endifjustbattled
    opentext
    writetext Goron2AfterText
    waitbutton
    closetext
    end

TrainerGoron3:
    trainer GORON, ZUDO, EVENT_BEAT_GORON_ZUDO, Goron3SeenText, Goron3BeatenText, 0, .Script

.Script:
	endifjustbattled
    opentext
    writetext Goron3AfterText
    waitbutton
    closetext
    end

TrainerGoron4:
    trainer GORON, TODO, EVENT_BEAT_GORON_TODO, Goron4SeenText, Goron4BeatenText, 0, .Script

.Script:
	endifjustbattled
    opentext
    writetext Goron4AfterText
    waitbutton
    closetext
    end

TrainerGoron5:
    trainer GORON, GRAMRO, EVENT_BEAT_GORON_GRAMRO, Goron5SeenText, Goron5BeatenText, 0, .Script

.Script:
	endifjustbattled
    opentext
    writetext Goron5AfterText
    waitbutton
    closetext
    end

Goron2SeenText:
	text "We've been workin"
	line "on the GORROAD"
	cont "all the live-long"
	cont "day!"
	done

Goron2BeatenText:
	text "We're still not"
	line "used to using"
	cont "the small pocket"
	cont "monsters."
	done

Goron2AfterText:
	text "This dungeon"
	line "moved into"
	cont "our mines!"

	para "We were here"
	line "first."
	done

Goron3SeenText:
	text "Can we eat the"
	line "ROCK POKIE MONS?"
	done

Goron3BeatenText:
	text "I guess they'd"
	line "be too tired to"
	cont "stop me from"
	cont "taking a little"
	cont "nibble..."
	done

Goron3AfterText:
	text "MINIOR tastes"
	line "like my favorite"
	cont "food: ROCK CANDY."
	done

Goron4SeenText:
	text "We GORONS are a"
	line "hardy folk."

	para "We've been stuck"
	line "in this room for"
	cont "years and only"
	cont "two of us died!"
	done

Goron4BeatenText:
	text "Maybe I'll be the"
	line "third to die..."
	done

Goron4AfterText:
	text "None of us have"
	line "actually died."

	para "Those bones were"
	line "here before us."
	done

Goron5SeenText:
	text "You look funny."
	done

Goron5BeatenText:
	text "I'm sorry, I know"
	line "that I should not"
	cont "judge others"
	cont "based on race or"
	cont "other physical"
	cont "traits."
	done

Goron5AfterText:
	text "I have a lot of"
	line "growth and learn-"
	cont "-ing to do around"
	cont "racial biases."

	para "I will learn to do"
	line "better."
	done

AwakeningDungeonB1FKeese1:
	opentext
	writetext AwakeningDungeonB1FKeeseText
	waitbutton
	closetext
	special FadeOutPalettes
	cry SWOOBAT
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon SWOOBAT, 36
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	disappear AWAKENING_DUNGEON_B1F_KEESE_1
	end

AwakeningDungeonB1FKeese2:
	opentext
	writetext AwakeningDungeonB1FKeeseText
	waitbutton
	closetext
	special FadeOutPalettes
	cry NOIBAT
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon NOIBAT, 36
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	disappear AWAKENING_DUNGEON_B1F_KEESE_2
	end

AwakeningDungeonB1FKeeseText:
	text "SKREEEE!!"
	done

AwakeningDungeonB1FMoveLeft:
	step LEFT
	step_end
AwakeningDungeonB1FMoveUp:
	step UP
	step_end
AwakeningDungeonB1FMoveRight:
	step RIGHT
	step_end
AwakeningDungeonB1FMoveDown:
	step DOWN
	step_end

AwakeningDungeonB1FKeese1Up2:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement AWAKENING_DUNGEON_B1F_KEESE_1, AwakeningDungeonB1FMoveUp
AwakeningDungeonB1FKeese1Up1:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	scall AwakeningDungeonB1FKeese1
	end

AwakeningDungeonB1FKeese1Right2:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement AWAKENING_DUNGEON_B1F_KEESE_1, AwakeningDungeonB1FMoveRight
AwakeningDungeonB1FKeese1Right1:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	scall AwakeningDungeonB1FKeese1
	end

AwakeningDungeonB1FKeese1Down2:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement AWAKENING_DUNGEON_B1F_KEESE_1, AwakeningDungeonB1FMoveDown
AwakeningDungeonB1FKeese1Down1:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	scall AwakeningDungeonB1FKeese1
	end


AwakeningDungeonB1FKeese1Left2:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	applymovement AWAKENING_DUNGEON_B1F_KEESE_1, AwakeningDungeonB1FMoveLeft
AwakeningDungeonB1FKeese1Left1:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	iffalse .Continue
	end
.Continue:
	scall AwakeningDungeonB1FKeese1
	end



AwakeningDungeonB1FKeese2Up2:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement AWAKENING_DUNGEON_B1F_KEESE_2, AwakeningDungeonB1FMoveUp
AwakeningDungeonB1FKeese2Up1:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	scall AwakeningDungeonB1FKeese2
	end

AwakeningDungeonB1FKeese2Right2:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement AWAKENING_DUNGEON_B1F_KEESE_2, AwakeningDungeonB1FMoveRight
AwakeningDungeonB1FKeese2Right1:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	scall AwakeningDungeonB1FKeese2
	end

AwakeningDungeonB1FKeese2Down2:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement AWAKENING_DUNGEON_B1F_KEESE_2, AwakeningDungeonB1FMoveDown
AwakeningDungeonB1FKeese2Down1:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	scall AwakeningDungeonB1FKeese2
	end


AwakeningDungeonB1FKeese2Left2:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	applymovement AWAKENING_DUNGEON_B1F_KEESE_2, AwakeningDungeonB1FMoveLeft
AwakeningDungeonB1FKeese2Left1:
	checkevent EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	iffalse .Continue
	end
.Continue:
	scall AwakeningDungeonB1FKeese2
	end

TrainerOctorok13:
    trainer OCTOROK_T, OCTOROK_13, EVENT_BEAT_OCTOROK_13, AwakeningDungeonB1FOctorokSeenText, AwakeningDungeonB1FOctorokBeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_B1F_OCTOROK_1
    end

AwakeningDungeonB1FOctorokSeenText:
	text "BERRROWWWW"
	done

AwakeningDungeonB1FOctorokBeatenText:
	text "Brrrrrrwwwr"
	done

TrainerMermaidMartha:
    trainer MER, MARTHA2, EVENT_BEAT_MER_MARTHA, MerMarthaSeenText, MerMarthaBeatenText, 0, .Script

.Script:
	endifjustbattled
    opentext
    writetext MerMarthaAfterText
    waitbutton
    closetext
    end

MerMarthaSeenText:
	text "There've been so"
	line "many intriguing"
	cont "creatures in the"
	cont "waters lately..."

	para "But you're the"
	line "most intriguing"
	cont "so far!"
	done

MerMarthaBeatenText:
	text "I was clearly"
	line "flirting with you"
	cont "asshole."

	para "Could have let me"
	line "win."
	done

MerMarthaAfterText:
	text "No wonder you're"
	line "still single."
	done

AwakeningDungeonB1FBottomLeftBlock:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_PUSHED_BOTTOM_LEFT_BLOCK
	iftrue .End
	playsound SFX_STRENGTH
	earthquake 60
	waitsfx
	changeblock  8, 42, $32
	changeblock  2, 42, $5a
	scall AwakeningDungeonB1FOpening
	setevent EVENT_AWAKENING_DUNGEON_B1F_PUSHED_BOTTOM_LEFT_BLOCK
	playsound SFX_FANFARE
	waitsfx
.End:
	end

AwakeningDungeonB1FMiddleLeftBlock:
	checkevent EVENT_AWAKENING_DUNGEON_B1F_PUSHED_MIDDLE_LEFT_BLOCK
	iftrue .End
	readvar VAR_YCOORD
	ifnotequal 29, .End
	playsound SFX_STRENGTH
	earthquake 60
	waitsfx
	changeblock 26, 28, $2a
	changeblock 26, 26, $33
	changeblock 30, 28, $1D
	changeblock 32, 28, $1E
	changeblock 30, 30, $21
	changeblock 32, 30, $22
	scall AwakeningDungeonB1FOpening
	setevent EVENT_AWAKENING_DUNGEON_B1F_PUSHED_MIDDLE_LEFT_BLOCK
	playsound SFX_FANFARE
	waitsfx
.End:
	end

TrainerMoblin11:
    trainer MOBLIN, MOBLIN_11, EVENT_BEAT_MOBLIN_11, Moblin11SeenText, Moblin11BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_B1F_MOBLIN_1
    end

Moblin11SeenText:
	text "Halt!"

	para "I'm guarding this"
	line "closet full of"
	cont "blocks, and you"
	cont "aren't gonna get"
	cont "away with stealin"
	cont "one!"
	done

Moblin11BeatenText:
	text "I think that's"
	line "what I'm supposed"
	cont "to be stopping"
	cont "people from"
	cont "doing..."
	done


AwakeningDungeonB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 35, 15, AWAKENING_DUNGEON, 3
	warp_event  3, 43, AWAKENING_DUNGEON, 4
	warp_event 21, 27, AWAKENING_DUNGEON, 5
	warp_event  9, 21, AWAKENING_DUNGEON, 6
	warp_event 53, 32, AWAKENING_DUNGEON, 7
	warp_event  3, 29, AWAKENING_DUNGEON, 8

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 52, 18, -1, AwakeningDungeonB1FTopRightCorrectButton
	coord_event 48, 20, -1, AwakeningDungeonB1FTopRightIncorrectButton
	coord_event 39, 39, -1, AwakeningDungeonB1FKeese1Up1
	coord_event 39, 38, -1, AwakeningDungeonB1FKeese1Up2
	coord_event 40, 40, -1, AwakeningDungeonB1FKeese1Right1
	coord_event 41, 40, -1, AwakeningDungeonB1FKeese1Right2
	coord_event 39, 41, -1, AwakeningDungeonB1FKeese1Down1
	coord_event 39, 42, -1, AwakeningDungeonB1FKeese1Down2
	coord_event 38, 40, -1, AwakeningDungeonB1FKeese1Left1
	coord_event 37, 40, -1, AwakeningDungeonB1FKeese1Left2
	coord_event 36, 42, -1, AwakeningDungeonB1FKeese2Up1
	coord_event 36, 41, -1, AwakeningDungeonB1FKeese2Up2
	coord_event 37, 43, -1, AwakeningDungeonB1FKeese2Right1
	coord_event 38, 43, -1, AwakeningDungeonB1FKeese2Right2
	coord_event 36, 44, -1, AwakeningDungeonB1FKeese2Down1
	coord_event 36, 45, -1, AwakeningDungeonB1FKeese2Down2
	coord_event 35, 43, -1, AwakeningDungeonB1FKeese2Left1
	coord_event 34, 43, -1, AwakeningDungeonB1FKeese2Left2

	def_bg_events
;	bg_event x, y, type, script
	bg_event 41,  2, BGEVENT_READ, AwakeningDungeonB1FMaxEtherChest
	bg_event 17,  8, BGEVENT_READ, AwakeningDungeonB1FPPUpChest
	bg_event 31, 20, BGEVENT_READ, AwakeningDungeonB1FMaxElixerChest
	bg_event  8, 43, BGEVENT_RIGHT, AwakeningDungeonB1FBottomLeftBlock
	bg_event 26, 28, BGEVENT_UP, AwakeningDungeonB1FMiddleLeftBlock

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 50, 27, SPRITE_GORON, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGoron2, 0
	object_event 47, 30, SPRITE_GORON, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGoron3, 0
	object_event 52, 29, SPRITE_GORON, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGoron4, 0
	object_event 49, 32, SPRITE_GORON, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGoron5, 0
	object_event 39,  4, SPRITE_BLOCK, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonB1FBlock1, 0
	object_event 38, 31, SPRITE_BLOCK, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonB1FBlock2, 0
	object_event 22,  5, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonB1FRedGel, EVENT_BEAT_AWAKENING_DUNGEON_B1F_GEL_1
	object_event 36, 20, SPRITE_GEL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonB1FPurpleGel, EVENT_BEAT_AWAKENING_DUNGEON_B1F_GEL_2
	object_event  5,  5, SPRITE_KAEPORA, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerOwlBrian, EVENT_BEAT_OWL_BRIAN
	object_event 26, 43, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerOctorok13, EVENT_BEAT_OCTOROK_13
	object_event 16, 41, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerMermaidMartha, 0
	object_event 39, 40, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonB1FKeese1, EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_1
	object_event 36, 43, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonB1FKeese2, EVENT_BEAT_AWAKENING_DUNGEON_B1F_KEESE_2
	object_event  7, 18, SPRITE_MOBLIN, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerMoblin11, EVENT_BEAT_MOBLIN_11
