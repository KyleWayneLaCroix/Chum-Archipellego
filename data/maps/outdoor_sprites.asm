; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to MAPGROUP_* constants
	table_width 2, OutdoorSprites
	dw CableClubGroupSprites
	dw BattleTowerGroupSprites
	dw NewBarkGroupSprites
	dw IndigoGroupSprites
	dw BrologueGroupSprites
	dw BrologueNorthGroupSprites
	dw MetroidGroupSprites
	DW PalAtollGroupSprites
	dw DungeonGroupSprites
	assert_table_length NUM_MAP_GROUPS


BattleTowerGroupSprites:
	db SPRITE_OLIVINE_RIVAL ; variable sprite: becomes SPRITE_RIVAL and SPRITE_SWIMMER_GUY
	db SPRITE_POKEFAN_M
	db SPRITE_LASS
	db SPRITE_BUENA
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SAILOR
	db SPRITE_POKEFAN_F
	db SPRITE_SUPER_NERD
	; 8 of max 9 walking sprites
	db SPRITE_TAUROS
	db SPRITE_FRUIT_TREE
	db SPRITE_ROCK
	db SPRITE_STANDING_YOUNGSTER ; non-walking version of SPRITE_YOUNGSTER
	db SPRITE_SUICUNE
	db 0 ; end


NewBarkGroupSprites:
	db SPRITE_RIVAL
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_MONSTER
	db SPRITE_GRAMPS
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end


CableClubGroupSprites:
	db SPRITE_BEAUTY
	; 0 of max 9 walking sprites
	db 0 ; end


IndigoGroupSprites:
	; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end


BrologueGroupSprites:
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_SWIMMER_GIRL
	db SPRITE_POKEFAN_F
	db SPRITE_FISHER
	db SPRITE_GENTLEMAN
	db SPRITE_BUG_CATCHER
	db SPRITE_LINK
	db SPRITE_YOUNGSTER
	; 9 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

MetroidGroupSprites:
	db SPRITE_BUG_CATCHER
	; 1 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end


BrologueNorthGroupSprites:
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	db SPRITE_FISHER
	db SPRITE_SURFING_PIKACHU
	db SPRITE_SURF
	db SPRITE_SABRINA
	db SPRITE_FISHING_GURU
	db SPRITE_BLACK_BELT
	db SPRITE_GRAMPS
	; 9 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

PalAtollGroupSprites:
	db SPRITE_BEAUTY
	db SPRITE_SWIMMER_GUY
	db SPRITE_RED
	db SPRITE_COOLTRAINER_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_DAISY
	db SPRITE_FISHER
	db SPRITE_GENTLEMAN
	db SPRITE_SUPER_NERD
	; 9 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

DungeonGroupSprites:
	; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end
