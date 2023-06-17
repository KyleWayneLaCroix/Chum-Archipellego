	object_const_def
;	const MAPNAME_OBJECTNAME
	const BEACHFRONT_CAVERN_MEWTHREE


BeachfrontCavern_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script
	callback MAPCALLBACK_TILES, BeachfrontCavernMaxReviveCallback

BeachfrontCavernMaxReviveCallback:
	checkevent EVENT_BEACHFRONT_CAVERN_MAX_REVIVE
	iffalse .End
	changeblock 4, 2, $92
.End:
	endcallback


BeachfrontCavernMaxRevive:
	checkevent EVENT_BEACHFRONT_CAVERN_MAX_REVIVE
	iftrue .End
	opentext
	verbosegiveitem MAX_REVIVE
	waitbutton
	changeblock 4, 2, $92
	closetext
	setevent EVENT_BEACHFRONT_CAVERN_MAX_REVIVE
	closetext
.End:
	end

BeachfrontCavernMewthree:
	cry MEWTHREE
	opentext
	writetext BeachfrontCavernMewthreeIntro
	waitbutton
	special FadeOutMusic
	playsound SFX_KINESIS
	earthquake 75
	waitsfx
	special FadeOutPalettes
	changeblock 10, 10, $3F
	changeblock 12, 10, $3E
	changeblock 10, 12, $3B
	changeblock 12, 12, $3a
	reloadmappart
	special FadeInPalettes
	writetext BeachfrontCavernMewthreeIntro2
	waitbutton
	closetext
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon MEWTHREE, 60
	startbattle
	reloadmapafterbattle
	opentext
	writetext BeachfrontCavernMewthreeAfterBattle
	waitbutton
	closetext
	disappear BEACHFRONT_CAVERN_MEWTHREE
	setevent EVENT_BEAT_MEWTHREE
	end

BeachfrontCavernMewthreeAfterBattle:
	text "I see now that the"
	line "circumstances of"
	cont "one's birth is"
	cont "irrelevent."

	para "It is what you do"
	line "with the gift of"
	cont "life that deter-"
	cont "-mines who you"
	cont "are."
	done

BeachfrontCavernMewthreeIntro:
	text "Humans may have"
	line "created me, but"
	cont "they will never"
	cont "enslave me!"

	para "I am no mere"
	line "#MON."
	done

BeachfrontCavernMewthreeIntro2:
	text "I AM A #"

	para "GOD!"
	done

BeachfrontCavern_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 12, 25, AWAKENING_BEACH_2, 2
	warp_event 11, 25, AWAKENING_BEACH_2, 2

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 4, 2, BGEVENT_READ, BeachfrontCavernMaxRevive

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 11, 11, SPRITE_HUMANOID, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, BeachfrontCavernMewthree, EVENT_BEAT_MEWTHREE 
