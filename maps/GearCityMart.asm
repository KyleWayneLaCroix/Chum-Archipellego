	object_const_def
	const GEARCITYMART_CLERK

GearCityMart_MapScripts:
	def_scene_scripts

	def_callbacks

GearCityMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_GEARCITY
	closetext
	end

GearCityMartSuperNerdScript:
	jumptextfaceplayer GearCityMartSuperNerdText

GearCityMartGrannyScript:
	jumptextfaceplayer GearCityMartGrannyText

GearCityMartSuperNerdText:
	text "If evolution is"
	line "real, why are"
	cont "there still"
	cont "MANKEYs?"
	done

GearCityMartGrannyText:
	text "Back in my day,"
	line "we had to evolve"

	para "our #MON by"
	line "trading with each"
	cont "other."

	para "Now you can just"
	line "buy a LINK CABLE."
	done

GearCityMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GEAR_CITY, 2
	warp_event  3,  7, GEAR_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GearCityMartClerkScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GearCityMartSuperNerdScript, -1
	object_event  6,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GearCityMartGrannyScript, -1
