Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartGearCity
	dw MartRouteBGate
	dw MartUnivercityBalls
	dw MartUnivercityBattle
	dw MartUnivercityHealing
	dw MartUnivercityPP
	dw MartUnivercityHeld1
	dw MartUnivercityHeld2
	dw MartUnivercityTM1
	dw MartUnivercityTM2
	dw MartUnivercityTM3
	dw MartUnivercityEvolution
	dw MartUnivercityStats
	dw MartUnivercityOverworld
	dw MartUnivercityLocal
	dw MartEeveeRanch1
	dw MartEeveeRanch2
	dw MartShadyVolcano
	dw MartMaybeVillage
	dw MartTheBetweens
	dw MartGenderClinic
	dw MartDrNuggz
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	assert_table_length NUM_MARTS

MartGearCity:
	db 10 ; # items
	db LURE_BALL
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ESCAPE_ROPE
	db REPEL
	db ETHER
	db -1 ; end

MartRouteBGate:
	db 7 ; # items
	db POKE_BALL
	db LURE_BALL
	db REPEL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db REVIVE
	db -1 ; end

MartUnivercityBalls:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db LURE_BALL
	db LEVEL_BALL
	db FAST_BALL
	db FRIEND_BALL
	db MOON_BALL
	db LOVE_BALL
	db HEAVY_BALL
	db -1 ; end

MartUnivercityBattle:
	db 7 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartUnivercityHealing:
	db 10 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db REVIVE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartUnivercityPP:
	db 5 ; # items
	db ETHER
	db MAX_ETHER
	db ELIXER
	db MAX_ELIXER
	db PP_UP
	db -1 ; end

MartUnivercityOverworld:
	db 4 ; # items
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartUnivercityStats:
	db 6 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db RARE_CANDY
	db -1 ; end

MartUnivercityLocal:
	db 4 ; # items
	db HONEY
	db GOLD_BERRY
	db BERRY_JUICE
	db BASIL
	db -1 ; end

MartUnivercityEvolution:
	db 10 ; # items
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db MOON_STONE
	db SUN_STONE
	db ICE_STONE
	db DAWN_STONE
	db BLACK_ROCK
	db LINK_CABLE
	db -1 ; end

MartUnivercityHeld1:
	db 10 ; # items
	db SILVERPOWDER
	db SOFT_SAND
	db SHARP_BEAK
	db POISON_BARB
	db MYSTIC_WATER
	db TWISTEDSPOON
	db BLACKBELT_I
	db BLACKGLASSES
	db PINK_BOW
	db EVERSTONE
	db -1 ; end

MartUnivercityHeld2:
	db 10 ; # items
	db NEVERMELTICE
	db MAGNET
	db SPELL_TAG
	db MIRACLE_SEED
	db METAL_COAT
	db DRAGON_FANG
	db POLKADOT_BOW
	db CHARCOAL
	db HARD_STONE
	db CLEANSE_TAG
	db -1 ; end

MartUnivercityTM1:
	db 9 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_THUNDERBOLT
	db TM_FLAMETHROWER
	db TM_ICE_BEAM
	db TM_THUNDER
	db TM_FIRE_BLAST
	db TM_BLIZZARD
	db -1 ; end

MartUnivercityTM2:
	db 8 ; # items
	db TM_BODY_SLAM
	db TM_HYPER_BEAM
	db TM_GIGA_IMPACT
	db TM_RETURN
	db TM_SLEEP_TALK
	db TM_DOUBLE_EDGE
	db TM_HIDDEN_POWER
	db TM_SUBSTITUTE
	db -1 ; end

MartUnivercityTM3:
	db 7 ; # items
	db TM_HAIL
	db TM_RAIN_DANCE
	db TM_SANDSTORM
	db TM_SUNNY_DAY
	db TM_HYDRO_PUMP
	db TM_SOLARBEAM
	db TM_TOXIC
	db -1 ; end

MartEeveeRanch1:
	db 8 ; # items
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db ICE_STONE
	db HONEY
	db BASIL
	db GREAT_BALL
	db -1 ; end

MartEeveeRanch2:
	db 9 ; # items
	db LOVE_STONE
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db ICE_STONE
	db HONEY
	db BASIL
	db GREAT_BALL
	db -1 ; end

MartShadyVolcano:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db SUPER_REPEL
	db FULL_HEAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db SURF_MAIL
	db EXP_SHARE
	db -1 ; end

MartMaybeVillage:
	db 7 ; # items
	db REVIVE
	db ELIXER
	db FULL_HEAL
	db FULL_RESTORE
	db DUSK_STONE
	db UP_GRADE
	db BETA_STONE
	db -1 ; end

MartTheBetweens:
	db 8 ; # items
	db ULTRA_BALL
	db FULL_RESTORE
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ETHER
	db -1 ; end

MartGenderClinic:
	db 2 ; # items
	db ESTRADIOL
	db TESTOSTERONE
	db -1 ; end

MartDrNuggz:
	db 5 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db SACRED_ASH
	db -1 ; end


MartCeladon3F:
	db 5 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db -1 ; end

MartCeladon4F:
	db 3 ; # items
	db POKE_DOLL
	db LOVELY_MAIL
	db SURF_MAIL
	db -1 ; end

MartCeladon5F1:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end

MartCeladon5F2:
	db 7 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartFuchsia:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db MAX_REPEL
	db FLOWER_MAIL
	db -1 ; end

MartSaffron:
	db 8 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db X_ATTACK
	db X_DEFEND
	db FLOWER_MAIL
	db -1 ; end

MartMtMoon:
	db 6 ; # items
	db POKE_DOLL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db REPEL
	db PORTRAITMAIL
	db -1 ; end

MartIndigoPlateau:
	db 7 ; # items
	db ULTRA_BALL
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
