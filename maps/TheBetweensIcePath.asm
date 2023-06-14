	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_BETWEENS_ICE_PATH_BOULDER
	const THE_BETWEENS_ICE_PATH_POKE_BALL_1
	const THE_BETWEENS_ICE_PATH_POKE_BALL_2


TheBetweensIcePath_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TheBetweensIcePathBoulderScript:
	end

TheBetweensIcePathMaxElixer:
	itemball MAX_ELIXER

TheBetweensIcePathMaxRevive:
	itemball MAX_REVIVE

TheBetweensIcePathYoungster:
	jumptextfaceplayer TheBetweensIcePathYoungsterText

TheBetweensIcePathYoungsterText:
	text "I've been stuck"
	line "here for a long"
	cont "time."

	para "It's like this"
	line "puzzle isn't"
	cont "possible without"
	cont "another rock."
	done

TheBetweensIcePath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 21, 14, THE_BETWEENS_VICTORY_ROAD, 6
	warp_event  4, 21, THE_BETWEENS_TOWN, 1
	warp_event 17,  9, KYLES_DESKTOP_ROOM, 1

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 21, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheBetweensIcePathBoulderScript, EVENT_THE_BETWEENS_ICE_PATH_BOULDER_MISSING
	object_event 10, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensIcePathMaxRevive, EVENT_THE_BETWEEN_ICE_PATH_MAX_REVIVE
	object_event  6, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensIcePathMaxElixer, EVENT_THE_BETWEEN_ICE_PATH_MAX_ELIXER
	object_event 20, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TheBetweensIcePathYoungster, 0
