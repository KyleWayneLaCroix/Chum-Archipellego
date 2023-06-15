	object_const_def
;	const MAPNAME_OBJECTNAME


OceanDetour_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

OceanDetourHiker:
	jumptextfaceplayer OceanDetourHikerChristmasDLCPitch

OceanDetourHikerChristmasDLCPitch:
	text "I just can't see"
	line "a way to scale"
	cont "this cliff."

	para "It's sheer enough"
	line "that I can't do"
	cont "it myself, and"
	cont "ROCK CLIMB is in"
	cont "GEN IV, not II."

	para "The only other"
	line "way I can see is"
	cont "the WATERFALL,"
	cont "which is an HM"
	cont "in this gen, but"
	cont "I can't find that"
	cont "anywhere."

	para "Now I can't get"
	line "to ICE TOWN!"

	para "Maybe the HM for"
	line "WATERFALL and"
	cont "ICE TOWN itself"
	cont "will appear in"
	cont "some sort of"
	cont "CHRISTMAS DLC"
	cont "featuring SAN-TA"
	cont "CLAUS."
	done

OceanDetourMaxRevive:
	itemball MAX_REVIVE

OceanDetour_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 19, 15, ROUTE_H, 1
	warp_event 33,  3, ROUTE_H, 2
	warp_event  3, 15, MAYBE_VILLAGE, 16

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 28, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OceanDetourHiker, 0
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, OceanDetourMaxRevive, EVENT_OCEAN_DETOUR_MAX_REVIVE
