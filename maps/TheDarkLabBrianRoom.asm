	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_DARK_LAB_BRAIN_ROOM_BRIAN


TheDarkLabBrianRoom_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TheDarkLabBrianRoomBrian:
	faceplayer
	opentext
	writetext TheDarkLabBrianRoomBrianExposition1
	waitbutton
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, RIGHT
	pause 30
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, DOWN
	pause 30
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, LEFT
	pause 30
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, UP
	pause 30
	faceplayer
	writetext TheDarkLabBrianRoomBrianExposition2
	waitbutton
	showemote EMOTE_BOLT, THE_DARK_LAB_BRAIN_ROOM_BRIAN, 30
	showemote EMOTE_QUESTION, PLAYER, 30
	writetext TheDarkLabBrianRoomBrianExposition3
	waitbutton
	winlosstext TheDarkLabBrianBeatenText, TheDarkLabBrianBeatYouText
	loadtrainer MAD_DOG, BRIAN_3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MAD_DOG_BRIAN_3
	opentext
	writetext TheDarkLabBrianAfterText
	waitbutton
	changeblock 4, 4, $01
	reloadmappart
	closetext
	follow THE_DARK_LAB_BRAIN_ROOM_BRIAN, PLAYER
	applymovement THE_DARK_LAB_BRAIN_ROOM_BRIAN, FusionDanceStartMovement
	stopfollow
	applymovement THE_DARK_LAB_BRAIN_ROOM_BRIAN, FusionDanceStartMovement
	applymovement PLAYER, FusionDanceLeftMovement
	turnobject PLAYER, DOWN
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, DOWN
	pause 30
	opentext
	writetext FusionDanceFuu
	waitbutton
	closetext
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, UP
	turnobject PLAYER, UP
	pause 5
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, LEFT
	turnobject PLAYER, RIGHT
	pause 5
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, LEFT
	turnobject PLAYER, RIGHT
	pause 5
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, DOWN
	turnobject PLAYER, DOWN
	pause 5
	applymovement THE_DARK_LAB_BRAIN_ROOM_BRIAN, FusionDanceLeftMovement
	applymovement PLAYER, FusionDanceStartMovement
	turnobject THE_DARK_LAB_BRAIN_ROOM_BRIAN, DOWN
	turnobject PLAYER, DOWN
	pause 5
	opentext
	writetext FusionDanceSion
	waitbutton
	closetext
	special FadeOutPalettes
	pause 30
	applymovement THE_DARK_LAB_BRAIN_ROOM_BRIAN, FusionDanceLeftMovement
	applymovement PLAYER, FusionDanceStartMovement
	opentext
	writetext FusionDanceHa
	waitbutton
	closetext
	special FadeOutPalettes
	special FadeBlackQuickly
	playsound SFX_INTRO_WHOOSH
	disappear THE_DARK_LAB_BRAIN_ROOM_BRIAN
	pause 60
	applymovement PLAYER, FusionDanceLeftMovement
	special FadeInQuickly
	special FadeInPalettes
	playmusic MUSIC_RIVAL_AFTER
	turnobject PLAYER, DOWN
	opentext
	writetext FusionDanceOver
	waitbutton
	closetext
	end

FusionDanceOver:
	text "You have fused"
	line "with BRIAN."

	para "You can now enter"
	line "THE BETWEENS."
	done

FusionDanceJumpLeft:
	jump_step LEFT
	step_end

FusionDanceJumpRight:
	jump_step RIGHT
	step_end

FusionDanceStartMovement:
	step RIGHT
	step_end

FusionDanceLeftMovement:
	step LEFT
	step_end

FusionDanceFuu:
	text "FUUUUU-"
	done

FusionDanceSion:
	text "      -SION"
	done

FusionDanceHa:
	text ""
	line "HAAAAAAAAAAAAAAAA"
	done

TheDarkLabBrianAfterText:
	text "BRIAN: You have"
	line "proven that you"
	cont "are more powerful"
	cont "than I."

	para "Let us begin the"
	line "fusion dance."
	done

