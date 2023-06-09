	object_const_def
;	const MAPNAME_OBJECTNAME


HauntedAttic_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

HauntedAtticChamberPuzzle:
	refreshscreen
	setval UNOWNPUZZLE_KABUTO
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_SOLVED_KABUTO_PUZZLE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutPalettes
	cry BOOMER
	special FadeInPalettes
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_TRAP
	loadwildmon BOOMER, 45
	startbattle
	reloadmapafterbattle
	end

HauntedAttic_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  2,  9, KYLES_HOUSE, 3

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script
	bg_event 5, 0, BGEVENT_READ, HauntedAtticChamberPuzzle
	bg_event  6,  0, BGEVENT_READ, HauntedAtticChamberPuzzle

	def_object_events
;	object_event , y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
