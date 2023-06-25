	object_const_def
;	const MAPNAME_OBJECTNAME
	const AWAKENING_BEACH_OCTOROK_1
	const AWAKENING_BEACH_OCTOROK_2
	const AWAKENING_BEACH_OCTOROK_3
	const AWAKENING_BEACH_OCTOROK_4
	const AWAKENING_BEACH_OCTOROK_5
	const AWAKENING_BEACH_OCTOROK_6
	const AWAKENING_BEACH_OCTOROK_7
	const AWAKENING_BEACH_OCTOROK_8
	const AWAKENING_BEACH_CRAB_1
	const AWAKENING_BEACH_CRAB_2
	const AWAKENING_BEACH_CRAB_3
	const AWAKENING_BEACH_CRAB_4
	const AWAKENING_BEACH_CRAB_5
	const AWAKENING_BEACH_CRAB_6
	const AWAKENING_BEACH_CRAB_7
	const AWAKENING_BEACH_CRAB_8
	const AWAKENING_BEACH_SWORD
	const AWAKENING_BEACH_GIRL
	const AWAKENING_BEACH_KAEPORA

AwakeningBeach2_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script AwakeningBeach2NoopScene1, SCENE_AWAKENING_BEACH_2_NORMAL
	scene_script AwakeningBeach2JustFinishedDungeon, SCENE_AWAKENING_BEACH_2_JUST_BEAT_DUNGEON

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, AwakeningBeach2ChestCallback

AwakeningBeach2NoopScene1:
	end

AwakeningBeach2JustFinishedDungeon:
	special FadeOutPalettes
	moveobject AWAKENING_BEACH_KAEPORA, 38, 13
	appear AWAKENING_BEACH_KAEPORA
	giveitem HM_FLY
	special FadeOutMusic
	special FadeInPalettes
	opentext
	reloadmappart
	writetext AwakeningBeach2JustFinishedKaepora
	waitbutton
	special FadeBlackQuickly
	disappear AWAKENING_BEACH_KAEPORA
	setscene SCENE_AWAKENING_BEACH_2_NORMAL
	special FadeInQuickly
	special RestartMapMusic
	closetext
	end

AwakeningBeach2JustFinishedKaepora:
	text "KYLE: Hello, is"
	line "this thing on?"

	para "Oh good, I did"
	line "get control of"
	cont "the owl."

	para "Anyway, it's me,"
	line "KYLE."

	para "Good news, I"
	line "managed to get"
	cont "the island hooked"
	cont "up to the rest of"
	cont "the ARCHIPELAGO"
	cont "again, so you"
	cont "can fly again!"

	para "Also, you've got"
	line "the tools you"
	cont "need to reach the"
	cont "BAD EGG."

	para "I don't know for"
	line "sure what's in"
	cont "there, but it's"
	cont "the source of"
	cont "all of these"
	cont "glitches."

	para "Your BOMBS should"
	line "be able to crack"
	cont "it open, but be"
	cont "careful."

	para "May be a good"
	line "idea to stock up"
	cont "on supplies and"
	cont "#MON first."

	para "I'm hooting for"
	line "you!"
	done

AwakeningBeach2ChestCallback:
	checkevent EVENT_BOMBED_AWAKENING_BEACH_2_WALL
	iffalse .UnlockedDungeon
	changeblock 40, 30, $21
.UnlockedDungeon
	checkevent EVENT_UNLOCKED_DUNGEON
	iffalse .FullRestore
	changeblock 40, 14, $62
.FullRestore:
	checkevent EVENT_AWAKENING_BEACH_2_FULL_RESTORE
	iffalse .Carbos
	changeblock 2, 34, $D5
.Carbos:
	checkevent EVENT_AWAKENING_BEACH_2_CARBOS
	iffalse .Calcium
	changeblock 56, 24, $D7
.Calcium:
	checkevent EVENT_AWAKENING_BEACH_2_CALCIUM
	iffalse .Nugget
	changeblock 24, 10, $33
