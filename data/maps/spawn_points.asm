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
	spawn UNIVERCITY,                   15, 18
	spawn EEVEE_RANCH_EXTERIOR,         19, 34
	spawn MUSCLE_JUNGLE,                22,  8
	spawn INDIGO_PLATEAU_POKECENTER_1F,  7,  9
	spawn VOLCANO_EXTERIOR,             22, 38
	spawn MAYBE_VILLAGE,                27, 22
	spawn IVY_ROAD,                     36, 21
	spawn THE_DARK_LAB,                 15,  3
	spawn N_A,                          -1, -1

	assert_table_length NUM_SPAWNS + 1
