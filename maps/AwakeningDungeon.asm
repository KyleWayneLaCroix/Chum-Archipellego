	object_const_def
;	const MAPNAME_OBJECTNAME
	const AWAKENING_DUNGEON_GEL_1
	const AWAKENING_DUNGEON_GEL_2
	const AWAKENING_DUNGEON_GEL_3
	const AWAKENING_DUNGEON_MOBLIN_1
	const AWAKENING_DUNGEON_MOBLIN_2
	const AWAKENING_DUNGEON_MOBLIN_3
	const AWAKENING_DUNGEON_OCTOROK_1
	const AWAKENING_DUNGEON_OCTOROK_2
	const AWAKENING_DUNGEON_OCTOROK_3
	const AWAKENING_DUNGEON_ARMOS
	const AWAKENING_DUNGEON_BLADE_TRAP_1
	const AWAKENING_DUNGEON_BLADE_TRAP_2
	const AWAKENING_DUNGEON_BLADE_TRAP_3
	const AWAKENING_DUNGEON_BLADE_TRAP_4
	const AWAKENING_DUNGEON_BLADE_TRAP_5
	const AWAKENING_DUNGEON_BLOCK_1
	const AWAKENING_DUNGEON_BLOCK_2
	const AWAKENING_DUNGEON_BLOCK_3
	const AWAKENING_DUNGEON_LINK

AwakeningDungeon_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	
	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, AwakeningDungeonTiles


AwakeningDungeonTiles:
	checkevent EVENT_AWAKENING_DUNGEON_PRESSED_TOP_LEFT_BUTTON
	iffalse .BossDoor
	changeblock  2, 20, $BF
	changeblock  4, 10, $16
	changeblock  6, 10, $17
	changeblock  4, 12, $14
	changeblock  6, 12, $15
.BossDoor:
	checkevent EVENT_AWAKENING_DUNGEON_OPEN_BOSS_DOOR
	iffalse .MiniBossDoor
	changeblock  4,  0, $C2
	changeblock  6,  0, $C3
.MiniBossDoor:
	checkevent EVENT_AWAKENING_DUNGEON_UNLOCKED_MINI_BOSS_DOOR
	iffalse .FrontKeyBlock
	changeblock 48, 10, $16
	changeblock 50, 10, $17
	changeblock 48, 12, $14
	changeblock 50, 12, $15
.FrontKeyBlock
	checkevent EVENT_AWAKENING_DUNGEON_UNLOCKED_FRONT_KEY_BLOCK
	iffalse .Armos
	changeblock 32, 28, $4c
.Armos:
	checkevent EVENT_BEAT_ARMOS_1
	iffalse .TopMiddleButton
	changeblock 48,  4, $0f
	changeblock 36, 42, $56
	changeblock 50,  4, $C1
	changeblock 48, 10, $16
	changeblock 50, 10, $17
	changeblock 48, 12, $14
	changeblock 50, 12, $15
	changeblock 42,  4, $1D
	changeblock 44,  4, $1E
	changeblock 42,  6, $21
	changeblock 44,  6, $22
.TopMiddleButton:
	checkevent EVENT_AWAKENING_DUNGEON_PRESSED_TOP_MIDDLE_BUTTON
	iffalse .BottomRightBlock
	changeblock 14,  2, $BF
	changeblock 16, 10, $16
	changeblock 18, 10, $17
	changeblock 16, 12, $14
	changeblock 18, 12, $15
.BottomRightBlock:
	checkevent EVENT_AWAKENING_DUNGEON_PUSHED_BOTTOM_RIGHT_BLOCK
	iffalse .SecondSmallKey
	changeblock 52, 30, $01
	changeblock 52, 28, $24
	changeblock 46, 26, $c0
.SecondSmallKey:
	checkevent EVENT_AWAKENING_DUNGEON_SECOND_BOTTOM_RIGHT_KEY
	iffalse .BottomRightButton
	changeblock 46, 26, $2B
.BottomRightButton:
	checkevent EVENT_AWAKENING_DUNGEON_BOTTOM_RIGHT_BUTTON
	iffalse .BottomRightSmallKey
	changeblock 48, 42, $BF
	changeblock 50, 40, $C0
.BottomRightSmallKey:
	checkevent EVENT_AWAKENING_DUNGEON_BOTTOM_RIGHT_SMALL_KEY
	iffalse .MaxRevive
	changeblock 50, 40, $2B