.Nugget:
	checkevent EVENT_AWAKENING_BEACH_2_NUGGET
	iffalse .RareCandy
	changeblock 36, 32, $D7
.RareCandy:
	checkevent EVENT_AWAKENING_BEACH_2_RARE_CANDY
	iffalse .ShadowBall
	changeblock 50, 6, $33
.ShadowBall:
	checkevent EVENT_AWAKENING_BEACH_2_SHADOW_BALL
	iffalse .CallbackEnd
	changeblock 40, 2, $33
.CallbackEnd:
	endcallback

AwakeningBeachCrab1:
	scall AwakeningBeachCrabTrap
	reloadmapafterbattle
	setevent EVENT_BEAT_CRAB_1
	disappear AWAKENING_BEACH_CRAB_1
	end

AwakeningBeachCrab2:
	scall AwakeningBeachCrabTrap
	reloadmapafterbattle
	setevent EVENT_BEAT_CRAB_2
	disappear AWAKENING_BEACH_CRAB_2
	end

AwakeningBeachCrab3:
	scall AwakeningBeachCrabTrap
	reloadmapafterbattle
	setevent EVENT_BEAT_CRAB_3
	disappear AWAKENING_BEACH_CRAB_3
	end

AwakeningBeachCrab4:
	scall AwakeningBeachCrabTrap
	reloadmapafterbattle
	setevent EVENT_BEAT_CRAB_4
	disappear AWAKENING_BEACH_CRAB_4
	end

AwakeningBeachCrab5:
	scall AwakeningBeachCrabTrap
	reloadmapafterbattle
	setevent EVENT_BEAT_CRAB_5
	disappear AWAKENING_BEACH_CRAB_5
	end

AwakeningBeachCrab6:
	scall AwakeningBeachCrabTrap
	reloadmapafterbattle
	setevent EVENT_BEAT_CRAB_6
	disappear AWAKENING_BEACH_CRAB_6
	end

AwakeningBeachCrab7:
	scall AwakeningBeachCrabTrap
	reloadmapafterbattle
	setevent EVENT_BEAT_CRAB_7
	disappear AWAKENING_BEACH_CRAB_7
	end

AwakeningBeachCrab8:
	scall AwakeningBeachCrabTrap
	reloadmapafterbattle
	setevent EVENT_BEAT_CRAB_8
	disappear AWAKENING_BEACH_CRAB_8
	end

AwakeningBeachCrabTrap:
	special FadeOutPalettes
	cry CLAUNCHER
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon CLAUNCHER, 28
	startbattle
	end

TrainerOctorok1:
    trainer OCTOROK_T, OCTOROK_1, EVENT_BEAT_OCTOROK_1, BeachOctorokSeenText, BeachOctorokBeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_BEACH_OCTOROK_1
    end

TrainerOctorok2:
    trainer OCTOROK_T, OCTOROK_2, EVENT_BEAT_OCTOROK_2, BeachOctorokSeenText, BeachOctorokBeatenText, 0, .Script

.Script:
	opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_BEACH_OCTOROK_2
    end

TrainerOctorok3:
    trainer OCTOROK_T, OCTOROK_3, EVENT_BEAT_OCTOROK_3, BeachOctorokSeenText, BeachOctorokBeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_BEACH_OCTOROK_3
    end

TrainerOctorok4:
    trainer OCTOROK_T, OCTOROK_4, EVENT_BEAT_OCTOROK_4, BeachOctorokSeenText, BeachOctorokBeatenText, 0, .Script

.Script:
	opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_BEACH_OCTOROK_4
    end

TrainerOctorok5:
    trainer OCTOROK_T, OCTOROK_5, EVENT_BEAT_OCTOROK_5, BeachOctorokSeenText, BeachOctorokBeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_BEACH_OCTOROK_5
    end

