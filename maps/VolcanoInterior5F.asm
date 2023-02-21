	object_const_def
;	const MAPNAME_OBJECTNAME


VolcanoInterior5F_MapScripts:
	def_scene_scripts
;	scene_script script, SCENE_MAPNAME_SCENE_NAME
	scene_script VolcanoInterior5FDownstairs, VOLCANO_INTERIOR_5F_DOWNSTAIRS
	scene_script VolcanoInterior5FMidstairs, VOLCANO_INTERIOR_5F_MIDSTAIRS
	scene_script VolcanoInterior5FUpstairs, VOLCANO_INTERIOR_5F_UPSTAIRS

	def_callbacks
;	callback type, script

VolcanoInterior5FDownstairsSet:
	setscene VOLCANO_INTERIOR_5F_DOWNSTAIRS
	;fallthrough
VolcanoInterior5FDownstairs:
	; bottom bridge
	changeblock 14, 28, $58
	changeblock 16, 28, $40
	changeblock 18, 28, $40
	changeblock 20, 28, $40
	changeblock 22, 28, $59
	; top bridges
	changeblock  2, 14, $58
	changeblock  4, 14, $40
	changeblock  6, 14, $40
	changeblock  8, 14, $40
	changeblock 10, 14, $40
	changeblock 12, 14, $40
	changeblock 14, 14, $59
	changeblock 22, 14, $58
	changeblock 24, 14, $40
	changeblock 26, 14, $40
	changeblock 28, 14, $40
	changeblock 30, 14, $59
	; right bridge
	changeblock 36, 18, $5F
	changeblock 36, 20, $44
	changeblock 36, 22, $44
	changeblock 36, 24, $44
	changeblock 36, 26, $61
	end

VolcanoInterior5FMidstairsSet:
	setscene VOLCANO_INTERIOR_5F_MIDSTAIRS
	;fallthrough
VolcanoInterior5FMidstairs:
	; bottom bridge
	changeblock 14, 28, $5A
	changeblock 16, 28, $51
	changeblock 18, 28, $51
	changeblock 20, 28, $51
	changeblock 22, 28, $5B
	; top bridges
	changeblock  2, 14, $58
	changeblock  4, 14, $40
	changeblock  6, 14, $40
	changeblock  8, 14, $40
	changeblock 10, 14, $40
	changeblock 12, 14, $40
	changeblock 14, 14, $59
	changeblock 22, 14, $58
	changeblock 24, 14, $40
	changeblock 26, 14, $40
	changeblock 28, 14, $40
	changeblock 30, 14, $59
	; right bridge
	changeblock 36, 18, $5F
	changeblock 36, 20, $44
	changeblock 36, 22, $44
	changeblock 36, 24, $44
	changeblock 36, 26, $61
	end

VolcanoInterior5FUpstairsSet:
	setscene VOLCANO_INTERIOR_5F_UPSTAIRS
	;fallthrough
VolcanoInterior5FUpstairs:
	; bottom bridge
	changeblock 14, 28, $5A
	changeblock 16, 28, $51
	changeblock 18, 28, $51
	changeblock 20, 28, $51
	changeblock 22, 28, $5B
	; top bridges
	changeblock  2, 14, $5A
	changeblock  4, 14, $51
	changeblock  6, 14, $51
	changeblock  8, 14, $51
	changeblock 10, 14, $51
	changeblock 12, 14, $51
	changeblock 14, 14, $5B
	changeblock 22, 14, $5A
	changeblock 24, 14, $51
	changeblock 26, 14, $51
	changeblock 28, 14, $51
	changeblock 30, 14, $5B
	; right bridge
	changeblock 36, 18, $60
	changeblock 36, 20, $52
	changeblock 36, 22, $52
	changeblock 36, 24, $52
	changeblock 36, 26, $62
	end

VolcanoInterior5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event x, y, map, warp_id
	warp_event 19, 33, VOLCANO_EXTERIOR, 9
	warp_event 33, 23, VOLCANO_INTERIOR_5F_HALL, 1

	def_coord_events
;	coord_event x, y, scene_id, script
	coord_event 19, 24, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 18, 32, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 19, 32, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 18, 31, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 19, 31, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 32,  8, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event  8,  2, VOLCANO_INTERIOR_5F_DOWNSTAIRS, VolcanoInterior5FUpstairsSet
	coord_event 37, 30, VOLCANO_INTERIOR_5F_DOWNSTAIRS, VolcanoInterior5FUpstairsSet
	coord_event 17, 20, VOLCANO_INTERIOR_5F_DOWNSTAIRS, VolcanoInterior5FMidstairsSet
	coord_event 32,  6, VOLCANO_INTERIOR_5F_DOWNSTAIRS, VolcanoInterior5FMidstairsSet
	coord_event 12, 10, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 35, 36, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 35, 25, VOLCANO_INTERIOR_5F_UPSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 34, 25, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet
	coord_event 35, 34, VOLCANO_INTERIOR_5F_MIDSTAIRS, VolcanoInterior5FDownstairsSet

	def_bg_events
;	bg_event x, y, type, script

	def_object_events
;	object_event x, y, sprite, movement, rx, ry, h1, h2, palette, type, range, script, event_flag
