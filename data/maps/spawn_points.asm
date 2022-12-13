MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn AWAKENING_LAB,                 25, 3
; johto
	spawn AWAKENING_BEACH,               7, 26
	spawn GEAR_CITY,                     3, 34
	spawn CEMETARY,                      4, 12
	spawn INDIGO_PLATEAU_POKECENTER_1F,  7,  9

	spawn N_A,                          -1, -1

	assert_table_length NUM_SPAWNS + 1