TrainerOctorok6:
    trainer OCTOROK_T, OCTOROK_6, EVENT_BEAT_OCTOROK_6, BeachOctorokSeenText, BeachOctorokBeatenText, 0, .Script

.Script:
	opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_BEACH_OCTOROK_6
    end

TrainerOctorok7:
    trainer OCTOROK_T, OCTOROK_7, EVENT_BEAT_OCTOROK_7, BeachOctorokSeenText, BeachOctorokBeatenText, 0, .Script

.Script:
	opentext
    verbosegiveitem HEART
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_BEACH_OCTOROK_7
    end

TrainerOctorok8:
    trainer OCTOROK_T, OCTOROK_8, EVENT_BEAT_OCTOROK_8, BeachOctorokSeenText, BeachOctorokBeatenText, 0, .Script

.Script:
	opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear AWAKENING_BEACH_OCTOROK_8
    end

BeachOctorokSeenText:
	text "BERRROWWWW"
	done

BeachOctorokBeatenText:
	text "Brrrrrrwwwr"
	done

AwakeningBeachGirl:
AwakeningBeachKaepora:
	end

AwakeningBeachSword:
	opentext
	writetext AwakeningBeach2FoundYourSword
	waitbutton
	verbosegiveitem CHAINSAW
	disappear AWAKENING_BEACH_SWORD
	closetext
	setevent EVENT_GOT_SWORD_ON_BEACH
	clearevent EVENT_SAW_KAEPORA_ON_BEACH
	appear AWAKENING_BEACH_KAEPORA
	applymovement AWAKENING_BEACH_KAEPORA, AwakeningBeachKaeporaDown
	refreshscreen
	opentext
	writetext AwakeningBeachKaeporaIntro
	waitbutton
	closetext
	special FadeBlackQuickly
	disappear AWAKENING_BEACH_KAEPORA
	playsound SFX_RAZOR_WIND
	waitsfx
	setevent EVENT_SAW_KAEPORA_ON_BEACH
	special FadeInQuickly

	refreshscreen
	special RestartMapMusic
	end

AwakeningBeachKaeporaIntro:
	text "KAEPORA: Hoot!"
	line "Hoot!"

	para "So you are the"
	line "one who owns the"
	cont "SWORD..."
	line "CHAINSAW..."

	para "Now I understand"
	line "why the pocket"
	cont "monsters have"
	cont "appeared..."

	para "A corageous young"
	line "trainer has come"
	cont "to crack the BAD"
	cont "EGG..."

	para "It is said you"
	line "cannot solve this"
	cont "glitch unless you"
	cont "enter the EGG..."

	para "To leave this"
	line "island or reach"
	cont "the BAD EGG, you"
	cont "must have a way"
	cont "to break through"
	cont "the rocks that"
	cont "block your path."

	para "You should now go"
	line "north, to the"
	cont "MISPLACED WOODS."

	para "A man named CASEY"
	line "will be able to"
	cont "provide a way to"
	cont "open a path."

	para "I will meet you"
	line "again soon!"

	para "Hoot!"
	done

AwakeningBeachKaeporaDown:
	step DOWN
	step_end

AwakeningBeach2FoundYourSword:
	text "You found your"
	line "SWORD"
	line "CHAINSAW"
	done

AwakeningBeach2Ledge:
	applymovement PLAYER, AwakeningBeach2LedgeMovement
	end

AwakeningBeach2LedgeMovement:
	jump_step DOWN
	step_end

AwakeningBeach2FullRestore:
	checkevent EVENT_AWAKENING_BEACH_2_FULL_RESTORE
	iftrue .End
	opentext
	verbosegiveitem FULL_RESTORE
	waitbutton
	changeblock 2, 34, $D5
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_BEACH_2_FULL_RESTORE
.End:
	end
	
AwakeningBeach2Carbos:
	checkevent EVENT_AWAKENING_BEACH_2_CARBOS
	iftrue .End
	opentext
	verbosegiveitem CARBOS
	waitbutton
	changeblock 56, 24, $D7
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_BEACH_2_CARBOS
.End:
	end