.MaxRevive:
	checkevent EVENT_AWAKENING_DUNGEON_MAX_REVIVE
	iffalse .HPUp
	changeblock  8, 14, $AF
.HPUp:
	checkevent EVENT_AWAKENING_DUNGEON_HP_UP
	iffalse .Calcium
	changeblock 50, 18, $AF
.Calcium:
	checkevent EVENT_AWAKENING_DUNGEON_NUGGET
	iffalse .Nugget
	changeblock 22,  6, $AF
.Nugget:
	checkevent EVENT_AWAKENING_DUNGEON_NUGGET
	iffalse .PPUp
	changeblock 8, 38, $AF
.PPUp:
	checkevent EVENT_AWAKENING_DUNGEON_PP_UP
	iffalse .BigKey
	changeblock 20, 44, $AF
.BigKey:
	checkevent EVENT_AWAKENING_DUNGEON_BIG_KEY
	iffalse .EndCallback
	changeblock 28, 38, $AF
.EndCallback:
	endcallback

TrainerOctorok10:
    trainer OCTOROK_T, OCTOROK_10, EVENT_BEAT_OCTOROK_10, AwakeningDungeonOctorokSeenText, AwakeningDungeonOctorokBeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_OCTOROK_1
    end

TrainerOctorok11:
    trainer OCTOROK_T, OCTOROK_11, EVENT_BEAT_OCTOROK_11, AwakeningDungeonOctorokSeenText, AwakeningDungeonOctorokBeatenText, 0, .Script

.Script:
	opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_OCTOROK_2
    end

TrainerOctorok12:
    trainer OCTOROK_T, OCTOROK_12, EVENT_BEAT_OCTOROK_12, AwakeningDungeonOctorokSeenText, AwakeningDungeonOctorokBeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_OCTOROK_3
    end

AwakeningDungeonOctorokSeenText:
	text "BERRROWWWW"
	done

AwakeningDungeonOctorokBeatenText:
	text "Brrrrrrwwwr"
	done

TrainerMoblin8:
    trainer MOBLIN, MOBLIN_8, EVENT_BEAT_MOBLIN_8, AwakeningDungeonMoblin8SeenText, AwakeningDungeonMoblin8BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_MOBLIN_1
    end

TrainerMoblin9:
    trainer MOBLIN, MOBLIN_9, EVENT_BEAT_MOBLIN_9, AwakeningDungeonMoblin9SeenText, AwakeningDungeonMoblin9BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_MOBLIN_2
    end

TrainerMoblin10:
    trainer MOBLIN, MOBLIN_10, EVENT_BEAT_MOBLIN_10, AwakeningDungeonMoblin10SeenText, AwakeningDungeonMoblin10BeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_DUNGEON_MOBLIN_3
    end

AwakeningDungeonMoblin8SeenText:
	text "OY!"

	para "This is OUR"
	line "dungeon!"
	done

AwakeningDungeonMoblin8BeatenText:
	text "I guess you can"
	line "count as part of"
	cont "the 'our'"
	done

AwakeningDungeonMoblin9SeenText:
	text "I've been stuck"
	line "in this dungeon"
	cont "for years."

	para "I can't figure"
	line "out how to"
	cont "leave."
	done

AwakeningDungeonMoblin9BeatenText:
	text "I suppose this"
	line "is one way to"
	cont "leave..."
	done


AwakeningDungeonMoblin10SeenText:
	text "Ha! I'm not"
	line "going to let you"
	cont "get the treasure"
	cont "before I do!"
	done

AwakeningDungeonMoblin10BeatenText:
	text "I just wanted to"
	line "be able to go"
	cont "for a swim..."
	done

AwakeningDungeonGreenGel:
	scall AwakeningDungeonGelTrapGrimer
	reloadmapafterbattle
	setevent EVENT_BEAT_AWAKENING_DUNGEON_GEL_1
	disappear AWAKENING_DUNGEON_GEL_1
	end

AwakeningDungeonPurpleGel1:
	scall AwakeningDungeonGelTrapDitto
	reloadmapafterbattle
	setevent EVENT_BEAT_AWAKENING_DUNGEON_GEL_2
	disappear AWAKENING_DUNGEON_GEL_2
	end

AwakeningDungeonPurpleGel2:
	scall AwakeningDungeonGelTrapGastly
	reloadmapafterbattle
	setevent EVENT_BEAT_AWAKENING_DUNGEON_GEL_3
	disappear AWAKENING_DUNGEON_GEL_3
	end

