MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map NEW_BARK_TOWN,        TREEMON_SET_CITY
	treemon_map ROUTE_A,              TREEMON_SET_ROUTE
	treemon_map GEAR_CITY,            TREEMON_SET_CITY
	treemon_map NORTHERN_FOREST,      TREEMON_SET_FOREST
	treemon_map ROUTE_B,              TREEMON_SET_ROUTE
	db -1

RockMonMaps:
	treemon_map BATTLE_TOWER_OUTSIDE, TREEMON_SET_ROCK
	db -1
