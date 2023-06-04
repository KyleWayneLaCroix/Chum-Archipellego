	object_const_def
;	const MAPNAME_OBJECTNAME
	const MAYBE_VILLAGE_SHRINE_BLOCK_1
	const MAYBE_VILLAGE_SHRINE_MOBLIN
	const MAYBE_VILLAGE_SHRINE_OCTOROK
	const MAYBE_VILLAGE_SHRINE_GEL
	const MAYBE_VILLAGE_SHRINE_WALL_TRAP_1
	const MAYBE_VILLAGE_SHRINE_WALL_TRAP_2
	const MAYBE_VILLAGE_SHRINE_WALL_TRAP_3
	const MAYBE_VILLAGE_SHRINE_WALL_TRAP_4

MaybeVillageShrine_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, MaybeVillageShrineDoorCallback
	callback MAPCALLBACK_STONETABLE, MaybeVillageShrineSetUpStoneTableCallback

MaybeVillageShrineSetUpStoneTableCallback:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 3, MAYBE_VILLAGE_SHRINE_BLOCK_1, .Block1
	db -1 ; end

.Block1:
	setevent EVENT_MAYBE_VILLAGE_SHRINE_BLOCK_ON_BLUE
	sjump .FinishBlock1

.FinishBlock1:
	pause 30
	scall .BlockSitsStill
	changeblock 4, 34, $BE
	changeblock 4, 24, $B0
	changeblock 6, 24, $B0
	changeblock 4, 26, $B0
	changeblock 6, 26, $B0
	changeblock 4, 28, $B0
	changeblock 6, 28, $B0
	disappear MAYBE_VILLAGE_SHRINE_BLOCK_1
	scall MaybeVillageShrineOpening
	end

.BlockSitsStill:
	playsound SFX_STRENGTH
	earthquake 80
	end


MaybeVillageShrineDoorCallback:
	checkevent EVENT_MAYBE_VILLAGE_SHRINE_BUTTON_PRESSED
	iffalse .Door2
	changeblock 18, 32, $BD
	changeblock 14, 32, $B0
	changeblock 14, 34, $B0
	changeblock 12, 32, $B0
	changeblock 12, 34, $B0
	changeblock 10, 32, $B0
	changeblock 10, 34, $B0
.Door2
	checkevent EVENT_MAYBE_VILLAGE_SHRINE_BLOCK_ON_BLUE
	iffalse .Door3
	changeblock 4, 34, $BE
	changeblock 4, 24, $B0
	changeblock 6, 24, $B0
	changeblock 4, 26, $B0
	changeblock 6, 26, $B0
	changeblock 4, 28, $B0
	changeblock 6, 28, $B0
.Door3:
	checkevent EVENT_MAYBE_VILLAGE_SHRINE_DEFEATED_ENEMY
	iffalse .Door4
	changeblock 4, 24, $B0
	changeblock 6, 24, $B0
	changeblock 4, 26, $B0
	changeblock 6, 26, $B0
	changeblock 4, 28, $B0
	changeblock 6, 28, $B0
	changeblock 4, 14, $B0
	changeblock 6, 14, $B0
	changeblock 4, 12, $B0
	changeblock 6, 12, $B0
	changeblock 4, 10, $B0
	changeblock 6, 10, $B0
.Door4:
	checkevent EVENT_MAYBE_VILLAGE_SHRINE_PUSHED_QUESTION_BLOCK
	iffalse .Door5
	changeblock  4,  8, $01
	changeblock  6,  8, $33
	changeblock 10,  4, $01
	changeblock 10,  6, $01
	changeblock 12,  4, $01
	changeblock 12,  6, $01
	changeblock 14,  4, $01
	changeblock 14,  6, $01
.Door5:
	checkevent EVENT_MAYBE_VILLAGE_SHRINE_PRESSED_LAST_BUTTON
	iffalse .Exit
	changeblock 22,  6, $BF
	changeblock 18, 10, $B0
	changeblock 20, 10, $B0
	changeblock 18, 12, $B0
	changeblock 20, 12, $B0
	changeblock 18, 14, $B0
	changeblock 20, 14, $B0
.Exit:
	checkevent EVENT_GOT_DUNGEON_KEY
	iffalse .EndCallback
	changeblock 16, 24, $7b
	changeblock 16, 26, $70
	changeblock 16, 28, $7f
	changeblock 22, 24, $7a
	changeblock 22, 26, $72
	changeblock 22, 28, $7a
	changeblock 18, 24, $86
	changeblock 18, 26, $86
	changeblock 18, 28, $86
	changeblock 20, 24, $87
	changeblock 20, 26, $87
	changeblock 20, 28, $87