AwakeningDungeonGelTrapGrimer:
	special FadeOutPalettes
	cry GRIMER
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon GRIMER, 32
	startbattle
	end

AwakeningDungeonGelTrapDitto:
	special FadeOutPalettes
	cry DITTO
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon DITTO, 32
	startbattle
	end

AwakeningDungeonGelTrapGastly:
	special FadeOutPalettes
	cry GASTLY
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon GASTLY, 32
	startbattle
	end


AwakeningDungeonBladeTrap1:
	winlosstext BladeTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DUNGEON_BLADE_TRAP_1
	disappear AWAKENING_DUNGEON_BLADE_TRAP_1
	playsound SFX_STRENGTH
	earthquake 60
	end

AwakeningDungeonBladeTrap2:
	winlosstext BladeTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DUNGEON_BLADE_TRAP_2
	disappear AWAKENING_DUNGEON_BLADE_TRAP_2
	playsound SFX_STRENGTH
	earthquake 60
	end

AwakeningDungeonBladeTrap3:
	winlosstext BladeTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DUNGEON_BLADE_TRAP_3
	disappear AWAKENING_DUNGEON_BLADE_TRAP_3
	playsound SFX_STRENGTH
	earthquake 60
	end

AwakeningDungeonBladeTrap4:
	winlosstext BladeTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DUNGEON_BLADE_TRAP_4
	disappear AWAKENING_DUNGEON_BLADE_TRAP_4
	playsound SFX_STRENGTH
	earthquake 60
	end

AwakeningDungeonBladeTrap5:
	winlosstext BladeTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_DUNGEON_BLADE_TRAP_5
	disappear AWAKENING_DUNGEON_BLADE_TRAP_5
	playsound SFX_STRENGTH
	earthquake 60
	end

BladeTrapBeatenText:
	text "dfasd8 34"
	done

AwakeningDungeonHPUpChest:
	checkevent EVENT_AWAKENING_DUNGEON_HP_UP
	iftrue .End
	opentext
	verbosegiveitem HP_UP
	iffalse .End
	waitbutton
	changeblock 50, 18, $AF
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_HP_UP
.End:
	closetext
	end

AwakeningDungeonCalciumChest:
	checkevent EVENT_AWAKENING_DUNGEON_CALCIUM
	iftrue .End
	opentext
	verbosegiveitem CALCIUM
	iffalse .End
	waitbutton
	changeblock 22,  6, $AF
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_CALCIUM
.End:
	closetext
	end


AwakeningDungeonNuggetChest:
	checkevent EVENT_AWAKENING_DUNGEON_NUGGET
	iftrue .End
	opentext
	verbosegiveitem NUGGET
	iffalse .End
	waitbutton
	changeblock 8, 38, $AF
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_NUGGET
.End:
	closetext
	end

AwakeningDungeonPPUpChest:
	checkevent EVENT_AWAKENING_DUNGEON_PP_UP
	iftrue .End
	opentext
	verbosegiveitem PP_UP
	iffalse .End
	waitbutton
	changeblock 20, 44, $AF
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_PP_UP
.End:
	closetext
	end

AwakeningDungeonBigKeyChest:
	checkevent EVENT_AWAKENING_DUNGEON_BIG_KEY
	iftrue .End
	opentext
	verbosegiveitem BIG_KEY
	iffalse .End
	waitbutton
	changeblock 28, 38, $AF
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_BIG_KEY
.End:
	closetext
	end

AwakeningDungeonMaxReviveChest:
	checkevent EVENT_AWAKENING_DUNGEON_MAX_REVIVE
	iftrue .End
	opentext
	verbosegiveitem MAX_REVIVE
	iffalse .End
	waitbutton
	changeblock  8, 14, $AF
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_MAX_REVIVE
.End:
	closetext
	end

AwakeningDungeonBottomRightButton:
	checkevent EVENT_AWAKENING_DUNGEON_BOTTOM_RIGHT_BUTTON
	iffalse .Press
	end
.Press:
	playsound SFX_FANFARE
	changeblock 48, 42, $BF
	changeblock 50, 40, $C0
	reloadmap
	setevent EVENT_AWAKENING_DUNGEON_BOTTOM_RIGHT_BUTTON
	end


