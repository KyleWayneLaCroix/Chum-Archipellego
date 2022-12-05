	object_const_def
	const ROUTEAPOKECENTER1F_NURSE
	const ROUTEAPOKECENTER1F_YOUNGSTER
	const ROUTEAPOKECENTER1F_GENTLEMAN

RouteAPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

RouteAPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

RouteAPokecenter1FGentlemanScript:
	jumptextfaceplayer RouteAPokecenter1FGentlemanText

RouteAPokecenter1FYoungsterScript:
	jumptextfaceplayer RouteAPokecenter1FYoungsterText

RouteAPokecenter1FGentlemanText:
	text "I say, it's been"
	line "quite hard to get"
	cont "around since the"
	cont "great washing."

	para "I haven't been"
	line "able to get to"
	cont "the office on"
	cont "AMIGO Island."

	para "It's Great!"
	done

RouteAPokecenter1FYoungsterText:
	text "Man, heelies are"
	line "so cool!"

	para "I'm glad everyone"
	line "has them built-in"
	cont "now. Just have to"
	cont "hold the B BUTTON"
	cont "and you can run!"

	para "No need for those"
	line "running shoes, we"
	cont "got something"
	cont "better and faster!"
	done

RouteAPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_A, 1
	warp_event  4,  7, ROUTE_A, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RouteAPokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RouteAPokecenter1FGentlemanScript, -1
	object_event  8,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RouteAPokecenter1FYoungsterScript, -1