.EndCallback:
	endcallback


MaybeVillageShrineOpeningRoomButton:
	checkevent EVENT_MAYBE_VILLAGE_SHRINE_BUTTON_PRESSED
	iffalse .Press
	end
.Press:
	playsound SFX_FANFARE
	earthquake 30
	waitsfx
	changeblock 18, 32, $BD
	changeblock 14, 32, $B0
	changeblock 14, 34, $B0
	changeblock 12, 32, $B0
	changeblock 12, 34, $B0
	changeblock 10, 32, $B0
	changeblock 10, 34, $B0
	scall MaybeVillageShrineOpening
	setevent EVENT_MAYBE_VILLAGE_SHRINE_BUTTON_PRESSED
	end


MaybeVillageShrineOpening:
	opentext
	writetext MaybeVillageShrineOpeningText
	waitbutton
	reloadmappart
	closetext
	end

MaybeVillageShrineOpeningText:
	text "A path forward"
	line "appears!"
	done

MaybeVillageShrineRoom2Block:
	jumpstd StrengthBoulderScript


MaybeVillageMonsterroomEntrance:
	checkevent EVENT_MAYBE_VILLAGE_SHRINE_DEFEATED_ENEMY
	iftrue .End
	playsound SFX_EXIT_BUILDING
	earthquake 30
	waitsfx
	changeblock 4, 24, $B8
	changeblock 6, 24, $B9
	changeblock 4, 26, $00
	changeblock 6, 26, $00
	opentext
	reloadmappart
	closetext
.End:
	end

TrainerOctorok9:
    trainer OCTOROK_T, OCTOROK_9, EVENT_BEAT_OCTOROK_9, MaybeVillageShrineOctorokSeenText, MaybeVillageShrineOctorokBeatenText, 0, .Script

.Script:
    opentext
    verbosegiveitem RUPEE
    waitbutton
    closetext
    playsound SFX_TACKLE
    waitsfx
    disappear MAYBE_VILLAGE_SHRINE_OCTOROK
	scall MaybeVillageShrineMonsterCheck
    end

MaybeVillageShrineOctorokSeenText:
	text "BERRROWWWW"
	done

MaybeVillageShrineOctorokBeatenText:
	text "Brrrrrrwwwr"
	done

TrainerMoblin7:
    trainer MOBLIN, MOBLIN_7, EVENT_BEAT_MOBLIN_7, MaybeVillageShrineMoblinSeenText, MaybeVillageShrineMoblinBeatenText, 0, .Script

.Script:
    opentext
    writetext MaybeVillageShrineMoblinAfterText
    waitbutton
    playsound SFX_TACKLE
    waitsfx
    disappear MAYBE_VILLAGE_SHRINE_MOBLIN
    verbosegiveitem RUPEE
    waitbutton
    closetext
	scall MaybeVillageShrineMonsterCheck
    end

MaybeVillageShrineMoblinSeenText:
	text "Hey, who let you"
	line "into my shrine?"
	
	para "You have agressed"
	line "upon my property!"

	para "I am well within"
	line "my rights to"
	cont "kill, cook, and"
	cont "eat you!"
	done

MaybeVillageShrineMoblinBeatenText:
	text "This is a vio-"
	line "-lation of my"
	cont "rights!"
	done

MaybeVillageShrineMoblinAfterText:
	text "You violated the"
	line "Non-Agression"
	cont "Principle!"
	done

TrainerShrineBallBrian:
	trainer BALL_BRIAN, BALLBRIAN_5, EVENT_BEAT_BALL_BRIAN_5, MaybeVillageShrineBallBrianSeenText, MaybeVillageShrineBallBrianBeatenText, 0, .Script

.Script:
	opentext
	writetext MaybeVillageShrineBallBrianAfterText
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 80
	waitsfx
	disappear MAYBE_VILLAGE_SHRINE_GEL
	opentext
	verbosegiveitem ULTRA_BALL, 5
	closetext
	scall MaybeVillageShrineMonsterCheck
	end

