DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, FINNEON,     10
	db  85 percent + 1, ALOMOMOLA,   10
	db 100 percent,     MOLAMBINO,   10
.Shore_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     CLAUNCHER,     20
	db  90 percent + 1, CLAUNCHER,     20
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     CLAUNCHER,     40
	db  70 percent,     time_group 1
	db  90 percent + 1, CLAUNCHER,     40
	db 100 percent,     CLAWITZER,    40

.Ocean_Old:
	db  70 percent + 1, BARBOACH,   10
	db  85 percent + 1, CHINCHOU,   10
	db 100 percent,     SKRELP,     10
.Ocean_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     SHELLOS,  20
	db  90 percent + 1, CHINCHOU,   20
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     CHINCHOU,   40
	db  70 percent,     time_group 3
	db  90 percent + 1, GASTRODON, 40
	db 100 percent,     LANTURN,    40

.Lake_Old:
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, FINNEON,   10
	db 100 percent,     TIRTOUGA,    10
.Lake_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     FINNEON,    20
	db  90 percent + 1, FINNEON,    20
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     FINNEON,    40
	db  70 percent,     time_group 5
	db  90 percent + 1, ALOMOMOLA,   40
	db 100 percent,     LUMINEON,    40

.Pond_Old:
	db  70 percent + 1, TYMPOLE,   10
	db  85 percent + 1, LOTAD,   10
	db 100 percent,     FINNEON,    10
.Pond_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     TYMPOLE,    20
	db  90 percent + 1, TYMPOLE,    20
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     TYMPOLE,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, ALOMOMOLA,   40
	db 100 percent,     TYMPOLE,    40

.Dratini_Old:
	db  70 percent + 1, ALOMOMOLA,   10
	db  85 percent + 1, ALOMOMOLA,   10
	db 100 percent,     ALOMOMOLA,   10
.Dratini_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     ALOMOMOLA,   20
	db  90 percent + 1, ALOMOMOLA,   20
	db 100 percent,     time_group 8
.Dratini_Super:
	db  40 percent,     ALOMOMOLA,   40
	db  70 percent,     time_group 9
	db  90 percent + 1, ALOMOMOLA,   40
	db 100 percent,     BRUXISH,  40

.Qwilfish_Swarm_Old:
	db  70 percent + 1, ALOMOMOLA,   5
	db  85 percent + 1, ALOMOMOLA,   5
	db 100 percent,     MOLAMBINO,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     MOLAMBINO,   20
	db  90 percent + 1, MOLAMBINO,   20
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     MOLAMBINO,   40
	db  70 percent,     time_group 11
	db  90 percent + 1, MOLAMBINO,   40
	db 100 percent,     MOLAMBINO,   40

.Remoraid_Swarm_Old:
	db  70 percent + 1, ALOMOMOLA,   10
	db  85 percent + 1, ALOMOMOLA,   10
	db 100 percent,     GRENMAR,   10
.Remoraid_Swarm_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     GRENMAR,   20
	db  90 percent + 1, GRENMAR,   20
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super:
	db  40 percent,     GRENMAR,   40
	db  70 percent,     time_group 13
	db  90 percent + 1, GRENMAR,   40
	db 100 percent,     GRENMAR,   40

.Gyarados_Old:
	db  70 percent + 1, ALOMOMOLA,   10
	db  85 percent + 1, ALOMOMOLA,   10
	db 100 percent,     ALOMOMOLA,   10
.Gyarados_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     ALOMOMOLA,   20
	db  90 percent + 1, ALOMOMOLA,   20
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     ALOMOMOLA,   40
	db  70 percent,     time_group 15
	db  90 percent + 1, ALOMOMOLA,   40
	db 100 percent,     ALOMOMOLA,   40

.Dratini_2_Old:
	db  70 percent + 1, ALOMOMOLA,   10
	db  85 percent + 1, ALOMOMOLA,   10
	db 100 percent,     ALOMOMOLA,   10
.Dratini_2_Good:
	db  35 percent,     ALOMOMOLA,   10
	db  70 percent,     ALOMOMOLA,   10
	db  90 percent + 1, ALOMOMOLA,   10
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     ALOMOMOLA,   10
	db  70 percent,     time_group 17
	db  90 percent + 1, ALOMOMOLA,   10
	db 100 percent,     BRUXISH,  10

.WhirlIslands_Old:
	db  70 percent + 1, ALOMOMOLA,   10
	db  85 percent + 1, ALOMOMOLA,   10
	db 100 percent,     CLAUNCHER,     10
.WhirlIslands_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     CLAUNCHER,     20
	db  90 percent + 1, CLAUNCHER,     20
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     CLAUNCHER,     40
	db  70 percent,     time_group 19
	db  90 percent + 1, CLAWITZER,    40
	db 100 percent,     ANGORE,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, ALOMOMOLA,   10
	db  85 percent + 1, ALOMOMOLA,   10
	db 100 percent,     SHELLOS,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     SHELLOS,  20
	db  90 percent + 1, SHELLOS,  20
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     SHELLOS,  40
	db  70 percent,     time_group 21
	db  90 percent + 1, ALOMOMOLA,   40
	db 100 percent,     MOLAMBINO,   40

.Remoraid_Old:
	db  70 percent + 1, ALOMOMOLA,   10
	db  85 percent + 1, ALOMOMOLA,   10
	db 100 percent,     TYMPOLE,    10
.Remoraid_Good:
	db  35 percent,     ALOMOMOLA,   20
	db  70 percent,     TYMPOLE,    20
	db  90 percent + 1, TYMPOLE,    20
	db 100 percent,     time_group 6
.Remoraid_Super:
	db  40 percent,     TYMPOLE,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, ALOMOMOLA,   40
	db 100 percent,     GRENMAR,   40

TimeFishGroups:
	;  day              nite
	db MAREANIE,    20,  BARBOACH,     20 ; 0
	db MAREANIE,    40,  BARBOACH,     40 ; 1
	db TIRTOUGA,   20,  TIRTOUGA,   20 ; 2
	db TIRTOUGA,   40,  TIRTOUGA,   40 ; 3
	db FINNEON,    20,  FINNEON,    20 ; 4
	db FINNEON,    40,  FINNEON,    40 ; 5
	db TYMPOLE,    20,  TYMPOLE,    20 ; 6
	db TYMPOLE,    40,  TYMPOLE,    40 ; 7
	db SPHEAL,    20,  SPHEAL,    20 ; 8
	db SPHEAL,    40,  SPHEAL,    40 ; 9
	db MOLAMBINO,   20,  MOLAMBINO,   20 ; 10
	db MOLAMBINO,   40,  MOLAMBINO,   40 ; 11
	db GRENMAR,   20,  GRENMAR,   20 ; 12
	db GRENMAR,   40,  GRENMAR,   40 ; 13
	db MAREANIE,   20,  MAREANIE,   20 ; 14
	db MAREANIE,   40,  MAREANIE,   40 ; 15
	db SPHEAL,    10,  SPHEAL,    10 ; 16
	db SPHEAL,    10,  SPHEAL,    10 ; 17
	db SKRELP,     20,  SKRELP,     20 ; 18
	db SKRELP,     40,  SKRELP,     40 ; 19
	db SHELLOS,  20,  SHELLOS,  20 ; 20
	db SHELLOS,  40,  SHELLOS,  40 ; 21
