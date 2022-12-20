; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 00
	const MASTER_BALL  ; 01
	const ULTRA_BALL   ; 02
	const GREAT_BALL   ; 03
	const POKE_BALL    ; 04
	const HEAVY_BALL   ; 05
	const LEVEL_BALL   ; 06
	const LURE_BALL    ; 07
	const FAST_BALL    ; 08
	const FRIEND_BALL  ; 09
	const MOON_BALL    ; 0a
	const LOVE_BALL    ; 0b
	const PARK_BALL    ; 0c
	const POKE_DOLL    ; 0d
	const DIRE_HIT     ; 0e
	const GUARD_SPEC   ; 0f
	const X_ACCURACY   ; 10
	const X_ATTACK     ; 11
	const X_DEFEND     ; 12
	const X_SPEED      ; 13
	const X_SPECIAL    ; 14
	const ESCAPE_ROPE  ; 15
	const REPEL        ; 16
	const SUPER_REPEL  ; 17
	const MAX_REPEL    ; 18
	const BERRY        ; 19
	const GOLD_BERRY   ; 1a
	const MYSTERYBERRY ; 1b
	const MIRACLEBERRY ; 1c
	const PSNCUREBERRY ; 1d
	const PRZCUREBERRY ; 1e
	const BURNT_BERRY  ; 1f
	const ICE_BERRY    ; 20
	const BITTER_BERRY ; 21
	const MINT_BERRY   ; 22
	const RED_APRICORN ; 23
	const BLU_APRICORN ; 24
	const YLW_APRICORN ; 25
	const GRN_APRICORN ; 26
	const WHT_APRICORN ; 27
	const BLK_APRICORN ; 28
	const PNK_APRICORN ; 29
	const FIRE_STONE   ; 2a
	const THUNDERSTONE ; 2b
	const WATER_STONE  ; 2c
	const LEAF_STONE   ; 2d
	const MOON_STONE   ; 2e
	const SUN_STONE    ; 2f
	const SILVERPOWDER ; 30
	const SOFT_SAND    ; 31
	const SHARP_BEAK   ; 32
	const POISON_BARB  ; 33
	const MYSTIC_WATER ; 34
	const TWISTEDSPOON ; 35
	const BLACKBELT_I  ; 36
	const BLACKGLASSES ; 37
	const PINK_BOW     ; 38
	const NEVERMELTICE ; 39
	const MAGNET       ; 3a
	const SPELL_TAG    ; 3b
	const MIRACLE_SEED ; 3c
	const METAL_COAT   ; 3d
	const DRAGON_FANG  ; 3e
	const POLKADOT_BOW ; 3f
	const CHARCOAL     ; 40
	const HARD_STONE   ; 41
	const LUCKY_PUNCH  ; 42
	const METAL_POWDER ; 43
	const LIGHT_BALL   ; 44
	const QUICK_CLAW   ; 45
	const KINGS_ROCK   ; 46
	const BRIGHTPOWDER ; 47
	const SCOPE_LENS   ; 48
	const EXP_SHARE    ; 49
	const AMULET_COIN  ; 4a
	const FOCUS_BAND   ; 4b
	const LUCKY_EGG    ; 4c
	const LEFTOVERS    ; 4d
	const BERSERK_GENE ; 4e
	const CLEANSE_TAG  ; 4f
	const SMOKE_BALL   ; 50
	const EVERSTONE    ; 51
	const UP_GRADE     ; 52
	const DRAGON_SCALE ; 53
	const BERRY_JUICE  ; 54
	const FRESH_WATER  ; 55
	const SODA_POP     ; 56
	const LEMONADE     ; 57
	const RARE_CANDY   ; 58
	const ANTIDOTE     ; 59
	const BURN_HEAL    ; 5a
	const ICE_HEAL     ; 5b
	const AWAKENING    ; 5c
	const PARLYZ_HEAL  ; 5d
	const FULL_HEAL    ; 5e
	const FULL_RESTORE ; 5f
	const MAX_POTION   ; 60
	const HYPER_POTION ; 61
	const SUPER_POTION ; 62
	const POTION       ; 63
	const ELIXER       ; 64
	const MAX_ELIXER   ; 65
	const ETHER        ; 66
	const MAX_ETHER    ; 67
	const HONEY        ; 68
	const BASIL        ; 69
	const ENERGYPOWDER ; 6a
	const ENERGY_ROOT  ; 6b
	const HEAL_POWDER  ; 6c
	const REVIVAL_HERB ; 6d
	const REVIVE       ; 6e
	const MAX_REVIVE   ; 6f
	const SACRED_ASH   ; 70
	const HP_UP        ; 71
	const PROTEIN      ; 72
	const IRON         ; 73
	const CARBOS       ; 74
	const CALCIUM      ; 75
	const PP_UP        ; 76
	const TINYMUSHROOM ; 77
	const BIG_MUSHROOM ; 78
	const PEARL        ; 79
	const BIG_PEARL    ; 7a
	const STARDUST     ; 7b
	const STAR_PIECE   ; 7c
	const NUGGET       ; 7d
	const BRICK_PIECE  ; 7e
	const STICK        ; 7f
	const THICK_CLUB   ; 80
	const SILVER_LEAF  ; 81
	const GOLD_LEAF    ; 82
	const SLOWPOKETAIL ; 83
	const BICYCLE      ; 84
	const COIN_CASE    ; 85
	const ITEMFINDER   ; 86
	const OLD_ROD      ; 87
	const GOOD_ROD     ; 88
	const SUPER_ROD    ; 89
	const RED_SCALE    ; 8a
	const SECRETPOTION ; 8b
	const S_S_TICKET   ; 8c
	const MYSTERY_EGG  ; 8d
	const CLEAR_BELL   ; 8e
	const SILVER_WING  ; 8f
	const GS_BALL      ; 90
	const BLUE_CARD    ; 91
	const CARD_KEY     ; 92
	const MACHINE_PART ; 93
	const EGG_TICKET   ; 94
	const LOST_ITEM    ; 95
	const BASEMENT_KEY ; 96
	const PASS         ; 97
	const SQUIRTBOTTLE ; 98
	const RAINBOW_WING ; 99
	const FLOWER_MAIL  ; 9a
	const SURF_MAIL    ; 9b
	const LITEBLUEMAIL ; 9c
	const PORTRAITMAIL ; 9d
	const LOVELY_MAIL  ; 9e
	const EON_MAIL     ; 9f
	const MORPH_MAIL   ; a0
	const BLUESKY_MAIL ; a1
	const MUSIC_MAIL   ; a2
	const MIRAGE_MAIL  ; a3
	const NORMAL_BOX   ; a4
	const GORGEOUS_BOX ; a5
	const FOAMPOSITES  ; a6
	const LINK_CABLE   ; a7
	const DUSK_STONE   ; a8
	const ICE_STONE    ; a9
	const LOVE_STONE   ; aa
	const TESTOSTERONE ; ab
	const ESTRADIOL    ; ac
	const BLACK_ROCK   ; ad
	const DAWN_STONE   ; ae
	const TART_APPLE   ; af
	const SWEET_APPLE  ; b0
	const CHAINSAW     ; b1
	const PDA          ; b2
	const ITEM_B3      ; b3
	const ITEM_B4      ; b4
	const ITEM_B5      ; b5
	const ITEM_B6      ; b6
	const ITEM_B7      ; b7
	const ITEM_B8      ; b8
	const ITEM_B9      ; b9
	const ITEM_BA      ; ba
	const ITEM_BB      ; bb
	const ITEM_BC      ; bc
	const ITEM_BD      ; bd
	const ITEM_BE      ; be
	const ITEM_BF      ; bf
	const ITEM_C0      ; c0
DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm BITE         ; c1
	add_tm BLIZZARD     ; c2
	add_tm BODY_SLAM    ; c3
	add_tm CALM_MIND    ; c4
	add_tm DARK_PULSE   ; c5
	add_tm DAZZLE_BEAM  ; c6
	add_tm DIG          ; c7
	add_tm DOUBLE_EDGE  ; c8
	add_tm EARTHQUAKE   ; c9
	add_tm ENERGY_BALL  ; ca
	add_tm FIRE_BLAST   ; cb
	add_tm FIRE_PUNCH   ; cc
	add_tm FLAMETHROWER ; cd
	add_tm GIGA_DRAIN   ; ce
	add_tm GIGA_IMPACT  ; cf
	add_tm HAIL         ; d0
	add_tm HEADBUTT     ; d1
	add_tm HIDDEN_POWER ; d2
	add_tm HYDRO_PUMP   ; d3
	add_tm HYPER_BEAM   ; d4
	add_tm HYPER_VOICE  ; d5
	add_tm ICE_BEAM     ; d6
	add_tm ICE_PUNCH    ; d7
	add_tm IRON_HEAD    ; d8
	add_tm MOONBLAST    ; d9
	add_tm NIGHT_SLASH  ; da
	add_tm OMINOUS_WIND ; db
	add_tm PLAY_ROUGH   ; dc
	add_tm POISON_JAB   ; dd
	add_tm SLEEP_TALK   ; de
	add_tm PSYBEAM      ; df
	add_tm PSYCHIC_M    ; e0
	add_tm RAIN_DANCE   ; e1
	add_tm RETURN       ; e2
	add_tm ROCK_SLIDE   ; e3
	add_tm SANDSTORM    ; e4
	add_tm SHADOW_BALL  ; e5
	add_tm SHOCK_WAVE   ; e6
	add_tm SIGNAL_BEAM  ; e7
	add_tm SOLARBEAM    ; e8
	add_tm SUBMISSION   ; e9
	add_tm SUBSTITUTE   ; ea
	add_tm SUNNY_DAY    ; eb
	add_tm SWIFT        ; ec
	add_tm THUNDER      ; ed
	add_tm THUNDERBOLT  ; ee
	add_tm THUNDERPUNCH ; ef
	add_tm TOXIC        ; f0
	add_tm WATER_PULSE  ; f1
	add_tm ZEN_HEADBUTT ; f2

DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; f3
	add_hm FLY          ; f4
	add_hm SURF         ; f5
	add_hm STRENGTH     ; f6
	add_hm FLASH        ; f7
	add_hm WHIRLPOOL    ; f8
	add_hm WATERFALL    ; f9
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt POISON_GAS
	add_mt SEED_BOMB
	add_mt DREAM_EATER
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

	const ITEM_FA       ; fa

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ff

; leftovers from red
DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