MaybeVillageShrineBallBrianSeenText:
	text "You know, when I"
	line "was playing the"
	cont "hot new ZELDA"
	cont "game:"

	para "The Legend of"
	line "Zelda: Tears of"
	cont "the Kingdom, the"
	cont "hit sequel to the"
	cont "wildly successful"
	cont "& transmorphative"
	cont "Nintendo Switch"
	cont "launch title, and"
	cont "Wii U game, The"
	cont "Legend of Zelda:"
	cont "Breath of the"
	cont "Wild,"

	para "I came across an"
	line "item - a piece of"
	cont "armor,"

	para "pants to be"
	line "specific,"

	para "I continued with"
	line "the tutorial area"
	cont "and grew puzzled,"

	para "then concerned."

	para "I broke into a"
	line "cold sweat after"
	cont "jumping down to"
	cont "the next area as"
	cont "I realized:"

	para "I didn't find"
	line "the matching"
	cont "shirt."

	para "I had never felt"
	line "such terror..."

	para "Thankfully, I"
	line "soon found it in"
	cont "another cave."
	done

MaybeVillageShrineBallBrianBeatenText:
	text "You know, as a"
	line "ball, I can't"
	cont "even wear a"
	cont "shirt myself."
	done

MaybeVillageShrineBallBrianAfterText:
	text "BRIAN: You know,"
	line "this will be all"
	cont "over soon."

	para "You're almost to"
	line "the end."

	para "I'll be seeing"
	line "you soon."

	para "Keep in mind, I"
	line "didn't make this."

	para "This isn't my BRO"
	line "ISLAND."

	para "This isn't about"
	line "me."

	para "I wonder if he's"
	line "realized what"
	cont "he's done."
	done

MaybeVillageShrineMonsterCheck:
	checkevent EVENT_BEAT_OCTOROK_9
	iffalse .End
	checkevent EVENT_BEAT_MOBLIN_7
	iffalse .End
	checkevent EVENT_BEAT_BALL_BRIAN_5
	iffalse .End
	setevent EVENT_MAYBE_VILLAGE_SHRINE_DEFEATED_ENEMY
	changeblock 4, 24, $B0
	changeblock 6, 24, $B0
	changeblock 4, 26, $B0
	changeblock 6, 26, $B0
	changeblock 4, 28, $B0
	changeblock 6, 28, $B0
	changeblock 4, 14, $B0
	changeblock 6, 14, $B0
	changeblock 4, 12, $B0
	changeblock 6, 12, $B0
	changeblock 4, 10, $B0
	changeblock 6, 10, $B0
	scall MaybeVillageShrineOpening
.End:
	end

MaybeVillageShrineQuestionBlock:
	playsound SFX_STRENGTH
	earthquake 55
	changeblock  4,  8, $01
	changeblock  6,  8, $33
	pause 20
	changeblock 10,  4, $01
	changeblock 10,  6, $01
	changeblock 12,  4, $01
	changeblock 12,  6, $01
	changeblock 14,  4, $01
	changeblock 14,  6, $01
	setevent EVENT_MAYBE_VILLAGE_SHRINE_PUSHED_QUESTION_BLOCK
	scall MaybeVillageShrineOpening
	end

WallTrapBeatenText:
	text " - 1 j0o"
	done

MaybeVillageShrineFinalButton:
	checkevent EVENT_MAYBE_VILLAGE_SHRINE_PRESSED_LAST_BUTTON
	iffalse .Press
	end
.Press:
	playsound SFX_FANFARE
	earthquake 30
	waitsfx
	changeblock 22,  6, $BF
	changeblock 18, 10, $B0
	changeblock 20, 10, $B0
	changeblock 18, 12, $B0
	changeblock 20, 12, $B0
	changeblock 18, 14, $B0
	changeblock 20, 14, $B0
	scall MaybeVillageShrineOpening
	setevent EVENT_MAYBE_VILLAGE_SHRINE_PRESSED_LAST_BUTTON
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	iftrue .WallTrap2
	setevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	disappear MAYBE_VILLAGE_SHRINE_WALL_TRAP_1
.WallTrap2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	iftrue .WallTrap3
	setevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	disappear MAYBE_VILLAGE_SHRINE_WALL_TRAP_2
.WallTrap3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	iftrue .WallTrap4
	setevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	disappear MAYBE_VILLAGE_SHRINE_WALL_TRAP_3
.WallTrap4:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	iftrue .End
	setevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	disappear MAYBE_VILLAGE_SHRINE_WALL_TRAP_4
.End:
	end

ShrineTrapMoveDownMovement:
	step DOWN
	step_end

ShrineTrapMoveLeftMovement:
	step LEFT
	step_end

ShrineTrapMoveRightMovement:
	step RIGHT
	step_end

