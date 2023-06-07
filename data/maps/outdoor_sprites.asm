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
	dw PalAtollGroupSprites
	dw EeveeRanchGroupSprites
	dw JungleAreaGroupSprites
	dw LinksAwakeningGroupSprites
	dw IvyRoadGroupSprites
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
	db SPRITE_BUG_CATCHER
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

EeveeRanchGroupSprites:
	db SPRITE_RED
	; 1 of max 9 walking sprites
	db SPRITE_EEVEE
	db SPRITE_VAPOREON
	db SPRITE_JOLTEON
	db SPRITE_FLAREON
	db SPRITE_ESPEON
	db SPRITE_UMBREON
	db SPRITE_GLACEON
	db SPRITE_LEAFEON
	db SPRITE_SYLVEON
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

JungleAreaGroupSprites:
	db SPRITE_BRUNO
	db SPRITE_BUG_CATCHER
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_BLACK_BELT
	db SPRITE_ROCKER
	; 7 of max 9 walking sprites
	db SPRITE_BIG_ONIX
	db SPRITE_M_BLOCK
	db SPRITE_POKE_BALL
	db SPRITE_ROCK
	db SPRITE_FRUIT_TREE
	db 0 ; end

LinksAwakeningGroupSprites:
	db SPRITE_CHOMP
	db SPRITE_OCTOROK
	db SPRITE_CUCCO
	db SPRITE_LA_YOUNGSTER
	db SPRITE_MOBLIN
	db SPRITE_CRAB
	db SPRITE_GEL
	db SPRITE_LA_GUY
	db SPRITE_LA_GIRL
	; 9 of max 9 walking sprites
	db SPRITE_KAEPORA
	db SPRITE_LA_GRANNY
	db SPRITE_FRUIT_TREE
	db SPRITE_SWORD
	db SPRITE_ROCK
	db 0 ; end

IvyRoadGroupSprites:
	db SPRITE_RED
	; 1 of max 9 walking sprites
	db SPRITE_DOG
	db SPRITE_FOX
	db SPRITE_JOLTEON
	db SPRITE_FLAREON
	db SPRITE_ESPEON
	db SPRITE_UMBREON
	db SPRITE_GLACEON
	db SPRITE_LEAFEON
	db SPRITE_SYLVEON
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

DungeonGroupSprites:
	; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end