AwakeningBeach2Calcium:
	checkevent EVENT_AWAKENING_BEACH_2_CALCIUM
	iftrue .End
	opentext
	verbosegiveitem CALCIUM
	waitbutton
	changeblock 24, 10, $33
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_BEACH_2_CALCIUM
.End:
	end

AwakeningBeach2Nugget:
	checkevent EVENT_AWAKENING_BEACH_2_NUGGET
	iftrue .End
	opentext
	verbosegiveitem NUGGET
	waitbutton
	changeblock 36, 32, $D7
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_BEACH_2_NUGGET
.End:
	end

AwakeningBeach2RareCandy:
	checkevent EVENT_AWAKENING_BEACH_2_RARE_CANDY
	iftrue .End
	opentext
	verbosegiveitem RARE_CANDY, 5
	waitbutton
	changeblock 50, 6, $33
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_BEACH_2_RARE_CANDY
.End:
	end

AwakeningBeach2ShadowBall:
	checkevent EVENT_AWAKENING_BEACH_2_SHADOW_BALL
	iftrue .End
	opentext
	verbosegiveitem TM_SHADOW_BALL
	waitbutton
	changeblock 40, 2, $33
	reloadmappart
	closetext
	setevent EVENT_AWAKENING_BEACH_2_SHADOW_BALL
.End:
	end

AwakeningBeach2BombWall:
	checkevent EVENT_BOMBED_AWAKENING_BEACH_2_WALL
	iftrue .End
	opentext
	writetext AwakeningBeach2BombableWallText1
	waitbutton
	checkitem BOMBS
	iffalse .NoBombs
	writetext AwakeningBeach2BombableWallText2
	yesorno
	iftrue .Bomb
	closetext
	end
.Bomb:
	closetext
	applymovement PLAYER, AwakeningBeach2MoveFromBomb
	pause 30
	playsound SFX_STRENGTH
	earthquake 40
	waitsfx
	special FadeBlackQuickly
	changeblock 40, 30, $21
	reloadmap
	special FadeInQuickly
	applymovement PLAYER, AwakeningBeach2ReturnFromBomb
	turnobject PLAYER, UP
	opentext
	changeblock 40, 30, $21
	reloadmappart
	writetext AwakeningBeach2BlownUp
	waitbutton
	setevent EVENT_BOMBED_AWAKENING_BEACH_2_WALL
.End:
	closetext
	end
.NoBombs:
	closetext
	end

AwakeningBeach2BombableWallText1:
	text "This wall looks"
	line "bombable..."
	done

AwakeningBeach2BombableWallText2:
	text "Blow it up with"
	line "a BOMB?"
	done

AwakeningBeach2BlownUp:
	text "A new cavern has"
	line "been discovered."
	done

AwakeningBeach2MoveFromBomb:
	step RIGHT
	step RIGHT
	step UP
	step_end

AwakeningBeach2ReturnFromBomb:
	step DOWN
	step LEFT
	step LEFT
	step_end

DungeonEntranceDoor:
	opentext
	checkevent EVENT_UNLOCKED_DUNGEON
	iftrue .End
	checkitem DUNGEON_KEY
	iftrue .Unlock
	writetext DungeonEntranceNeedKey
	waitbutton
	closetext
	end
.Unlock:
	writetext OpenDungeonEntrace
	waitbutton
	setevent EVENT_UNLOCKED_DUNGEON
	changeblock 40, 14, $62
	reloadmappart
.End
	closetext
	end

DungeonEntranceNeedKey:
	text "You need a"
	line "DUNGEON KEY to"
	cont "open this."
	done

OpenDungeonEntrace:
	text "The door of the"
	line "DUNGEON opens"
	cont "before you."
	done