ShrineTrapMoveUpMovement:
	step UP
	step_end

MaybeVillageShrineWallTrap1Down3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_1, ShrineTrapMoveDownMovement
MaybeVillageShrineWallTrap1Down2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_1, ShrineTrapMoveDownMovement
MaybeVillageShrineWallTrap1Down1:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	iftrue .End
	scall MaybeVillageShrineWallTrap1
.End:
	end

MaybeVillageShrineWallTrap1Right3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_1, ShrineTrapMoveRightMovement
MaybeVillageShrineWallTrap1Right2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_1, ShrineTrapMoveRightMovement
MaybeVillageShrineWallTrap1Right1:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	iftrue .End
	scall MaybeVillageShrineWallTrap1
.End:
	end

MaybeVillageShrineWallTrap2Down3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_2, ShrineTrapMoveDownMovement
MaybeVillageShrineWallTrap2Down2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_2, ShrineTrapMoveDownMovement
MaybeVillageShrineWallTrap2Down1:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	iftrue .End
	scall MaybeVillageShrineWallTrap2
.End:
	end

MaybeVillageShrineWallTrap2Left3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_2, ShrineTrapMoveLeftMovement
MaybeVillageShrineWallTrap2Left2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_2, ShrineTrapMoveLeftMovement
MaybeVillageShrineWallTrap2Left1:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	iftrue .End
	scall MaybeVillageShrineWallTrap2
.End:
	end

MaybeVillageShrineWallTrap3Right3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_3, ShrineTrapMoveRightMovement
MaybeVillageShrineWallTrap3Right2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_3, ShrineTrapMoveRightMovement
MaybeVillageShrineWallTrap3Right1:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	iftrue .End
	scall MaybeVillageShrineWallTrap3
.End:
	end

MaybeVillageShrineWallTrap3Up3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_3, ShrineTrapMoveUpMovement
MaybeVillageShrineWallTrap3Up2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_3, ShrineTrapMoveUpMovement
MaybeVillageShrineWallTrap3Up1:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	iftrue .End
	scall MaybeVillageShrineWallTrap3
.End:
	end
	
MaybeVillageShrineWallTrap4Up3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_4, ShrineTrapMoveUpMovement
MaybeVillageShrineWallTrap4Up2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_4, ShrineTrapMoveUpMovement
MaybeVillageShrineWallTrap4Up1:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	iftrue .End
	scall MaybeVillageShrineWallTrap4
.End:
	end
	
MaybeVillageShrineWallTrap4Left3:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_4, ShrineTrapMoveLeftMovement
MaybeVillageShrineWallTrap4Left2:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	iffalse .Continue
	end
.Continue:
	applymovement MAYBE_VILLAGE_SHRINE_WALL_TRAP_4, ShrineTrapMoveLeftMovement
MaybeVillageShrineWallTrap4Left1:
	checkevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	iftrue .End
	scall MaybeVillageShrineWallTrap4
.End:
	end

MaybeVillageShrineWallTrap1:
	winlosstext WallTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SHRINE_WALL_TRAP_1
	disappear MAYBE_VILLAGE_SHRINE_WALL_TRAP_1
	playsound SFX_STRENGTH
	earthquake 60
	end

MaybeVillageShrineWallTrap2:
	winlosstext WallTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SHRINE_WALL_TRAP_2
	disappear MAYBE_VILLAGE_SHRINE_WALL_TRAP_2
	playsound SFX_STRENGTH
	earthquake 60
	end

MaybeVillageShrineWallTrap3:
	winlosstext WallTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SHRINE_WALL_TRAP_3
	disappear MAYBE_VILLAGE_SHRINE_WALL_TRAP_3
	playsound SFX_STRENGTH
	earthquake 60
	end

MaybeVillageShrineWallTrap4:
	winlosstext WallTrapBeatenText, 0
	loadtrainer GLITCH_T, GLITCH_7
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SHRINE_WALL_TRAP_4
	disappear MAYBE_VILLAGE_SHRINE_WALL_TRAP_4
	playsound SFX_STRENGTH
	earthquake 60
	end

MaybeVillageShrineChest:
	checkevent EVENT_GOT_DUNGEON_KEY
	iftrue .End
	opentext
	verbosegiveitem DUNGEON_KEY
	waitbutton
	changeblock 18, 18, $01
	reloadmappart
	closetext
	changeblock 16, 24, $7b
	changeblock 16, 26, $70
	changeblock 16, 28, $7f
	changeblock 22, 24, $7a
	changeblock 22, 26, $72
	changeblock 22, 28, $7a
	changeblock 18, 24, $86
	changeblock 18, 26, $86
	changeblock 18, 28, $86
	changeblock 20, 24, $87
	changeblock 20, 26, $87
	changeblock 20, 28, $87