TheDarkLabBrianBeatYouText:
	text "BRIAN: Aha! I am"
	line "the cool charac-"
	cont "-ter and you are"
	cont "either a boring"
	cont "guy or an old"
	cont "green man."
	done

TheDarkLabBrianBeatenText:
	text "BRIAN: I wish I"
	line "was PIKKON."

	para "He should be"
	line "canon."

	para "Also a NAMEKIAN."
	done
TheDarkLabBrianRoomBrianExposition1:
	text "BRIAN: Someone"
	line "FINALLY made it"
	cont "here."

	para "I am BRIAN"
	done

TheDarkLabBrianRoomBrianExposition2:
	text "BRIAN: You may"
	line "have heard of me"
	cont "from such games"
	cont "as BRO ISLAND."

	para "I gotta make this"
	line "quick, I'm only"
	cont "partially here."

	para "This whole hack"
	line "is held together"
	cont "with duct tape"
	cont "and copy pasted"
	cont "code."

	para "KYLE went too far"

	para "The scope was too"
	line "big."

	para "Our only hope is"
	line "to reboot the"
	cont "game into an"
	cont "earlier, simpler"
	cont "version of itself"

	para "If you can access"
	line "KYLE'S DESKTOP,"
	cont "you can use the"
	cont "DEVELOPER TOOLS"
	cont "to do a CREDITS"
	cont "WARP like the"
	cont "SPEEDRUNNERS do."

	para "Ahead of us is"
	line "THE BETWEENS."

	para "Use them to get"
	line "to KYLE'S DESKTOP"

	para "WE are the only"
	line "hope of BRO"
	cont "ISLAND."
	para "I made BRO ISLAND"
	line "before KYLE took"
	cont "it and turned it"
	cont "into"

	para "      CHUM"
	line "   ARCHIPELAGO   "

	para "KYLE and I are"
	line "the only two who"
	cont "can traverse the"
	cont "GLITCHES and CODE"
	cont "of THE BETWEENS"

	para "I've been locked"
	line "away too long, so"
	cont "I am weak."

	para "But, in case you"
	line "hadn't put two in"
	cont "two together yet,"

	para "YOU are also ME."
	done

TheDarkLabBrianRoomBrianExposition3:
	text "BRIAN: That's"
	line "right. A plot"
	cont "twist."

	para "KYLE has held me"
	line "captive so that I"
	cont "could not finish"
	cont "BRO ISLAND before"
	cont "he finished"
	cont "CHUM ARCHIPELAGO."

	para "He's been cloning"
	line "me so no one would"
	cont "notice, but they"
	cont "are cheap copies."

	para "Flanderizations"
	line "of me in college."

	para "If you are going"
	line "to continue, you"
	cont "will have to fuse"
	cont "with me, like KAMI"
	cont "and PICCOLO."

	para "Or NAIL & PICCOLO"

	para "We gotta do a"
	line "#MON battle to"
	cont "see which of us"
	cont "is the NAIL, and"
	cont "which is the"
	cont "PICCOLO"
	done


StopLeavingBrainRoom:
	checkevent EVENT_BEAT_MAD_DOG_BRIAN_3
	iftrue .End
	opentext
	writetext CantLeaveBrianRoomText
	waitbutton
	closetext
	applymovement PLAYER, CantLeaveBrianRoomMovement
.End:
	end

CantLeaveBrianRoomText:
	text "A powerful force"
	line "blocks you from"
	cont "leaving this room"
	done

CantLeaveBrianRoomMovement:
	step UP
	step_end

TheDarkLabBrianRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4, 0, THE_DARK_LAB, 1
	warp_event  5, 0, THE_DARK_LAB, 2
	warp_event  4, 9, THE_BETWEENS_SAFARI_ZONE, 1
	warp_event  5, 9, THE_BETWEENS_SAFARI_ZONE, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event  4, 9, -1, StopLeavingBrainRoom
	coord_event  5,  9, -1, StopLeavingBrainRoom

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 4, 4, SPRITE_RED, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TheDarkLabBrianRoomBrian, EVENT_BEAT_MAD_DOG_BRIAN_3