AwakeningDungeonBottomRightSmallKey:
	checkevent EVENT_AWAKENING_DUNGEON_BOTTOM_RIGHT_BUTTON
	iffalse .End
	checkevent EVENT_AWAKENING_DUNGEON_BOTTOM_RIGHT_SMALL_KEY
	iffalse .GetKey
	end
.GetKey:
	playsound SFX_FANFARE
	opentext
	verbosegiveitem SMALL_KEY
	iffalse .BagFull
	waitbutton
	changeblock 50, 40, $2B
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_BOTTOM_RIGHT_SMALL_KEY
.BagFull:
	closetext
.End:
	end

AwakeningDungeonOpening:
	opentext
	writetext AwakeningDungeonOpeningText
	waitbutton
	reloadmappart
	closetext
	end

AwakeningDungeonOpeningText:
	text "A path forward"
	line "appears!"
	done

AwakeningDungeonSecondBottomRightSmallKey:
	checkevent EVENT_AWAKENING_DUNGEON_PUSHED_BOTTOM_RIGHT_BLOCK
	iffalse .End
	checkevent EVENT_AWAKENING_DUNGEON_SECOND_BOTTOM_RIGHT_KEY
	iffalse .GetKey
	end
.GetKey:
	playsound SFX_FANFARE
	waitsfx
	opentext
	verbosegiveitem SMALL_KEY
	iffalse .BagFull
	waitbutton
	changeblock 46, 26, $2B
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_SECOND_BOTTOM_RIGHT_KEY 
.BagFull:
	closetext
.End:
	end

AwakeningDungeonSecondBottomRightBlock:
	checkevent EVENT_AWAKENING_DUNGEON_PUSHED_BOTTOM_RIGHT_BLOCK
	iftrue .End
	playsound SFX_STRENGTH
	earthquake 60
	waitsfx
	changeblock 52, 30, $01
	changeblock 52, 28, $24
	changeblock 46, 26, $c0
	setevent EVENT_AWAKENING_DUNGEON_PUSHED_BOTTOM_RIGHT_BLOCK
	playsound SFX_TRANSACTION
	waitsfx
	reloadmap
.End:
	end

AwakeningDungeonTopMiddleButton:
	checkevent EVENT_AWAKENING_DUNGEON_PRESSED_TOP_MIDDLE_BUTTON
	iffalse .Press
	end
.Press:
	playsound SFX_FANFARE
	waitsfx
	changeblock 14,  2, $BF
	changeblock 16, 10, $16
	changeblock 18, 10, $17
	changeblock 16, 12, $14
	changeblock 18, 12, $15
	scall AwakeningDungeonOpening
	setevent EVENT_AWAKENING_DUNGEON_PRESSED_TOP_MIDDLE_BUTTON
	end

AwakeningDungeonTopLeftButton:
	checkevent EVENT_AWAKENING_DUNGEON_PRESSED_TOP_LEFT_BUTTON
	iffalse .Press
	end
.Press:
	playsound SFX_FANFARE
	waitsfx
	changeblock  2, 20, $BF
	changeblock  4, 10, $16
	changeblock  6, 10, $17
	changeblock  4, 12, $14
	changeblock  6, 12, $15
	scall AwakeningDungeonOpening
	setevent EVENT_AWAKENING_DUNGEON_PRESSED_TOP_LEFT_BUTTON
	end

TrainerArmos1:
	playsound SFX_HYPER_BEAM
	waitsfx
	opentext
	writetext TrainerArmos1SeenText
	waitbutton
	closetext
	winlosstext TrainerArmos1BeatenText, 0
	loadtrainer ARMOS, ARMOS_1
	startbattle
	reloadmapafterbattle
	opentext
	writetext TrainerArmos1AfterText
	waitbutton
	setevent EVENT_BEAT_ARMOS_1
	disappear AWAKENING_DUNGEON_ARMOS
	playsound SFX_STRENGTH
	earthquake 130
	waitbutton
	changeblock 48,  4, $0f
	changeblock 36, 42, $56
	changeblock 50,  4, $C1
	reloadmappart
	closetext
	scall AwakeningDungeonFairyStatue
	changeblock 48, 10, $16
	changeblock 50, 10, $17
	changeblock 48, 12, $14
	changeblock 50, 12, $15
	changeblock 42,  4, $1D
	changeblock 44,  4, $1E
	changeblock 42,  6, $21
	changeblock 44,  6, $22
	scall AwakeningDungeonOpening
	end

