	object_const_def
;	const MAPNAME_OBJECTNAME
	const THE_BETWEENS_METROID_MISSILES
	const THE_BETWEENS_METROID_ENERGY_TANK
	const THE_BETWEENS_METROID_MORPH_BALL
	const THE_BETWEENS_METROID_SKREE_1
	const THE_BETWEENS_METROID_SKREE_2
	const THE_BETWEENS_METROID_ZOOMER


TheBetweensMetroid_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME

	def_callbacks
;	callback type, script

TheBetweensMetroidBerserkGene:
	itemball BERSERK_GENE

TheBetweensMetroidFullRestore:
	itemball FULL_RESTORE

TheBetweensMetroidBigPearl:
	itemball BIG_PEARL

TrainerGlitch8:
	trainer GLITCH_T, GLITCH_8, EVENT_BEAT_GLITCH_8, Glitch8SeenText, Glitch8BeatenText, 0, .Script

.Script:
	playsound SFX_TACKLE
	waitsfx
	disappear THE_BETWEENS_METROID_SKREE_1
	end

Glitch8SeenText:
	text "I love to singa"

	para "About the moona"
	line "and the juna and"
	cont "the springa"


	text "I love to singa"

	para "About a sky of"
	line "blue-a"

	para "or a tea for"
	line "two-a"

	para "I love-a to"
	line "I love-a to sing"
	done

Glitch8BeatenText:
	text "Speak to me only"
	line "with thine eyes."
	done

TrainerGlitch9:
	trainer GLITCH_T, GLITCH_9, EVENT_BEAT_GLITCH_9, Glitch9SeenText, Glitch9BeatenText, 0, .Script

.Script:
	playsound SFX_TACKLE
	waitsfx
	disappear THE_BETWEENS_METROID_SKREE_2
	end

Glitch9SeenText:
	text "I'd been assigned to"
	line "watch over Biologic's"
	cont "research team, so I"
	cont "once again found myself"
	cont "on the surface of SR388"
	done

Glitch9BeatenText:
	text "It was there that"
	line "I was attacked by"
	cont "a life-form I had"
	cont "never encountered"
	cont "before."
	done

TrainerFurryKristy:
	trainer FURRY, KRISTY, EVENT_BEAT_FURRY_KRISTY, KristySeenText, KristyBeatenText, 0, .KristyScript

.KristyScript:
	playsound SFX_TACKLE
	waitsfx
	disappear THE_BETWEENS_METROID_ZOOMER
	end

KristySeenText:
	text "Why aren't you in"
	line "cosplay?"

	para "Cons are about"
	line "dressing up and"
	cont "having fun!"
	done

KristyBeatenText:
	text "How dare you"
	line "defeat me!"

	para "My fursona is"
	line "unstoppable!"

	para "Rawr!"
	done

TheBetweensMetroid_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 33,  5, THE_BETWEENS_SAFARI_ZONE, 6

	def_coord_events
;	coord_event x, y, scene_id, script

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 4, 3, SPRITE_MISSILES, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensMetroidBerserkGene, EVENT_THE_BETWEENS_METROID_BERSERK_GENE
	object_event  2,  8, SPRITE_ENERGY_TANK, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensMetroidFullRestore, EVENT_THE_BETWEENS_METROID_FULL_RESTORE
	object_event 31,  7, SPRITE_MORPH_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TheBetweensMetroidBigPearl, EVENT_THE_BETWEENS_METROID_BIG_PEARL
	object_event 14,  3, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGlitch8, EVENT_BEAT_GLITCH_8
	object_event 15,  3, SPRITE_SKREE_RIPPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGlitch9, EVENT_BEAT_GLITCH_9
	object_event 14,  1, SPRITE_ZOOMER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerFurryKristy, EVENT_BEAT_FURRY_KRISTY
