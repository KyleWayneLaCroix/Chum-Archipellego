	object_const_def

DrNuggzMDExterior_MapScripts:
	def_scene_scripts

	def_callbacks

DrNuggzSign:
	jumptext DrNuggzSignText

DrNuggzSignText:
	text "DR. NUGGZ MD"

	para "WEED FOR WHAT"
	line "AILS YA"
	done

DrNuggzMDExterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, DANK_CAVE_2F, 2
	warp_event 13, 13, DR_NUGGZ_MD_INTERIOR, 1

	def_coord_events

	def_bg_events
	bg_event 11, 13, BGEVENT_READ, DrNuggzSign

	def_object_events