TrainerArmos1SeenText:
	text "YOU WILL NOT WAKE"
	line "THE DREAMER."

	para "HE WILL SLEEP."

	para "CONTENT."

	para "ISOLATED."
	done

TrainerArmos1BeatenText:
	text "YOU DO NOT"
	line "REALIZE WHAT"
	cont "YOU DO."
	done


TrainerArmos1AfterText:
	text "THIS WILL NOT END"
	line "IN THE METHOD YOU"
	cont "DESIRE."

	para "THERE IS NO WAY"
	line "TO VICTORY."
	done


AwakeningDungeonFairyStatue:
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext AwakeningDungeonFairyText
	waitbutton
	closetext
	end

AwakeningDungeonFairyText:
	text "The fairy statue"
	line "heals your"
	cont "#MON!"
	done

AwakeningDungeonFrontKeyBlock:
	opentext
	checkevent EVENT_AWAKENING_DUNGEON_UNLOCKED_FRONT_KEY_BLOCK
	iftrue .End
	writetext AwakeningDungeonLockedText
	waitbutton
	checkitem SMALL_KEY
	iffalse .End
	writetext AwakeningDungeonUseKeyQuestion
	yesorno
	iffalse .End
	playsound SFX_ENTER_DOOR
	waitsfx
	writetext AwakeningDungeonOpeningText
	waitbutton
	changeblock 32, 28, $4c
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_UNLOCKED_FRONT_KEY_BLOCK
	takeitem SMALL_KEY
.End:
	closetext
	end

AwakeningDungeonLockedText:
	text "It's Locked."

	para "It looks like a"
	line "SMALL KEY could"
	cont "open it."
	done

AwakeningDungeonUseKeyQuestion:
	text "Use a SMALL KEY"
	line "to open it?"
	done

AwakeningDungeonMiniBossDoor:
	opentext
	checkevent EVENT_AWAKENING_DUNGEON_UNLOCKED_MINI_BOSS_DOOR
	iftrue .End
	writetext AwakeningDungeonLockedText
	waitbutton
	checkitem SMALL_KEY
	iffalse .End
	writetext AwakeningDungeonUseKeyQuestion
	yesorno
	iffalse .End
	playsound SFX_ENTER_DOOR
	waitsfx
	writetext AwakeningDungeonOpeningText
	waitbutton
	changeblock 48, 10, $16
	changeblock 50, 10, $17
	changeblock 48, 12, $14
	changeblock 50, 12, $15
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_UNLOCKED_MINI_BOSS_DOOR
	takeitem SMALL_KEY
.End:
	closetext
	end

AwakeningDungeonBossDoor:
	opentext
	checkevent EVENT_AWAKENING_DUNGEON_OPEN_BOSS_DOOR
	iftrue .End
	writetext AwakeningDungeonBossDoorLockedText
	waitbutton
	checkitem BIG_KEY
	iffalse .End
	writetext AwakeningDungeonBossDoorOpenText
	waitbutton
	changeblock  4,  0, $C2
	changeblock  6,  0, $C3
	reloadmappart
	setevent EVENT_AWAKENING_DUNGEON_OPEN_BOSS_DOOR
.End:
	closetext
	end

AwakeningDungeonBossDoorLockedText:
	text "This massive door"
	line "is locked."

	para "It looks like you"
	line "will need a BIG"
	cont "KEY to open it."
	done

AwakeningDungeonBossDoorOpenText:
	text "You unlock the"
	line "door with your"
	cont "BIG KEY."
	done

AwakeningDungeonBlock:
	jumpstd StrengthBoulderScript

AwakeningDungeonBladeTrap1Left:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_1
	iftrue .End
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_1, AwakeningDungeonMoveLeft
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_1, AwakeningDungeonMoveLeft
	scall AwakeningDungeonBladeTrap1
.End:
	end

AwakeningDungeonBladeTrap2Left2:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_2
	iftrue .End
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_2, AwakeningDungeonMoveLeft
	scall AwakeningDungeonBladeTrap2
.End:
	end

AwakeningDungeonBladeTrap2Left1:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_2
	iftrue .End
	scall AwakeningDungeonBladeTrap2
.End:
	end

AwakeningDungeonBladeTrap2Down:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_2
	iftrue .End
	scall AwakeningDungeonBladeTrap2
.End:
	end