.End:
	end

MaybeVillageShrine_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 19, 38, MAYBE_VILLAGE, 15
	warp_event 20, 38, MAYBE_VILLAGE, 15
	warp_event  4, 34, MAYBE_VILLAGE_SHRINE, 3

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 19, 33, -1, MaybeVillageShrineOpeningRoomButton
	coord_event  4, 23, -1, MaybeVillageMonsterroomEntrance
	coord_event  5, 23, -1, MaybeVillageMonsterroomEntrance
	coord_event  6, 23, -1, MaybeVillageMonsterroomEntrance
	coord_event  7, 23, -1, MaybeVillageMonsterroomEntrance
	coord_event 22,  6, -1, MaybeVillageShrineFinalButton
	coord_event 16,  3, -1, MaybeVillageShrineWallTrap1Down1
	coord_event 16,  4, -1, MaybeVillageShrineWallTrap1Down2
	coord_event 16,  5, -1, MaybeVillageShrineWallTrap1Down3
	coord_event 17,  2, -1, MaybeVillageShrineWallTrap1Right1
	coord_event 18,  2, -1, MaybeVillageShrineWallTrap1Right2
	coord_event 19,  2, -1, MaybeVillageShrineWallTrap1Right3
	coord_event 22,  2, -1, MaybeVillageShrineWallTrap2Left1
	coord_event 21,  2, -1, MaybeVillageShrineWallTrap2Left2
	coord_event 20,  2, -1, MaybeVillageShrineWallTrap2Left3
	coord_event 23,  3, -1, MaybeVillageShrineWallTrap2Down1
	coord_event 23,  4, -1, MaybeVillageShrineWallTrap2Down2
	coord_event 23,  5, -1, MaybeVillageShrineWallTrap2Down3
	coord_event 16,  8, -1, MaybeVillageShrineWallTrap3Up1
	coord_event 16,  7, -1, MaybeVillageShrineWallTrap3Up2
	coord_event 16,  6, -1, MaybeVillageShrineWallTrap3Up3
	coord_event 17,  9, -1, MaybeVillageShrineWallTrap3Right1
	coord_event 18,  9, -1, MaybeVillageShrineWallTrap3Right2
	coord_event 19,  9, -1, MaybeVillageShrineWallTrap3Right3
	coord_event 20,  9, -1, MaybeVillageShrineWallTrap4Left1
	coord_event 21,  9, -1, MaybeVillageShrineWallTrap4Left2
	coord_event 22,  9, -1, MaybeVillageShrineWallTrap4Left3
	coord_event 23,  8, -1, MaybeVillageShrineWallTrap4Up1
	coord_event 23,  7, -1, MaybeVillageShrineWallTrap4Up2
	coord_event 23,  6, -1, MaybeVillageShrineWallTrap4Up3
	
	
	def_bg_events
;	bg_event x, y, type, script
	bg_event 5,   9, BGEVENT_RIGHT, MaybeVillageShrineQuestionBlock
	bg_event 19, 18, BGEVENT_READ, MaybeVillageShrineChest

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  6, 34, SPRITE_BLOCK, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaybeVillageShrineRoom2Block, EVENT_MAYBE_VILLAGE_SHRINE_BLOCK_ON_BLUE
	object_event  9, 22, SPRITE_MOBLIN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerMoblin7, EVENT_BEAT_MOBLIN_7
	object_event  3, 19, SPRITE_OCTOROK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerOctorok9, EVENT_BEAT_OCTOROK_9
	object_event  8, 18, SPRITE_GEL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerShrineBallBrian, EVENT_BEAT_BALL_BRIAN_5
	object_event 16,  2, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaybeVillageShrineWallTrap1, EVENT_BEAT_SHRINE_WALL_TRAP_1
	object_event 23,  2, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaybeVillageShrineWallTrap2, EVENT_BEAT_SHRINE_WALL_TRAP_2
	object_event 16,  9, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaybeVillageShrineWallTrap3, EVENT_BEAT_SHRINE_WALL_TRAP_3
	object_event 23,  9, SPRITE_BLADE_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaybeVillageShrineWallTrap4, EVENT_BEAT_SHRINE_WALL_TRAP_4
