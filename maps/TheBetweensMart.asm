	object_const_def
;	const MAPNAME_OBJECTNAME


TheBetweensMart_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TheBetweensMartClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_THE_BETWEENS
	closetext
	end


TheBetweensMartClerkScript:
	opentext
	writetext TheBetweensMartClerkText
	waitbutton
	special FadeBlackQuickly
	playmusic MUSIC_HEAL
	waitsfx
	special HealParty
	special FadeInQuickly
	writetext TheBetweensMartClerkText2
	waitbutton
	closetext
	end

TheBetweensMartClerkText2:
	text "Your #MON are"
	line "healed."

	para "Have a great"
	line "day!"
	done

TheBetweensMartClerkText:
	text "Hello, welcome"
	line "to my shop."

	para "Your #MON seem"
	line "tired, let me"
	cont "heal them."
	done

TheBetweensMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event  8,  0,  THE_BETWEENS_TOWN, 12

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event  3,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheBetweensMartClerkScript, 0
	object_event  6,  9, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TheBetweensMartClerk2Script, 0