AwakeningBeach2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 35, 23, BEACHFRONT_PROPERTY, 1
	warp_event 41, 31, BEACHFRONT_CAVERN, 1
	warp_event 40, 14, AWAKENING_DUNGEON, 1
	warp_event  6,  3, AWAKENING_BEACH_2, 4
	warp_event 16,  9, AWAKENING_BEACH_2, 4
	warp_event 26,  8, AWAKENING_BEACH_2, 4
	warp_event 27,  8, AWAKENING_BEACH_2, 4
	warp_event 28,  8, AWAKENING_BEACH_2, 4
	warp_event 26,  7, AWAKENING_BEACH_2, 4

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event  6,  6, -1, AwakeningBeach2Ledge
	coord_event 16, 14, -1, AwakeningBeach2Ledge
	coord_event  4, 16, -1, AwakeningBeach2Ledge
	coord_event  4, 12, -1, AwakeningBeach2Ledge
	coord_event  8, 20, -1, AwakeningBeach2Ledge
	coord_event 18, 20, -1, AwakeningBeach2Ledge
	coord_event 36, 30, -1, AwakeningBeach2Ledge

	def_bg_events
;	bg_event x, y, type, script
	bg_event  3, 34, BGEVENT_READ, AwakeningBeach2FullRestore
	bg_event 57, 24, BGEVENT_READ, AwakeningBeach2Carbos
	bg_event 24, 10, BGEVENT_READ, AwakeningBeach2Calcium
	bg_event 37, 32, BGEVENT_READ, AwakeningBeach2Nugget
	bg_event 50,  6, BGEVENT_READ, AwakeningBeach2RareCandy
	bg_event 40,  2, BGEVENT_READ, AwakeningBeach2ShadowBall
	bg_event 41, 31, BGEVENT_READ, AwakeningBeach2BombWall
	bg_event 40, 14, BGEVENT_READ, DungeonEntranceDoor

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 19,  3, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerOctorok1, EVENT_BEAT_OCTOROK_1
	object_event 28,  3, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerOctorok2, EVENT_BEAT_OCTOROK_2
	object_event 17, 17, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerOctorok3, EVENT_BEAT_OCTOROK_3
	object_event 14, 12, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerOctorok4, EVENT_BEAT_OCTOROK_4
	object_event 13,  7, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 3, 1, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerOctorok5, EVENT_BEAT_OCTOROK_5
	object_event  2, 29, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 1, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerOctorok6, EVENT_BEAT_OCTOROK_6
	object_event 26, 17, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerOctorok7, EVENT_BEAT_OCTOROK_7
	object_event 32, 13, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerOctorok8, EVENT_BEAT_OCTOROK_8
	object_event  9, 33, SPRITE_CRAB, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AwakeningBeachCrab1, EVENT_BEAT_CRAB_1
	object_event 42, 34, SPRITE_CRAB, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AwakeningBeachCrab2, EVENT_BEAT_CRAB_2
	object_event 29, 36, SPRITE_CRAB, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AwakeningBeachCrab3, EVENT_BEAT_CRAB_3
	object_event 21, 30, SPRITE_CRAB, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AwakeningBeachCrab4, EVENT_BEAT_CRAB_4
	object_event 12, 37, SPRITE_CRAB, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AwakeningBeachCrab5, EVENT_BEAT_CRAB_5
	object_event 52, 23, SPRITE_CRAB, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AwakeningBeachCrab6, EVENT_BEAT_CRAB_6
	object_event 48, 26, SPRITE_CRAB, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AwakeningBeachCrab7, EVENT_BEAT_CRAB_7
	object_event 55, 30, SPRITE_CRAB, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 2, AwakeningBeachCrab8, EVENT_BEAT_CRAB_8
	object_event 54, 37, SPRITE_SWORD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningBeachSword, EVENT_GOT_SWORD_ON_BEACH
	object_event 31, 33, SPRITE_LA_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 4, AwakeningBeachGirl, -1
	object_event 54, 34, SPRITE_KAEPORA, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AwakeningBeachKaepora, EVENT_SAW_KAEPORA_ON_BEACH
