	object_const_def
;	const MAPNAME_OBJECTNAME

MisplacedCavernB1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

MisplacedCavernB1FGreatFairy:
	opentext
	writetext MisplacedCavernGreatFairyIntroText
	waitbutton
	closetext
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	refreshscreen
	closetext
	end

MisplacedCavernGreatFairyIntroText:
	text "Let's heal your"
	line "#MON's wounds"
	cont "and get rid of"
	cont "all that stres.."

	para "Close your eyes"
	line "and relax..."
	done

MisplacedCavernB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  4,  7, MISPLACED_WOODS, 4
	warp_event  5,  7, MISPLACED_WOODS, 4

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  4,  1, SPRITE_GREAT_FAIRY, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MisplacedCavernB1FGreatFairy, -1