AwakeningDungeonBladeTrap3Down:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_3
	iftrue .End
	scall AwakeningDungeonBladeTrap3
.End:
	end

AwakeningDungeonBladeTrap4Left:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_4
	iftrue .End
	scall AwakeningDungeonBladeTrap4
.End:
	end

AwakeningDungeonBladeTrap4Right1:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_4
	iftrue .End
	scall AwakeningDungeonBladeTrap4
.End:
	end

AwakeningDungeonBladeTrap4Right2:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_4
	iftrue .End
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_4, AwakeningDungeonMoveRight
	scall AwakeningDungeonBladeTrap4
.End:
	end

AwakeningDungeonBladeTrap4Right3:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_4
	iftrue .End
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_4, AwakeningDungeonMoveRight
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_4, AwakeningDungeonMoveRight
	scall AwakeningDungeonBladeTrap4
.End:
	end

AwakeningDungeonBladeTrap4Right4:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_4
	iftrue .End
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_4, AwakeningDungeonMoveRight
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_4, AwakeningDungeonMoveRight
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_4, AwakeningDungeonMoveRight
	scall AwakeningDungeonBladeTrap4
.End:
	end

AwakeningDungeonBladeTrap5Left:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_5
	iftrue .End
	scall AwakeningDungeonBladeTrap5
.End:
	end

AwakeningDungeonBladeTrap5Down1:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_5
	iftrue .End
	scall AwakeningDungeonBladeTrap5
.End:
	end

AwakeningDungeonBladeTrap5Down2:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_5
	iftrue .End
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_5, AwakeningDungeonMoveDown
	scall AwakeningDungeonBladeTrap5
.End:
	end

AwakeningDungeonBladeTrap5Down3:
	checkevent EVENT_BEAT_DUNGEON_BLADE_TRAP_5
	iftrue .End
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_5, AwakeningDungeonMoveDown
	applymovement AWAKENING_DUNGEON_BLADE_TRAP_5, AwakeningDungeonMoveDown
	scall AwakeningDungeonBladeTrap5
.End:
	end

AwakeningDungeonMoveLeft:
	step LEFT
	step_end
AwakeningDungeonMoveUp:
	step UP
	step_end
AwakeningDungeonMoveRight:
	step RIGHT
	step_end
AwakeningDungeonMoveDown:
	step DOWN
	step_end


AwakeningDungeonLink:
    trainer HEROOFTIME, LINK_2, EVENT_BEAT_DUNGEON_LINK, AwakeningDungeonLinkSeenText, AwakeningDungeonLinkBeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem JUMP_2
    waitbutton
    closetext
    disappear AWAKENING_DUNGEON_LINK
    end

AwakeningDungeonLinkSeenText:
AwakeningDungeonLinkBeatenText:
	text "..."
	done


AwakeningDungeon_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 37, 46, AWAKENING_BEACH_2, 3
	warp_event 38, 46, AWAKENING_BEACH_2, 3
	warp_event 35, 15, AWAKENING_DUNGEON_B1F, 1
	warp_event  3, 43, AWAKENING_DUNGEON_B1F, 2
	warp_event 21, 27, AWAKENING_DUNGEON_B1F, 3
	warp_event  9, 21, AWAKENING_DUNGEON_B1F, 4
	warp_event 53, 33, AWAKENING_DUNGEON_B1F, 5
	warp_event  3, 31, AWAKENING_DUNGEON_B1F, 6
	warp_event 37, 42, AWAKENING_DUNGEON, 10
	warp_event 49,  5, AWAKENING_DUNGEON, 9
	warp_event  5,  1, AWAKENING_DUNGEON_BOSS_ROOM, 1
	warp_event  6,  1, AWAKENING_DUNGEON_BOSS_ROOM, 2

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 48, 42, -1, AwakeningDungeonBottomRightButton
	coord_event 51, 40, -1, AwakeningDungeonBottomRightSmallKey
	coord_event 47, 26, -1, AwakeningDungeonSecondBottomRightSmallKey
	coord_event 14,  2, -1, AwakeningDungeonTopMiddleButton
	coord_event  2, 20, -1, AwakeningDungeonTopLeftButton
	coord_event 38,  9, -1, AwakeningDungeonBladeTrap1Left
	coord_event 31,  3, -1, AwakeningDungeonBladeTrap2Down
	coord_event 30,  2, -1, AwakeningDungeonBladeTrap2Left1
	coord_event 29,  2, -1, AwakeningDungeonBladeTrap2Left2
	coord_event 23,  3, -1, AwakeningDungeonBladeTrap3Down
	coord_event 16,  5, -1, AwakeningDungeonBladeTrap4Left
	coord_event 18,  5, -1, AwakeningDungeonBladeTrap4Right1
	coord_event 19,  5, -1, AwakeningDungeonBladeTrap4Right2
	coord_event 20,  5, -1, AwakeningDungeonBladeTrap4Right3
	coord_event 21,  5, -1, AwakeningDungeonBladeTrap4Right4
	coord_event 17, 22, -1, AwakeningDungeonBladeTrap5Left
	coord_event 18, 23, -1, AwakeningDungeonBladeTrap5Down1
	coord_event 18, 24, -1, AwakeningDungeonBladeTrap5Down2
	coord_event 18, 25, -1, AwakeningDungeonBladeTrap5Down3

	def_bg_events
