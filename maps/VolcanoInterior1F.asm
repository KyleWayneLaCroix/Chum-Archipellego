	object_const_def
;	const MAPNAME_OBJECTNAME

VolcanoInterior1F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script VolcanoInterior1FDownstairs, VOLCANO_INTERIOR_1F_DOWNSTAIRS
	scene_script VolcanoInterior1FUpstairs, VOLCANO_INTERIOR_1F_UPSTAIRS

	def_callbacks
;	callback type, script

VolcanoInterior1FDownstairsSet:
	setscene VOLCANO_INTERIOR_1F_DOWNSTAIRS
	;fallthrough
VolcanoInterior1FDownstairs:
	; left bridge
	changeblock 12, 12, $58
	changeblock 14, 12, $40
	changeblock 16, 12, $40
	changeblock 18, 12, $59
	; middle-right bridge
	changeblock 30, 14, $58
	changeblock 32, 14, $40
	changeblock 34, 14, $40
	changeblock 36, 14, $40
	changeblock 38, 14, $59
	; vertical bridge
	changeblock 42,  8, $5F
	changeblock 42, 10, $44
	changeblock 42, 12, $61
	end

VolcanoInterior1FUpstairsSet:
	setscene VOLCANO_INTERIOR_1F_UPSTAIRS
	;fallthrough
VolcanoInterior1FUpstairs:
	; left bridge
	changeblock 12, 12, $5A
	changeblock 14, 12, $51
	changeblock 16, 12, $51
	changeblock 18, 12, $5B
	; middle-right bridge
	changeblock 30, 14, $5A
	changeblock 32, 14, $51
	changeblock 34, 14, $51
	changeblock 36, 14, $51
	changeblock 38, 14, $5B
	; vertical bridge
	changeblock 42,  8, $60
	changeblock 42, 10, $52
	changeblock 42, 12, $62
	end

Volcano1FBoulder:
Volcano1FBoulder2:
	jumpstd StrengthBoulderScript

VolcanoInterior1FGuardSpec:
	itemball GUARD_SPEC, 2

VolcanoInterior1FProtein:
	itemball PROTEIN

VolcanoInterior1FXSpecial:
	itemball X_SPECIAL, 2

VolcanoInterior1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 27, 33, VOLCANO_EXTERIOR, 1
	warp_event 49, 29, VOLCANO_EXTERIOR, 2
	warp_event  5, 25, VOLCANO_EXTERIOR, 3
	warp_event 45, 17, VOLCANO_INTERIOR_B1F, 1
	warp_event 47,  3, VOLCANO_INTERIOR_B1F, 2
	warp_event 39, 33, VOLCANO_INTERIOR_2F, 1
	warp_event 21,  5, VOLCANO_INTERIOR_2F, 2
	warp_event 45,  3, VOLCANO_INTERIOR_2F, 3

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 23, 18, VOLCANO_INTERIOR_1F_DOWNSTAIRS, VolcanoInterior1FUpstairsSet
	coord_event 23, 20, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 26, 32, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 27, 32, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 51, 22, VOLCANO_INTERIOR_1F_DOWNSTAIRS, VolcanoInterior1FUpstairsSet
	coord_event  7,  9, VOLCANO_INTERIOR_1F_DOWNSTAIRS, VolcanoInterior1FUpstairsSet
	coord_event 45, 25, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 45, 24, VOLCANO_INTERIOR_1F_UPSTAIRS, VolcanoInterior1FDownstairsSet
	coord_event 23, 10, VOLCANO_INTERIOR_1F_DOWNSTAIRS, VolcanoInterior1FUpstairsSet

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
	object_event 26, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Volcano1FBoulder, -1
	object_event 27, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Volcano1FBoulder2, -1
	;object_event 26, 21, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerMichael, -1
	;object_event 33,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMAaron, -1
	;object_event 42, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherNed, -1
	;object_event 42, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerWeirdoBrent, -1
	;object_event 40, 20, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBattleGirlVidel, -1
	object_event 35, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior1FGuardSpec, EVENT_VOLCANO_INTERIOR_1F_GUARD_SPEC
	object_event 45, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior1FProtein, EVENT_VOLCANO_INTERIOR_1F_PROTEIN
	object_event  8,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VolcanoInterior1FXSpecial, EVENT_VOLCANO_INTERIOR_1F_X_SPECIAL