;	bg_event x, y, type, script
	bg_event 52, 30, BGEVENT_UP, AwakeningDungeonSecondBottomRightBlock
	bg_event 33, 29, BGEVENT_READ, AwakeningDungeonFrontKeyBlock
	bg_event 29, 38, BGEVENT_READ, AwakeningDungeonBigKeyChest
	bg_event 51, 18, BGEVENT_READ, AwakeningDungeonHPUpChest
	bg_event 23,  6, BGEVENT_READ, AwakeningDungeonCalciumChest
	bg_event  9, 38, BGEVENT_READ, AwakeningDungeonNuggetChest
	bg_event 21, 44, BGEVENT_READ, AwakeningDungeonPPUpChest
	bg_event  9, 14, BGEVENT_READ, AwakeningDungeonMaxReviveChest
	bg_event 50, 13, BGEVENT_READ, AwakeningDungeonMiniBossDoor
	bg_event 49, 13, BGEVENT_READ, AwakeningDungeonMiniBossDoor
	bg_event  5,  1, BGEVENT_READ, AwakeningDungeonBossDoor
	bg_event  6,  1, BGEVENT_READ, AwakeningDungeonBossDoor


	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 50, 28, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonGreenGel, EVENT_BEAT_AWAKENING_DUNGEON_GEL_1
	object_event  6, 21, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonPurpleGel1, EVENT_BEAT_AWAKENING_DUNGEON_GEL_2
	object_event 28, 31, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonPurpleGel2, EVENT_BEAT_AWAKENING_DUNGEON_GEL_3
	object_event 40, 20, SPRITE_MOBLIN, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerMoblin8, EVENT_BEAT_MOBLIN_8
	object_event 29, 17, SPRITE_MOBLIN, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerMoblin9, EVENT_BEAT_MOBLIN_9
	object_event 21, 45, SPRITE_MOBLIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerMoblin10, EVENT_BEAT_MOBLIN_10
	object_event 15, 36, SPRITE_OCTOROK, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerOctorok10, EVENT_BEAT_OCTOROK_10
	object_event 27,  8, SPRITE_OCTOROK, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerOctorok11, EVENT_BEAT_OCTOROK_11
	object_event  3, 17, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerOctorok12, EVENT_BEAT_OCTOROK_12
	object_event 49,  5, SPRITE_ARMOS, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerArmos1, EVENT_BEAT_ARMOS_1
	object_event 41,  9, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonBladeTrap1, 0, EVENT_BEAT_DUNGEON_BLADE_TRAP_1
	object_event 31,  2, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonBladeTrap2, 0, EVENT_BEAT_DUNGEON_BLADE_TRAP_2
	object_event 23,  2, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonBladeTrap3, 0, EVENT_BEAT_DUNGEON_BLADE_TRAP_3
	object_event 17,  5, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonBladeTrap4, 0, EVENT_BEAT_DUNGEON_BLADE_TRAP_4
	object_event 18, 22, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonBladeTrap5, 0, EVENT_BEAT_DUNGEON_BLADE_TRAP_5
	object_event  4, 19, SPRITE_BLOCK, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonBlock, 0, 0
	object_event  8, 16, SPRITE_BLOCK, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonBlock, 0, 0
	object_event  7, 19, SPRITE_BLOCK, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningDungeonBlock, 0, 0
	object_event  5, 29, SPRITE_LINK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, AwakeningDungeonLink, 0, EVENT_BEAT_DUNGEON_LINK
