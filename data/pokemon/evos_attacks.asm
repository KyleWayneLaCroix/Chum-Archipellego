SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"
SpirripEvosAttacks:
	db EVOLVE_LEVEL, 18, DOOMSTONE
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, TACKLE
	db 5, SCREECH
	db 8, HARDEN
	db 10, NIGHT_SHADE
	db 12, ROCK_THROW
	db 17, DIG
	db 20, BONEMERANG
	db 24, ROCK_SLIDE
	db 28, SHADOW_CLAW
	db 32, BULLDOZE
	db 35, BODY_SLAM
	db 38, ROCK_BLAST
	db 41, SANDSTORM
	db 45, EARTH_POWER
	db 50, GRAVE_SMASH
	db 53, EXPLOSION
	db 0 ; no more level-up moves

DoomstoneEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, CRYPTIID
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, BONEMERANG
	db 1, ROCK_SLIDE
	db 1, SHADOW_CLAW
	db 22, BONEMERANG
	db 26, ROCK_SLIDE
	db 30, SHADOW_CLAW
	db 34, BULLDOZE
	db 37, BODY_SLAM
	db 40, ROCK_BLAST
	db 43, SANDSTORM
	db 47, EARTH_POWER
	db 52, GRAVE_SMASH
	db 55, EXPLOSION
	db 57, GIGA_IMPACT
	db 0 ; no more level-up moves

CryptiidEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, BONEMERANG
	db 1, ROCK_SLIDE
	db 1, SHADOW_CLAW
	db 49, EARTH_POWER
	db 54, GRAVE_SMASH
	db 57, EXPLOSION
	db 59, GIGA_IMPACT
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	db EVOLVE_LEVEL, 34, LAMPENT
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, EMBER
	db 3, MINIMIZE
	db 4, SMOG
	db 9, FIRE_SPIN
	db 10, CONFUSE_RAY
	db 15, NIGHT_SHADE
	db 16, SINGE
	db 20, FLAMETHROWER
	db 24, DISABLE
	db 26, OMINOUS_WIND
	db 36, EXPLOSION
	db 41, CURSE
	db 47, SHADOW_BALL
	db 54, PAIN_SPLIT
	db 59, FIRE_BLAST
	db 0 ; no more level-up moves

LampentEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, CHANDELURE
	db 0 ; no more evolutions
	db 1, SINGE
	db 1, FLAMETHROWER
	db 1, OMINOUS_WIND
	db 1, DISABLE
	db 37, EXPLOSION
	db 43, CURSE
	db 50, SHADOW_BALL
	db 59, PAIN_SPLIT
	db 67, FIRE_BLAST
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_BLAST
	db 1, FLAMETHROWER
	db 1, NIGHT_SHADE
	db 1, OMINOUS_WIND
	db 0 ; no more level-up moves

RookideeEvosAttacks:
	db EVOLVE_LEVEL, 18, CORVISQUIRE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 8, HONE_CLAWS
	db 12, FURY_STRIKES
	db 14, WING_ATTACK
	db 16, FAINT_ATTACK
	db 20, STEEL_WING
	db 27, SCARY_FACE
	db 32, SWAGGER
	db 36, DRILL_PECK
	db 24, METAL_CLAW
	db 0 ; no more level-up moves

CorvisquireEvosAttacks:
	db EVOLVE_LEVEL, 38, CORVIKNIGHT
	db 0 ; no more evolutions
	db 1, HONE_CLAWS
	db 1, WING_ATTACK
	db 1, FURY_STRIKES
	db 1, FAINT_ATTACK
	db 22, STEEL_WING
	db 26, METAL_CLAW
	db 28, SCARY_FACE
	db 40, SWAGGER
	db 46, DRILL_PECK
	db 0 ; no more level-up moves

CorviknightEvosAttacks:
	db 0 ; no more evolutions
	db 1, STEEL_WING
	db 1, WING_ATTACK
	db 1, METAL_CLAW
	db 1, SCARY_FACE
	db 42, SWAGGER
	db 50, DRILL_PECK
	db 0 ; no more level-up moves

FarfetchdEvosAttacks:
	db EVOLVE_ITEM, ESTRADIOL, LUXWAN
	db EVOLVE_ITEM, TESTOSTERONE, SIRFETCHD
	db 0 ; no more evolutions
	db 1, MIRROR_MOVE
	db 1, PECK
	db 6, QUICK_ATTACK
	db 9, FOCUS_ENERGY
	db 12, FURY_STRIKES
	db 13, RAZOR_LEAF
	db 14, AERIAL_ACE
	db 15, FAINT_ATTACK
	db 21, AIR_CUTTER
	db 27, SWORDS_DANCE
	db 29, SLASH
	db 32, AGILITY
	db 33, NIGHT_SLASH
	db 40, DRILL_PECK
	db 43, AIR_SLASH
	db 44, FALSE_SWIPE
	db 55, LEAF_BLADE
	db 0 ; no more level-up moves

LuxwanEvosAttacks:
	db EVOLVE_ITEM, TESTOSTERONE, SIRFETCHD
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SMOKESCREEN
	db 15, ROCK_SMASH
	db 20, NIGHT_SLASH
	db 25, PROTECT
	db 30, FAINT_ATTACK
	db 35, MIST
	db 45, SWORDS_DANCE
	db 50, STRENGTH
	db 55, LEAF_BLADE
	db 65, DRILL_PECK
	db 70, CROSS_CHOP
	db 0 ; no more level-up moves

SirfetchdEvosAttacks:
	db EVOLVE_ITEM, ESTRADIOL, LUXWAN
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 1, SMOKESCREEN
	db 15, ROCK_SMASH
	db 20, NIGHT_SLASH
	db 25, PROTECT
	db 30, FAINT_ATTACK
	db 35, MIST
	db 45, SWORDS_DANCE
	db 50, STRENGTH
	db 55, LEAF_BLADE
	db 65, DRILL_PECK
	db 70, CROSS_CHOP
	db 0 ; no more level-up moves

YungoosEvosAttacks:
	db EVOLVE_LEVEL, 20, GUMSHOOS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 7, PURSUIT
	db 10, SMOKESCREEN
	db 16, BIDE
	db 19, BITE
	db 22, MUD_SLAP
	db 25, SUPER_FANG
	db 28, TAKE_DOWN
	db 31, SCARY_FACE
	db 34, CRUNCH
	db 37, HYPER_FANG
	db 40, HYPNOSIS
	db 43, THRASH
	db 46, REST
	db 0 ; no more level-up moves

GumshoosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PURSUIT
	db 1, BIDE
	db 1, BITE
	db 23, MUD_SLAP
	db 27, SUPER_FANG
	db 31, TAKE_DOWN
	db 35, SCARY_FACE
	db 39, CRUNCH
	db 43, HYPER_FANG
	db 47, HYPNOSIS
	db 51, THRASH
	db 55, REST
	db 0 ; no more level-up moves

WoolooEvosAttacks:
	db EVOLVE_LEVEL, 24, DUBWOOL
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 8, MIRROR_MOVE
	db 12, SAFEGUARD
	db 16, DOUBLE_KICK
	db 21, HEADBUTT
	db 25, TAKE_DOWN
	db 28, PSYCH_UP
	db 32, REVERSAL
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

DubwoolEvosAttacks:
	db 0 ; no more evolutions
	db 1, MIRROR_MOVE
	db 1, SAFEGUARD
	db 1, DOUBLE_KICK
	db 1, HEADBUTT
	db 27, TAKE_DOWN
	db 32, PSYCH_UP
	db 38, REVERSAL
	db 44, LIGHT_SCREEN
	db 50, DOUBLE_EDGE
	db 56, EXPLOSION
	db 0 ; no more level-up moves

YamperEvosAttacks:
	db EVOLVE_LEVEL, 25, BOLTUND
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 10, BITE
	db 15, ROAR
	db 20, SPARK
	db 26, CHARM
	db 30, CRUNCH
	db 40, WILD_CHARGE
	db 45, PLAY_ROUGH
	db 0 ; no more level-up moves

BoltundEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TACKLE
	db 1, ROAR
	db 1, SPARK
	db 28, CHARM
	db 34, CRUNCH
	db 48, WILD_CHARGE
	db 55, PLAY_ROUGH
	db 62, ZAP_CANNON
	db 0 ; no more level-up moves

EmolgaEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 4, QUICK_ATTACK
	db 6, LEER
	db 15, SPARK
	db 16, PURSUIT
	db 17, DOUBLE_TEAM
	db 22, SHOCK_WAVE
	db 29, AERIAL_ACE
	db 35, LIGHT_SCREEN
	db 37, ENCORE
	db 47, AGILITY
	db 0 ; no more level-up moves

GrubbinEvosAttacks:
	db EVOLVE_LEVEL, 20, CHARJABUG
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 4, STRING_SHOT
	db 5, MUD_SLAP
	db 11, BITE
	db 12, STRUGGLE_BUG
	db 17, SPARK
	db 19, AERIAL_ACE
	db 24, CRUNCH
	db 25, MEAN_LOOK
	db 26, X_SCISSOR
	db 32, DIG
	db 0 ; no more level-up moves

CharjabugEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, VIKAVOLT
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, BITE
	db 1, STRUGGLE_BUG
	db 1, SPARK
	db 29, MEAN_LOOK
	db 31, CRUNCH
	db 32, X_SCISSOR
	db 41, DIG
	db 50, SHOCK_WAVE
	db 0 ; no more level-up moves

VikavoltEvosAttacks:
	db 0 ; no more evolutions
	db 1, AIR_SLASH
	db 1, THUNDERBOLT
	db 1, X_SCISSOR
	db 1, BITE
	db 25, DIG
	db 31, MEGAHORN
	db 32, BUG_BUZZ
	db 48, ZAP_CANNON
	db 50, FLY
	db 0 ; no more level-up moves

BlipbugEvosAttacks:
	db EVOLVE_LEVEL, 10, DOTTLER
	db 0 ; no more evolutions
	db 1, STRUGGLE_BUG
	db 6, REFLECT
	db 9, CONFUSION
	db 0 ; no more level-up moves

DottlerEvosAttacks:
	db EVOLVE_LEVEL, 30, ORBEETLE
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, REFLECT
	db 1, STRUGGLE_BUG
	db 10, LIGHT_SCREEN
	db 12, AGILITY
	db 16, PSYBEAM
	db 20, HYPNOSIS
	db 28, BUG_BUZZ
	db 0 ; no more level-up moves

OrbeetleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 1, PSYBEAM
	db 1, BUG_BUZZ
	db 32, MIRROR_COAT
	db 36, PSYCHIC_M
	db 44, CALM_MIND
	db 0 ; no more level-up moves

SizzlipedeEvosAttacks:
	db EVOLVE_LEVEL, 28, CENTISKORCH
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SMOKESCREEN
	db 5, WRAP
	db 10, BITE
	db 15, FLAME_WHEEL
	db 20, STRUGGLE_BUG
	db 25, BARRIER
	db 30, STRENGTH
	db 35, FIRE_SPIN
	db 40, CRUNCH
	db 45, FIRE_LASH
	db 50, X_SCISSOR
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

CentiskorchEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, FLAME_WHEEL
	db 1, STRUGGLE_BUG
	db 1, BARRIER
	db 32, STRENGTH
	db 39, FIRE_SPIN
	db 46, CRUNCH
	db 53, FIRE_LASH
	db 60, X_SCISSOR
	db 67, FIRE_BLAST
	db 0 ; no more level-up moves

SnomEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, FROSMOTH
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, STRUGGLE_BUG
	db 0 ; no more level-up moves

FrosmothEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, ICY_WIND
	db 1, POWDER_SNOW
	db 1, STRUGGLE_BUG
	db 4, STUN_SPORE
	db 12, MIST
	db 21, CHARM
	db 24, AURORA_BEAM
	db 28, HAIL
	db 32, BUG_BUZZ
	db 36, LIGHT_SCREEN
	db 40, BLIZZARD
	db 44, AGILITY
	db 48, PROTECT
	db 0 ; no more level-up moves

AronEvosAttacks:
	db EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 6, MUD_SLAP
	db 9, HEADBUTT
	db 11, BULLDOZE
	db 12, METAL_CLAW
	db 19, ROAR
	db 23, BARRIER
	db 24, ROCK_SLIDE
	db 25, TAKE_DOWN
	db 26, IRON_HEAD
	db 28, PROTECT
	db 34, IRON_TAIL
	db 35, SCREECH
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

LaironEvosAttacks:
	db EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	db 1, ROCK_SLIDE
	db 1, TAKE_DOWN
	db 1, PROTECT
	db 1, IRON_HEAD
	db 37, IRON_TAIL
	db 38, SCREECH
	db 46, AGILITY
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_SLIDE
	db 1, PROTECT
	db 1, IRON_TAIL
	db 1, SCREECH
	db 50, AGILITY
	db 60, DOUBLE_EDGE
	db 0 ; no more level-up moves

NoibatEvosAttacks:
	db EVOLVE_LEVEL, 48, NOIVERN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, SUPERSONIC
	db 3, LEECH_LIFE
	db 8, SCREECH
	db 9, GUST
	db 12, DOUBLE_TEAM
	db 14, BITE
	db 16, WING_ATTACK
	db 18, AGILITY
	db 23, AIR_CUTTER
	db 30, RECOVER
	db 31, AEROBLAST
	db 37, ROAR
	db 40, SUPER_FANG
	db 45, AIR_SLASH
	db 0 ; no more level-up moves

NoivernEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_PULSE
	db 1, AEROBLAST
	db 1, AGILITY
	db 1, HYPER_VOICE
	db 49, AIR_SLASH
	db 0 ; no more level-up moves

WoobatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SWOOBAT
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 7, GUST
	db 14, ZEN_HEADBUTT
	db 19, DISABLE
	db 20, AIR_CUTTER
	db 21, ATTRACT
	db 29, AMNESIA
	db 31, CALM_MIND
	db 32, AIR_SLASH
	db 38, FUTURE_SIGHT
	db 40, PSYCHIC_M
	db 0 ; no more level-up moves

SwoobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 4, GUST
	db 7, ZEN_HEADBUTT
	db 19, DISABLE
	db 20, AIR_CUTTER
	db 21, ATTRACT
	db 29, AMNESIA
	db 31, CALM_MIND
	db 32, AIR_SLASH
	db 38, FUTURE_SIGHT
	db 40, PSYCHIC_M
	db 41, PAIN_SPLIT
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	db EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, CONFUSION
	db 8, DISRMNGVOICE
	db 9, DOUBLE_TEAM
	db 12, TELEPORT
	db 18, PSYBEAM
	db 19, MAGICAL_LEAF
	db 21, RECOVER
	db 23, CALM_MIND
	db 28, PSYCHIC_M
	db 31, DISABLE
	db 35, FUTURE_SIGHT
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	db EVOLVE_LEVEL, 30, GARDEVOIR
	db EVOLVE_ITEM, DAWN_STONE, GALLADE
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DOUBLE_TEAM
	db 1, DISRMNGVOICE
	db 1, MAGICAL_LEAF
	db 20, PSYBEAM
	db 25, CALM_MIND
	db 27, RECOVER
	db 30, PSYCHIC_M
	db 34, DISABLE
	db 41, FUTURE_SIGHT
	db 43, CHARM
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISRMNGVOICE
	db 1, PSYBEAM
	db 1, MAGICAL_LEAF
	db 1, CALM_MIND
	db 30, MOONBLAST
	db 32, PSYCHIC_M
	db 37, DISABLE
	db 45, FUTURE_SIGHT
	db 52, MEAN_LOOK
	db 0 ; no more level-up moves

GalladeEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEAF_BLADE
	db 1, NIGHT_SLASH
	db 1, SLASH
	db 1, AERIAL_ACE
	db 22, REFLECT
	db 25, RECOVER
	db 28, SWORDS_DANCE
	db 31, PROTECT
	db 32, BATON_PASS
	db 33, ZEN_HEADBUTT
	db 38, PURSUIT
	db 40, SUBMISSION
	db 44, FALSE_SWIPE
	db 0 ; no more level-up moves

HatennaEvosAttacks:
	db EVOLVE_LEVEL, 32, HATTREM
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, CONFUSION
	db 1, RECOVER
	db 10, DISRMNGVOICE
	db 15, HEAL_BELL
	db 20, PSYBEAM
	db 25, AGILITY
	db 30, DAZZLE_BEAM
	db 35, CALM_MIND
	db 40, PSYCHIC_M
	db 45, BATON_PASS
	db 50, MOONBLAST
	db 0 ; no more level-up moves

HattremEvosAttacks:
	db EVOLVE_LEVEL, 42, HATTERENE
	db 0 ; no more evolutions
	db 1, DISRMNGVOICE
	db 1, PSYBEAM
	db 1, AGILITY
	db 1, DAZZLE_BEAM
	db 35, CALM_MIND
	db 40, PSYCHIC_M
	db 45, BATON_PASS
	db 50, MOONBLAST
	db 0 ; no more level-up moves

HattereneEvosAttacks:
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, DAZZLE_BEAM
	db 1, CALM_MIND
	db 1, PSYCHIC_M
	db 45, BATON_PASS
	db 50, MOONBLAST
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	db EVOLVE_LEVEL, 20, LINOONE
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, LEER
	db 9, HEADBUTT
	db 11, SMOKESCREEN
	db 12, CHARM
	db 20, MUD_SLAP
	db 23, TWINEEDLE
	db 26, FAINT_ATTACK
	db 29, TAKE_DOWN
	db 32, FLAIL
	db 35, REST
	db 36, DOUBLE_EDGE
	db 40, BELLY_DRUM
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db EVOLVE_LEVEL, 35, OBSTAGOON
	db 0 ; no more evolutions
	db 1, PLAY_ROUGH
	db 1, TWINEEDLE
	db 1, HEADBUTT
	db 1, HONE_CLAWS
	db 21, MUD_SLAP
	db 26, FURY_STRIKES
	db 28, TAKE_DOWN
	db 31, FAINT_ATTACK
	db 35, SLASH
	db 37, FLAIL
	db 38, DOUBLE_EDGE
	db 45, REST
	db 51, BELLY_DRUM
	db 0 ; no more level-up moves

ObstagoonEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, LEER
	db 1, NIGHT_SLASH
	db 1, SUBMISSION
	db 35, SCARY_FACE
	db 42, COUNTER
	db 49, ENCORE
	db 56, DOUBLE_EDGE
	db 0 ; no more level-up moves

MudbrayEvosAttacks:
	db EVOLVE_LEVEL, 30, MUDSDALE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, ROCK_SMASH
	db 8, MUD_SLAP
	db 10, BULLDOZE
	db 12, DOUBLE_KICK
	db 16, STOMP
	db 20, BARRIER
	db 22, BIDE
	db 23, STRENGTH
	db 31, IRON_HEAD
	db 32, COUNTER
	db 37, EARTHQUAKE
	db 42, HI_JUMP_KICK
	db 44, CROSS_CHOP
	db 0 ; no more level-up moves

MudsdaleEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, ROCK_SMASH
	db 1, BULLDOZE
	db 1, DOUBLE_KICK
	db 34, IRON_HEAD
	db 36, COUNTER
	db 44, EARTHQUAKE
	db 52, HI_JUMP_KICK
	db 57, CROSS_CHOP
	db 0 ; no more level-up moves

DeerlingEvosAttacks:
	db EVOLVE_LEVEL, 34, SAWSBUCK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 10, DOUBLE_KICK
	db 13, LEECH_SEED
	db 16, FAINT_ATTACK
	db 20, TAKE_DOWN
	db 24, ROLLING_KICK
	db 28, HEAL_BELL
	db 32, ENERGY_BALL
	db 36, ZEN_HEADBUTT
	db 40, DOUBLE_EDGE
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

SawsbuckEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, ROLLING_KICK
	db 1, ENERGY_BALL
	db 34, MEGAHORN
	db 38, ZEN_HEADBUTT
	db 52, DOUBLE_EDGE
	db 60, SOLARBEAM
	db 0 ; no more level-up moves

RockruffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, LYCANROC_MIDDAY
	db EVOLVE_HAPPINESS, TR_NITE, LYCANROC_DUSK
	db EVOLVE_ITEM, MOON_STONE, LYCANROC_MIDNIGHT
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, DOUBLE_TEAM
	db 11, BITE
	db 14, ROCK_THROW
	db 23, BULLDOZE
	db 26, ROAR
	db 33, ROCK_SLIDE
	db 34, STONE_EDGE
	db 36, SCARY_FACE
	db 38, CRUNCH
	db 0 ; no more level-up moves

Lycanroc_middayEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_TEAM
	db 1, PURSUIT
	db 1, ROCK_THROW
	db 2, SMOKESCREEN
	db 7, BITE
	db 23, BULLDOZE
	db 27, ROAR
	db 34, ROCK_SLIDE
	db 37, STONE_EDGE
	db 40, SCARY_FACE
	db 41, CRUNCH
	db 0 ; no more level-up moves

Lycanroc_duskEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_TEAM
	db 1, METAL_CLAW
	db 1, ROCK_THROW
	db 1, THRASH
	db 2, SMOKESCREEN
	db 9, BITE
	db 23, BULLDOZE
	db 28, ROAR
	db 35, ROCK_SLIDE
	db 40, CRUNCH
	db 41, STONE_EDGE
	db 42, SCARY_FACE
	db 0 ; no more level-up moves

Lycanroc_midnightEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_TEAM
	db 2, SMOKESCREEN
	db 7, BITE
	db 14, ROCK_THROW
	db 23, BULLDOZE
	db 27, ROAR
	db 34, ROCK_SLIDE
	db 37, STONE_EDGE
	db 40, SCARY_FACE
	db 41, CRUNCH
	db 0 ; no more level-up moves

BarboachEvosAttacks:
	db EVOLVE_LEVEL, 30, WHISCASH
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 6, WATER_GUN
	db 13, MUD_BOMB
	db 18, AMNESIA
	db 19, WATER_PULSE
	db 21, MAGNITUDE
	db 25, REST
	db 26, SNORE
	db 31, WATERFALL
	db 34, SCALD
	db 36, EARTHQUAKE
	db 39, FUTURE_SIGHT
	db 44, FISSURE
	db 0 ; no more level-up moves

WhiscashEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_BOMB
	db 1, WATER_PULSE
	db 1, REST
	db 1, SNORE
	db 34, WATERFALL
	db 37, SCALD
	db 39, EARTHQUAKE
	db 47, FUTURE_SIGHT
	db 55, FISSURE
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, LICK
	db 1, SMOG
	db 3, HYPNOSIS
	db 6, SPITE
	db 7, POISON_GAS
	db 12, MEAN_LOOK
	db 14, CURSE
	db 16, SINGE
	db 20, NIGHT_SHADE
	db 24, CONFUSE_RAY
	db 28, TOXIC
	db 30, SHADOW_BALL
	db 34, DREAM_EATER
	db 36, DARK_PULSE
	db 38, DESTINY_BOND
	db 40, OMINOUS_WIND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_ITEM, LINK_CABLE, GENGAR
	db 0 ; no more evolutions
	db 1, SINGE
	db 1, NIGHT_SHADE
	db 1, CONFUSE_RAY
	db 1, TOXIC
	db 26, PURSUIT
	db 27, SHADOW_CLAW
	db 35, SHADOW_BALL
	db 39, DREAM_EATER
	db 43, DARK_PULSE
	db 48, DESTINY_BOND
	db 50, OMINOUS_WIND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MEGA_GENGAR
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, NIGHT_SHADE
	db 1, SHADOW_CLAW
	db 1, CONFUSE_RAY
	db 21, TOXIC
	db 26, PURSUIT
	db 35, SHADOW_BALL
	db 39, DREAM_EATER
	db 43, DARK_PULSE
	db 48, DESTINY_BOND
	db 50, OMINOUS_WIND
	db 0 ; no more level-up moves

Mega_gengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, TOXIC
	db 1, SHADOW_BALL
	db 1, DARK_PULSE
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db EVOLVE_ITEM, TART_APPLE, M_BLOCK
	db EVOLVE_ITEM, SWEET_APPLE, BAD_EGG
	db EVOLVE_ITEM, LINK_CABLE, FURIOUSB
	db EVOLVE_ITEM, LOVE_STONE, KIRBY
	db EVOLVE_ITEM, DAWN_STONE, POPPY
	db EVOLVE_ITEM, MOON_STONE, DAISY
	db EVOLVE_HAPPINESS, TR_ANYTIME, UNOWN
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 36, GLITCH_M
	db 18, TRI_ATTACK
	db 36, GRAVE_SMASH
	db 0 ; no more level-up moves

DwebbleEvosAttacks:
	db EVOLVE_LEVEL, 34, CRUSTLE
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 6, DEFENSE_CURL
	db 8, ROCK_BLAST
	db 9, SMOKESCREEN
	db 13, FAINT_ATTACK
	db 21, STRUGGLE_BUG
	db 22, AGILITY
	db 28, ROCK_SLIDE
	db 29, SLASH
	db 35, X_SCISSOR
	db 37, FLAIL
	db 38, DRAGON_DANCE
	db 43, STONE_EDGE
	db 0 ; no more level-up moves

CrustleEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_BLAST
	db 1, DRAGON_DANCE
	db 1, ROCK_SLIDE
	db 1, SLASH
	db 38, X_SCISSOR
	db 45, FLAIL
	db 55, STONE_EDGE
	db 0 ; no more level-up moves

LotadEvosAttacks:
	db EVOLVE_LEVEL, 14, LOMBRE
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 2, GROWL
	db 5, LEECH_LIFE
	db 6, WATER_GUN
	db 9, BUBBLE
	db 13, TRI_ATTACK
	db 14, HIDDEN_POWER
	db 16, FLAIL
	db 23, BUBBLEBEAM
	db 26, MEGA_DRAIN
	db 29, GIGA_DRAIN
	db 31, ZEN_HEADBUTT
	db 32, RAIN_DANCE
	db 41, ENERGY_BALL
	db 0 ; no more level-up moves

LombreEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, LUDICOLO
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, BUBBLE
	db 1, MEGA_DRAIN
	db 14, TRI_ATTACK
	db 17, FURY_STRIKES
	db 24, BUBBLEBEAM
	db 27, FAINT_ATTACK
	db 35, ZEN_HEADBUTT
	db 36, GIGA_DRAIN
	db 37, HYPER_VOICE
	db 43, RAIN_DANCE
	db 47, HYDRO_PUMP
	db 57, ENERGY_BALL
	db 0 ; no more level-up moves

LudicoloEvosAttacks:
	db 0 ; no more evolutions
	db 1, ENERGY_BALL
	db 1, GIGA_DRAIN
	db 1, HYDRO_PUMP
	db 1, RAIN_DANCE
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, SPLASH
	db 4, RECOVER
	db 9, TACKLE
	db 10, FAIRY_WIND
	db 12, POISON_GAS
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 19, SEED_BOMB
	db 21, LEECH_SEED
	db 27, MEGA_DRAIN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, FAIRY_WIND
	db 1, POISON_GAS
	db 1, SLEEP_POWDER
	db 20, SEED_BOMB
	db 23, LEECH_SEED
	db 31, MEGA_DRAIN
	db 32, AERIAL_ACE
	db 36, POISONPOWDER
	db 49, GIGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, STUN_SPORE
	db 1, SLEEP_POWDER
	db 1, SEED_BOMB
	db 34, AERIAL_ACE
	db 35, MEGA_DRAIN
	db 39, POISONPOWDER
	db 49, HEAL_BELL
	db 54, GIGA_DRAIN
	db 63, EXPLOSION
	db 0 ; no more level-up moves

MorelullEvosAttacks:
	db EVOLVE_LEVEL, 24, SHIINOTIC
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 3, ASTONISH
	db 8, FLASH
	db 14, MEGA_DRAIN
	db 16, SLEEP_POWDER
	db 17, RECOVER
	db 18, CONFUSE_RAY
	db 28, GIGA_DRAIN
	db 32, DAZZLE_BEAM
	db 36, SPORE
	db 39, MOONBLAST
	db 0 ; no more level-up moves

ShiinoticEvosAttacks:
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, MEGA_DRAIN
	db 1, CONFUSE_RAY
	db 1, SLEEP_POWDER
	db 31, GIGA_DRAIN
	db 38, DAZZLE_BEAM
	db 41, SPORE
	db 46, MOONBLAST
	db 51, DREAM_EATER
	db 0 ; no more level-up moves

AlomomolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, TACKLE
	db 9, AQUA_JET
	db 13, FURY_STRIKES
	db 25, WATER_PULSE
	db 33, PROTECT
	db 34, RECOVER
	db 37, HYDRO_PUMP
	db 38, BATON_PASS
	db 45, SAFEGUARD
	db 49, WHIRLPOOL
	db 0 ; no more level-up moves

SphealEvosAttacks:
	db EVOLVE_LEVEL, 32, SEALEO
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, GROWL
	db 1, POWDER_SNOW
	db 1, WATER_GUN
	db 4, ROLLOUT
	db 9, ENCORE
	db 13, ICICLE_CRASH
	db 18, WATER_PULSE
	db 21, BODY_SLAM
	db 24, AURORA_BEAM
	db 33, HAIL
	db 34, REST
	db 35, SNORE
	db 40, SURF
	db 42, BLIZZARD
	db 0 ; no more level-up moves

SealeoEvosAttacks:
	db EVOLVE_LEVEL, 44, WALREIN
	db 0 ; no more evolutions
	db 1, ICICLE_CRASH
	db 1, WATER_PULSE
	db 1, BODY_SLAM
	db 1, AURORA_BEAM
	db 34, HAIL
	db 35, REST
	db 36, SNORE
	db 46, SURF
	db 48, BLIZZARD
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICICLE_CRASH
	db 1, HAIL
	db 1, REST
	db 1, SNORE
	db 48, SURF
	db 51, BLIZZARD
	db 0 ; no more level-up moves

DewpiderEvosAttacks:
	db EVOLVE_LEVEL, 22, ARAQUANID
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, WATER_GUN
	db 3, BUG_BUZZ
	db 8, MEAN_LOOK
	db 10, STRUGGLE_BUG
	db 14, BUBBLEBEAM
	db 16, BITE
	db 20, HEADBUTT
	db 21, RECOVER
	db 29, CRUNCH
	db 34, LEECH_LIFE
	db 42, MIRROR_COAT
	db 43, SCALD
	db 0 ; no more level-up moves

AraquanidEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUG_BUZZ
	db 1, MEAN_LOOK
	db 1, BUBBLEBEAM
	db 1, HEADBUTT
	db 22, RECOVER
	db 26, BITE
	db 34, CRUNCH
	db 40, LEECH_LIFE
	db 44, STRUGGLE_BUG
	db 54, MIRROR_COAT
	db 56, SCALD
	db 0 ; no more level-up moves

MareanieEvosAttacks:
	db EVOLVE_LEVEL, 38, TOXAPEX
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 3, PECK
	db 9, BITE
	db 13, PROTECT
	db 18, SPIKES
	db 21, SLUDGE_BOMB
	db 28, RECOVER
	db 29, FURY_STRIKES
	db 30, TOXIC
	db 38, TWINEEDLE
	db 39, POISON_JAB
	db 44, SCALD
	db 0 ; no more level-up moves

ToxapexEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLUDGE_BOMB
	db 1, RECOVER
	db 1, FURY_STRIKES
	db 1, TOXIC
	db 41, POISON_JAB
	db 42, TWINEEDLE
	db 50, SCALD
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	db EVOLVE_LEVEL, 20, METANG
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 8, CONFUSION
	db 10, METAL_CLAW
	db 17, PURSUIT
	db 18, FLASH_CANNON
	db 0 ; no more level-up moves

MetangEvosAttacks:
	db EVOLVE_LEVEL, 45, METAGROSS
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, METAL_CLAW
	db 1, PURSUIT
	db 1, FLASH_CANNON
	db 27, BULLET_PUNCH
	db 29, SCARY_FACE
	db 36, ZEN_HEADBUTT
	db 37, PSYCHIC_M
	db 44, BARRIER
	db 47, IRON_HEAD
	db 48, AGILITY
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, CROSS_CHOP
	db 1, BULLET_PUNCH
	db 1, PSYCHIC_M
	db 1, ZEN_HEADBUTT
	db 46, BARRIER
	db 50, IRON_HEAD
	db 51, AGILITY
	db 70, HYPER_BEAM
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	db EVOLVE_LEVEL, 59, VOLCARONA
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, STRING_SHOT
	db 8, LEECH_LIFE
	db 12, STRUGGLE_BUG
	db 18, FLAME_WHEEL
	db 24, TAKE_DOWN
	db 36, FLAMETHROWER
	db 42, BUG_BUZZ
	db 54, AMNESIA
	db 60, THRASH
	db 62, DOUBLE_EDGE
	db 66, FIRE_LASH
	db 0 ; no more level-up moves

VolcaronaEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, FLAMETHROWER
	db 1, BUG_BUZZ
	db 1, AMNESIA
	db 62, THRASH
	db 66, FIRE_BLAST
	db 70, FIRE_LASH
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	db EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 3, TACKLE
	db 7, STUN_SPORE
	db 10, LEECH_SEED
	db 15, MEGA_DRAIN
	db 20, HEADBUTT
	db 24, POISON_GAS
	db 26, HEAL_BELL
	db 33, GROWTH
	db 34, TOXIC
	db 37, GIGA_DRAIN
	db 39, SEED_BOMB
	db 47, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, MACH_PUNCH
	db 1, PURSUIT
	db 1, HEADBUTT
	db 25, COUNTER
	db 28, DRAIN_PUNCH
	db 35, VITAL_THROW
	db 42, SEED_BOMB
	db 49, DYNAMICPUNCH
	db 0 ; no more level-up moves

MunnaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MUSHARNA
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, PSYWAVE
	db 9, HYPNOSIS
	db 10, CONFUSION
	db 12, DISABLE
	db 16, RECOVER
	db 20, SAFEGUARD
	db 23, ZEN_HEADBUTT
	db 28, PSYBEAM
	db 29, DREAM_EATER
	db 33, FUTURE_SIGHT
	db 34, CALM_MIND
	db 36, PSYCHIC_M
	db 40, MOONBLAST
	db 0 ; no more level-up moves

MusharnaEvosAttacks:
	db 0 ; no more evolutions
	db 1, DREAM_EATER
	db 1, HYPNOSIS
	db 1, MOONBLAST
	db 1, PSYCHIC_M
	db 0 ; no more level-up moves

SolosisEvosAttacks:
	db EVOLVE_LEVEL, 32, DUOSION
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, PROTECT
	db 1, PSYWAVE
	db 6, REFLECT
	db 7, ROLLOUT
	db 10, FAINT_ATTACK
	db 14, HIDDEN_POWER
	db 17, LIGHT_SCREEN
	db 18, CHARM
	db 21, RECOVER
	db 24, PSYBEAM
	db 25, PAIN_SPLIT
	db 32, FUTURE_SIGHT
	db 36, PSYCHIC_M
	db 0 ; no more level-up moves

DuosionEvosAttacks:
	db EVOLVE_LEVEL, 41, REUNICLUS
	db 0 ; no more evolutions
	db 1, LIGHT_SCREEN
	db 1, CHARM
	db 1, RECOVER
	db 1, PSYBEAM
	db 33, FUTURE_SIGHT
	db 34, PAIN_SPLIT
	db 39, PSYCHIC_M
	db 0 ; no more level-up moves

ReuniclusEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 1, RECOVER
	db 1, FUTURE_SIGHT
	db 1, PSYCHIC_M
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

TrubbishEvosAttacks:
	db EVOLVE_LEVEL, 36, GARBODOR
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 8, SPIKES
	db 11, ACID
	db 14, FURY_STRIKES
	db 18, SLUDGE
	db 22, RECOVER
	db 24, TAKE_DOWN
	db 28, SLUDGE_BOMB
	db 34, AMNESIA
	db 35, TOXIC
	db 37, PAIN_SPLIT
	db 44, GUNK_SHOT
	db 46, EXPLOSION
	db 0 ; no more level-up moves

GarbodorEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLUDGE
	db 1, RECOVER
	db 1, BODY_SLAM
	db 1, SLUDGE_BOMB
	db 37, TOXIC
	db 39, PAIN_SPLIT
	db 40, AMNESIA
	db 52, GUNK_SHOT
	db 57, EXPLOSION
	db 0 ; no more level-up moves

SalanditEvosAttacks:
	db EVOLVE_LEVEL, 33, SALAZZLE
	db 0 ; no more evolutions
	db 1, FURY_STRIKES
	db 6, EMBER
	db 12, DRAGON_RAGE
	db 18, POISON_JAB
	db 29, NASTY_PLOT
	db 30, FIRE_SPIN
	db 36, SLUDGE_BOMB
	db 37, TOXIC
	db 43, FLAMETHROWER
	db 45, DRAGON_PULSE
	db 60, PAIN_SPLIT
	db 0 ; no more level-up moves

SalazzleEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_JAB
	db 1, FURY_STRIKES
	db 1, NASTY_PLOT
	db 1, FIRE_SPIN
	db 38, SLUDGE_BOMB
	db 41, TOXIC
	db 48, FLAMETHROWER
	db 52, DRAGON_PULSE
	db 0 ; no more level-up moves

StunkyEvosAttacks:
	db EVOLVE_LEVEL, 34, SKUNTANK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 2, FOCUS_ENERGY
	db 3, POISON_GAS
	db 8, SCREECH
	db 10, FURY_STRIKES
	db 13, SMOKESCREEN
	db 15, PURSUIT
	db 20, BITE
	db 21, SLUDGE_BOMB
	db 23, SLASH
	db 25, ACID
	db 26, TOXIC
	db 34, NIGHT_SLASH
	db 38, EXPLOSION
	db 0 ; no more level-up moves

SkuntankEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAMETHROWER
	db 1, BITE
	db 1, SLUDGE_BOMB
	db 1, TOXIC
	db 35, NIGHT_SLASH
	db 42, EXPLOSION
	db 0 ; no more level-up moves

GrenmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, GROWL
	db 5, SINGE
	db 7, WATER_GUN
	db 9, SMOKESCREEN
	db 11, HEADBUTT
	db 13, FLAME_WHEEL
	db 16, WATER_PULSE
	db 20, SCALD
	db 25, REST
	db 28, IRON_TAIL
	db 35, ZEN_HEADBUTT
	db 40, FLAMETHROWER
	db 45, HYDRO_PUMP
	db 47, FIRE_SPIN
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db EVOLVE_LEVEL, 33, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, QUICK_ATTACK
	db 11, SONICBOOM
	db 13, DOUBLE_TEAM
	db 16, STRUGGLE_BUG
	db 20, PROTECT
	db 23, PURSUIT
	db 26, SUPERSONIC
	db 30, HYPER_VOICE
	db 33, ANCIENTPOWER
	db 36, HYPNOSIS
	db 37, SWIFT
	db 42, WING_ATTACK
	db 54, AIR_SLASH
	db 57, BUG_BUZZ
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, STRUGGLE_BUG
	db 1, SUPERSONIC
	db 1, HYPER_VOICE
	db 33, ANCIENTPOWER
	db 37, AIR_SLASH
	db 39, BUG_BUZZ
	db 42, SLASH
	db 48, DRAGON_PULSE
	db 0 ; no more level-up moves

CherubiEvosAttacks:
	db EVOLVE_LEVEL, 25, CHERRIM
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, TACKLE
	db 5, RAZOR_LEAF
	db 7, GROWTH
	db 11, LEECH_SEED
	db 13, BATON_PASS
	db 19, MAGICAL_LEAF
	db 22, SUNNY_DAY
	db 29, HEAL_BELL
	db 30, TAKE_DOWN
	db 0 ; no more level-up moves

CherrimEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, LEECH_SEED
	db 1, BATON_PASS
	db 1, MAGICAL_LEAF
	db 31, HEAL_BELL
	db 34, TAKE_DOWN
	db 44, SOLARBEAM
	db 48, LEAF_BLADE
	db 0 ; no more level-up moves

BounsweetEvosAttacks:
	db EVOLVE_LEVEL, 18, STEENEE
	db 0 ; no more evolutions
	db 1, SPLASH
	db 4, CHARM
	db 8, RAPID_SPIN
	db 12, RAZOR_LEAF
	db 16, STUN_SPORE
	db 20, MAGICAL_LEAF
	db 26, SWEET_KISS
	db 27, FLAIL
	db 36, HEAL_BELL
	db 0 ; no more level-up moves

SteeneeEvosAttacks:
	db EVOLVE_LEVEL, 28, TSAREENA
	db 0 ; no more evolutions
	db 1, FURY_STRIKES
	db 1, RAPID_SPIN
	db 1, RAZOR_LEAF
	db 1, STUN_SPORE
	db 21, MAGICAL_LEAF
	db 28, STOMP
	db 29, SWEET_KISS
	db 37, MEAN_LOOK
	db 42, HEAL_BELL
	db 47, SOLARBEAM
	db 0 ; no more level-up moves

TsareenaEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAZOR_LEAF
	db 1, STUN_SPORE
	db 1, MAGICAL_LEAF
	db 1, POWER_WHIP
	db 28, STOMP
	db 29, SWEET_KISS
	db 37, MEAN_LOOK
	db 42, HEAL_BELL
	db 47, SOLARBEAM
	db 52, HI_JUMP_KICK
	db 0 ; no more level-up moves

BouffalantEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, PURSUIT
	db 8, RAGE
	db 12, FURY_STRIKES
	db 17, HORN_ATTACK
	db 20, SCARY_FACE
	db 24, COUNTER
	db 31, FOCUS_ENERGY
	db 32, SUBMISSION
	db 35, ROLLING_KICK
	db 42, MEGAHORN
	db 43, REVERSAL
	db 50, THRASH
	db 54, SWORDS_DANCE
	db 60, GIGA_IMPACT
	db 0 ; no more level-up moves

FomantisEvosAttacks:
	db EVOLVE_LEVEL, 34, LURANTIS
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 8, GROWTH
	db 10, RAZOR_LEAF
	db 27, RECOVER
	db 28, LEAF_BLADE
	db 29, SLASH
	db 30, X_SCISSOR
	db 31, STUN_SPORE
	db 44, SOLARBEAM
	db 45, SUNNY_DAY
	db 0 ; no more level-up moves

LurantisEvosAttacks:
	db 0 ; no more evolutions
	db 1, CROSS_CHOP
	db 1, X_SCISSOR
	db 1, SLASH
	db 1, LEAF_BLADE
	db 52, POWER_WHIP
	db 53, SUNNY_DAY
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db EVOLVE_ITEM, BLACK_ROCK, KLEAVOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 2, LEER
	db 7, FOCUS_ENERGY
	db 10, PURSUIT
	db 14, FALSE_SWIPE
	db 22, AGILITY
	db 24, WING_ATTACK
	db 29, SLASH
	db 30, FURY_CUTTER
	db 32, AEROBLAST
	db 35, DOUBLE_TEAM
	db 41, X_SCISSOR
	db 45, NIGHT_SLASH
	db 46, DOUBLE_KICK
	db 47, SWORDS_DANCE
	db 49, AIR_SLASH
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, AIR_SLASH
	db 1, BULLET_PUNCH
	db 1, WING_ATTACK
	db 10, PURSUIT
	db 13, FALSE_SWIPE
	db 18, AGILITY
	db 23, METAL_CLAW
	db 30, FURY_CUTTER
	db 32, SLASH
	db 33, AEROBLAST
	db 39, DOUBLE_TEAM
	db 40, X_SCISSOR
	db 45, NIGHT_SLASH
	db 46, DOUBLE_KICK
	db 48, SWORDS_DANCE
	db 50, IRON_HEAD
	db 0 ; no more level-up moves

KleavorEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, QUICK_ATTACK
	db 4, FURY_CUTTER
	db 8, FALSE_SWIPE
	db 11, AERIAL_ACE
	db 12, ROCK_THROW
	db 16, DOUBLE_TEAM
	db 20, DOUBLE_KICK
	db 24, SLASH
	db 28, FOCUS_ENERGY
	db 32, AGILITY
	db 36, ROCK_SLIDE
	db 38, STONE_EDGE
	db 40, X_SCISSOR
	db 44, SWORDS_DANCE
	db 48, CROSS_CHOP
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, SEED_BOMB
	db 4, HORN_ATTACK
	db 5, ENDURE
	db 11, AERIAL_ACE
	db 23, ROCK_SMASH
	db 24, COUNTER
	db 31, TWINEEDLE
	db 32, PURSUIT
	db 33, TAKE_DOWN
	db 40, SUBMISSION
	db 44, REVERSAL
	db 45, THRASH
	db 48, CROSS_CHOP
	db 50, MEGAHORN
	db 51, SWORDS_DANCE
	db 0 ; no more level-up moves

CombeeEvosAttacks:
	db EVOLVE_LEVEL, 21, VESPIQUEN
	db EVOLVE_ITEM, ESTRADIOL, VESPIQUEN
	db 0 ; no more evolutions
	db 1, GUST
	db 8, STRUGGLE_BUG
	db 13, ACID
	db 29, BUG_BUZZ
	db 0 ; no more level-up moves

VespiquenEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, STRUGGLE_BUG
	db 1, ACID
	db 21, POISON_STING
	db 22, FURY_CUTTER
	db 24, FURY_STRIKES
	db 26, SWAGGER
	db 28, AIR_SLASH
	db 32, POWER_GEM
	db 36, TOXIC
	db 40, SIGNAL_BEAM
	db 42, TWINEEDLE
	db 44, DESTINY_BOND
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 5, SMOG
	db 13, ZEN_HEADBUTT
	db 17, SMOKESCREEN
	db 21, SLUDGE
	db 31, HAZE
	db 33, TOXIC
	db 34, STEEL_WING
	db 37, SLUDGE_BOMB
	db 44, DESTINY_BOND
	db 48, EXPLOSION
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAIRY_WIND
	db 1, POISON_GAS
	db 1, PSYBEAM
	db 1, SCREECH
	db 3, SMOG
	db 12, SMOKESCREEN
	db 13, ZEN_HEADBUTT
	db 17, DOUBLE_KICK
	db 20, SLUDGE
	db 32, HAZE
	db 34, TOXIC
	db 40, SLUDGE_BOMB
	db 51, DESTINY_BOND
	db 58, EXPLOSION
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_GAS
	db 4, HARDEN
	db 7, BITE
	db 12, DISABLE
	db 18, SLUDGE
	db 19, MINIMIZE
	db 24, FAINT_ATTACK
	db 26, TOXIC
	db 32, CRUNCH
	db 38, SLUDGE_BOMB
	db 40, BARRIER
	db 43, GUNK_SHOT
	db 50, EXPLOSION
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, SLUDGE
	db 1, SCREECH
	db 1, TOXIC
	db 41, SLUDGE_BOMB
	db 43, BARRIER
	db 48, GUNK_SHOT
	db 60, EXPLOSION
	db 0 ; no more level-up moves

EspurrEvosAttacks:
	db EVOLVE_LEVEL, 25, MEOWSTIC_M
	db EVOLVE_LEVEL, 26, MEOWSTIC_F
	db 0 ; no more evolutions
	db 1, LEER
	db 1, SCRATCH
	db 7, FAINT_ATTACK
	db 9, CONFUSION
	db 15, QUICK_ATTACK
	db 16, LIGHT_SCREEN
	db 17, PSYBEAM
	db 18, DISRMNGVOICE
	db 30, REFLECT
	db 0 ; no more level-up moves

Meowstic_mEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, MEAN_LOOK
	db 1, SCRATCH
	db 3, BATON_PASS
	db 5, FAINT_ATTACK
	db 6, CONFUSION
	db 15, QUICK_ATTACK
	db 17, DISRMNGVOICE
	db 18, LIGHT_SCREEN
	db 25, CHARM
	db 27, PSYBEAM
	db 34, REFLECT
	db 42, PSYCHIC_M
	db 43, PURSUIT
	db 44, DISABLE
	db 0 ; no more level-up moves

Meowstic_fEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, MAGICAL_LEAF
	db 1, SCRATCH
	db 5, FAINT_ATTACK
	db 6, CONFUSION
	db 15, QUICK_ATTACK
	db 17, DISRMNGVOICE
	db 18, LIGHT_SCREEN
	db 27, PSYBEAM
	db 33, REFLECT
	db 34, SHADOW_BALL
	db 36, EXTRASENSORY
	db 42, PSYCHIC_M
	db 43, PURSUIT
	db 45, SIGNAL_BEAM
	db 51, FUTURE_SIGHT
	db 0 ; no more level-up moves

PurrloinEvosAttacks:
	db EVOLVE_LEVEL, 20, LIEPARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 2, GROWL
	db 9, SMOKESCREEN
	db 12, FURY_STRIKES
	db 15, PURSUIT
	db 18, QUICK_ATTACK
	db 24, HONE_CLAWS
	db 27, ZEN_HEADBUTT
	db 30, SLASH
	db 33, MEAN_LOOK
	db 36, NIGHT_SLASH
	db 39, FAINT_ATTACK
	db 40, NASTY_PLOT
	db 47, PLAY_ROUGH
	db 0 ; no more level-up moves

LiepardEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 5, SMOKESCREEN
	db 12, FURY_STRIKES
	db 15, PURSUIT
	db 19, QUICK_ATTACK
	db 26, HONE_CLAWS
	db 29, ZEN_HEADBUTT
	db 34, SLASH
	db 38, ENCORE
	db 43, NIGHT_SLASH
	db 47, FAINT_ATTACK
	db 48, NASTY_PLOT
	db 56, PLAY_ROUGH
	db 0 ; no more level-up moves

SkittyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, DELCATTY
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 6, QUICK_ATTACK
	db 8, ATTRACT
	db 10, SING
	db 13, DISRMNGVOICE
	db 15, FURY_STRIKES
	db 17, MIRROR_MOVE
	db 24, CHARM
	db 26, FAINT_ATTACK
	db 33, FAINT_ATTACK
	db 37, HEAL_BELL
	db 40, DOUBLE_EDGE
	db 46, PLAY_ROUGH
	db 0 ; no more level-up moves

DelcattyEvosAttacks:
	db 0 ; no more evolutions
	db 1, ATTRACT
	db 1, FURY_STRIKES
	db 1, QUICK_ATTACK
	db 1, SING
	db 0 ; no more level-up moves

LitleoEvosAttacks:
	db EVOLVE_LEVEL, 35, PYROAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, EMBER
	db 8, GROWTH
	db 11, HEADBUTT
	db 15, ROAR
	db 20, TAKE_DOWN
	db 23, FLAME_WHEEL
	db 28, PAIN_SPLIT
	db 36, FLAMETHROWER
	db 39, CRUNCH
	db 43, HYPER_VOICE
	db 46, FIRE_SPIN
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

PyroarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPER_BEAM
	db 1, HEADBUTT
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 38, FLAMETHROWER
	db 42, CRUNCH
	db 48, HYPER_VOICE
	db 51, FIRE_SPIN
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 3, ROAR
	db 7, EMBER
	db 11, LEER
	db 21, BATON_PASS
	db 22, FLAME_WHEEL
	db 24, REVERSAL
	db 26, TAKE_DOWN
	db 28, FLAMETHROWER
	db 33, COUNTER
	db 36, AGILITY
	db 38, CRUNCH
	db 39, OUTRAGE
	db 41, PLAY_ROUGH
	db 47, FIRE_LASH
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, CRUNCH
	db 1, FIRE_LASH
	db 1, TAKE_DOWN
	db 37, EXTREMESPEED
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db EVOLVE_LEVEL, 32, WYRDEER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 9, ASTONISH
	db 13, HYPNOSIS
	db 17, STOMP
	db 21, CONFUSION
	db 22, SMOKESCREEN
	db 28, TAKE_DOWN
	db 30, CONFUSE_RAY
	db 34, CALM_MIND
	db 38, ZEN_HEADBUTT
	db 43, ROLLING_KICK
	db 47, DISABLE
	db 50, MEAN_LOOK
	db 0 ; no more level-up moves

WyrdeerEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, STOMP
	db 1, CONFUSE_RAY
	db 1, CALM_MIND
	db 32, EXTRASENSORY
	db 37, ZEN_HEADBUTT
	db 40, DISABLE
	db 43, ROLLING_KICK
	db 45, MEAN_LOOK
	db 62, MEGAHORN
	db 0 ; no more level-up moves

ChatotEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 5, GROWL
	db 9, MIRROR_MOVE
	db 13, SING
	db 16, ENCORE
	db 17, FURY_STRIKES
	db 29, ROLLOUT
	db 37, HYPER_VOICE
	db 38, RECOVER
	db 47, CHARM
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db EVOLVE_LEVEL, 31, EXCADRILL
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, RAPID_SPIN
	db 7, MUD_SLAP
	db 12, FURY_STRIKES
	db 15, METAL_CLAW
	db 19, DIG
	db 20, HONE_CLAWS
	db 26, SLASH
	db 28, ROCK_SLIDE
	db 34, EARTHQUAKE
	db 36, SWORDS_DANCE
	db 37, SANDSTORM
	db 47, FISSURE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, DIG
	db 1, METAL_CLAW
	db 1, SLASH
	db 1, ROCK_SLIDE
	db 38, EARTHQUAKE
	db 41, SWORDS_DANCE
	db 44, SANDSTORM
	db 61, FISSURE
	db 0 ; no more level-up moves

MakuhitaEvosAttacks:
	db EVOLVE_LEVEL, 24, HARIYAMA
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 1, TACKLE
	db 4, SMOKESCREEN
	db 8, KARATE_CHOP
	db 13, VITAL_THROW
	db 14, QUICK_ATTACK
	db 18, ROAR
	db 22, FAINT_ATTACK
	db 29, BELLY_DRUM
	db 36, SEISMIC_TOSS
	db 38, ENDURE
	db 40, SUBMISSION
	db 45, REVERSAL
	db 46, IRON_HEAD
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, VITAL_THROW
	db 1, QUICK_ATTACK
	db 1, FAINT_ATTACK
	db 31, BELLY_DRUM
	db 41, SEISMIC_TOSS
	db 44, ENDURE
	db 50, SUBMISSION
	db 54, REVERSAL
	db 58, IRON_HEAD
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERRSERKER
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 8, BITE
	db 14, PAY_DAY
	db 16, METAL_CLAW
	db 19, QUICK_ATTACK
	db 22, FAINT_ATTACK
	db 23, ENCORE
	db 24, SCREECH
	db 26, FURY_STRIKES
	db 37, NASTY_PLOT
	db 38, SLASH
	db 39, PLAY_ROUGH
	db 40, ZEN_HEADBUTT
	db 43, PURSUIT
	db 49, NIGHT_SLASH
	db 0 ; no more level-up moves

PerrserkerEvosAttacks:
	db 0 ; no more evolutions
	db 1, HONE_CLAWS
	db 1, IRON_HEAD
	db 1, PAY_DAY
	db 1, METAL_CLAW
	db 31, FURY_STRIKES
	db 36, SCREECH
	db 42, SLASH
	db 54, THRASH
	db 0 ; no more level-up moves

ChompEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, SCREECH
	db 1, BITE
	db 1, IRON_HEAD
	db 0 ; no more level-up moves

RegimagmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTH_POWER
	db 1, FLAMETHROWER
	db 1, STOMP
	db 1, SANDSTORM
	db 1, ANCIENTPOWER
	db 55, POWER_GEM
	db 58, FIRE_BLAST
	db 63, EARTH_POWER
	db 68, SUNNY_DAY
	db 75, HYPER_BEAM
	db 80, FLASH_CANNON
	db 0 ; no more level-up moves

CroagunkEvosAttacks:
	db EVOLVE_LEVEL, 37, TOXICROAK
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 2, MUD_SLAP
	db 7, POISON_STING
	db 9, ENCORE
	db 15, PURSUIT
	db 17, FAINT_ATTACK
	db 24, SWAGGER
	db 29, MUD_BOMB
	db 33, SLUDGE_BOMB
	db 36, TOXIC
	db 37, NASTY_PLOT
	db 40, POISON_JAB
	db 47, POISON_GAS
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0 ; no more evolutions
	db 1, FAINT_ATTACK
	db 1, SWAGGER
	db 1, MUD_BOMB
	db 1, TOXIC
	db 39, NASTY_PLOT
	db 44, POISON_JAB
	db 51, SLUDGE_BOMB
	db 57, POISON_GAS
	db 0 ; no more level-up moves

ClobbopusEvosAttacks:
	db EVOLVE_LEVEL, 35, GRAPPLOCT
	db 0 ; no more evolutions
	db 1, LEER
	db 1, ROCK_SMASH
	db 5, PURSUIT
	db 10, WRAP
	db 15, PROTECT
	db 25, BULK_UP
	db 30, SUBMISSION
	db 35, ENCORE
	db 40, REVERSAL
	db 45, CROSS_CHOP
	db 0 ; no more level-up moves

GrapploctEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_SMASH
	db 1, WRAP
	db 1, BULK_UP
	db 1, SUBMISSION
	db 35, ENCORE
	db 40, REVERSAL
	db 45, CROSS_CHOP
	db 0 ; no more level-up moves

Jangmo_oEvosAttacks:
	db EVOLVE_LEVEL, 35, HAKAMO_O
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 9, BIDE
	db 10, PROTECT
	db 18, SCARY_FACE
	db 22, HEADBUTT
	db 26, GROWTH
	db 30, SCREECH
	db 34, BARRIER
	db 38, DRAGON_CLAW
	db 42, ROAR
	db 46, DRAGON_DANCE
	db 50, OUTRAGE
	db 0 ; no more level-up moves

Hakamo_oEvosAttacks:
	db EVOLVE_LEVEL, 45, KOMMO_O
	db 0 ; no more evolutions
	db 1, AGILITY
	db 1, HEADBUTT
	db 1, SCREECH
	db 1, BARRIER
	db 39, DRAGON_CLAW
	db 44, ROAR
	db 50, DRAGON_DANCE
	db 55, OUTRAGE
	db 59, SUBMISSION
	db 0 ; no more level-up moves

Kommo_oEvosAttacks:
	db 0 ; no more evolutions
	db 1, AGILITY
	db 1, BELLY_DRUM
	db 1, HEADBUTT
	db 1, DRAGON_CLAW
	db 46, ROAR
	db 54, DRAGON_DANCE
	db 62, OUTRAGE
	db 67, SUBMISSION
	db 0 ; no more level-up moves

LillipupEvosAttacks:
	db EVOLVE_LEVEL, 16, HERDIER
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, BITE
	db 11, CHARM
	db 14, BATON_PASS
	db 16, GROWTH
	db 18, TAKE_DOWN
	db 22, CRUNCH
	db 26, COUNTER
	db 28, ROAR
	db 33, REVERSAL
	db 37, EXPLOSION
	db 40, PLAY_ROUGH
	db 41, GIGA_IMPACT
	db 0 ; no more level-up moves

HerdierEvosAttacks:
	db EVOLVE_LEVEL, 32, STOUTLAND
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 1, BITE
	db 16, BATON_PASS
	db 17, GROWTH
	db 18, TAKE_DOWN
	db 19, CHARM
	db 24, CRUNCH
	db 30, COUNTER
	db 32, ROAR
	db 39, REVERSAL
	db 44, EXPLOSION
	db 46, PLAY_ROUGH
	db 49, GIGA_IMPACT
	db 0 ; no more level-up moves

StoutlandEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TAKE_DOWN
	db 1, CRUNCH
	db 32, COUNTER
	db 33, ROAR
	db 43, REVERSAL
	db 53, EXPLOSION
	db 55, PLAY_ROUGH
	db 61, GIGA_IMPACT
	db 0 ; no more level-up moves

Salandit2EvosAttacks:
	db EVOLVE_LEVEL, 33, SALAZZLE2
	db 0 ; no more evolutions
	db 1, GLITCH_M
	db 0 ; no more level-up moves

Salazzle2EvosAttacks:
	db 0 ; no more evolutions
	db 1, GLITCH_M
	db 0 ; no more level-up moves

TykerEvosAttacks:
	db EVOLVE_LEVEL, 30, STRAIGAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 4, THUNDERSHOCK
	db 7, QUICK_ATTACK
	db 10, ROAR
	db 14, BITE
	db 16, SPARK
	db 20, THUNDER_WAVE
	db 24, SHOCK_WAVE
	db 26, AGILITY
	db 29, THUNDERPUNCH
	db 33, WILD_CHARGE
	db 36, PLAY_ROUGH
	db 38, THUNDERBOLT
	db 43, ZAP_CANNON
	db 48, THUNDER
	db 0 ; no more level-up moves

StraigarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPARK
	db 1, THUNDER_WAVE
	db 1, SHOCK_WAVE
	db 1, AGILITY
	db 32, THUNDERPUNCH
	db 36, WILD_CHARGE
	db 39, PLAY_ROUGH
	db 41, THUNDERBOLT
	db 46, ZAP_CANNON
	db 51, THUNDER
	db 0 ; no more level-up moves

TympoleEvosAttacks:
	db EVOLVE_LEVEL, 25, PALPITOAD
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 4, ACID
	db 5, SUPERSONIC
	db 10, ROLLOUT
	db 13, BUBBLEBEAM
	db 21, RECOVER
	db 23, HYPER_VOICE
	db 28, SCALD
	db 31, FLAIL
	db 32, RAIN_DANCE
	db 0 ; no more level-up moves

PalpitoadEvosAttacks:
	db EVOLVE_LEVEL, 36, SEISMITOAD
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, ROLLOUT
	db 1, BUBBLEBEAM
	db 1, RECOVER
	db 30, SCALD
	db 35, FLAIL
	db 36, RAIN_DANCE
	db 40, HYPER_VOICE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

SeismitoadEvosAttacks:
	db 0 ; no more evolutions
	db 1, ACID
	db 1, RECOVER
	db 1, SCALD
	db 1, DRAIN_PUNCH
	db 36, FLAIL
	db 37, RAIN_DANCE
	db 42, HYPER_VOICE
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

PikipekEvosAttacks:
	db EVOLVE_LEVEL, 14, TRUMBEAK
	db 0 ; no more evolutions
	db 1, PECK
	db 3, GROWL
	db 9, ROCK_SMASH
	db 13, SUPERSONIC
	db 15, FAINT_ATTACK
	db 19, RECOVER
	db 21, FURY_STRIKES
	db 25, SCREECH
	db 27, DRILL_PECK
	db 31, SEED_BOMB
	db 33, CHARM
	db 37, HYPER_VOICE
	db 0 ; no more level-up moves

TrumbeakEvosAttacks:
	db EVOLVE_LEVEL, 28, TOUCANNON
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, ROCK_SMASH
	db 1, SUPERSONIC
	db 16, FAINT_ATTACK
	db 21, RECOVER
	db 24, FURY_STRIKES
	db 29, SCREECH
	db 32, DRILL_PECK
	db 37, SEED_BOMB
	db 40, CHARM
	db 45, HYPER_VOICE
	db 0 ; no more level-up moves

ToucannonEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, ROCK_BLAST
	db 1, FAINT_ATTACK
	db 1, FURY_STRIKES
	db 30, SCREECH
	db 32, ROCK_BLAST
	db 34, DRILL_PECK
	db 40, SEED_BOMB
	db 44, CHARM
	db 50, HYPER_VOICE
	db 0 ; no more level-up moves

HeatmorEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, HONE_CLAWS
	db 1, FURY_STRIKES
	db 1, FIRE_SPIN
	db 26, FAINT_ATTACK
	db 31, FLAMETHROWER
	db 33, STRUGGLE_BUG
	db 38, SLASH
	db 45, AMNESIA
	db 48, FIRE_BLAST
	db 49, RECOVER
	db 60, FIRE_LASH
	db 0 ; no more level-up moves

MolambinoEvosAttacks:
	db EVOLVE_LEVEL, 32, ANGORE
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 4, FLAIL
	db 8, AQUA_JET
	db 10, SUPERSONIC
	db 12, HEADBUTT
	db 16, WATER_PULSE
	db 20, AGILITY
	db 23, BUBBLEBEAM
	db 26, BITE
	db 28, RAIN_DANCE
	db 30, DOUBLE_TEAM
	db 32, THRASH
	db 46, WATERFALL
	db 0 ; no more level-up moves

AngoreEvosAttacks:
	db 0 ; no more evolutions
	db 1, AQUA_JET
	db 1, HEADBUTT
	db 1, BITE
	db 1, DOUBLE_TEAM
	db 33, THRASH
	db 36, IRON_HEAD
	db 40, CRUNCH
	db 43, IRON_TAIL
	db 45, HYPER_FANG
	db 47, WATERFALL
	db 53, SUPER_FANG
	db 57, GIGA_IMPACT
	db 0 ; no more level-up moves

ClauncherEvosAttacks:
	db EVOLVE_LEVEL, 37, CLAWITZER
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, WATER_GUN
	db 5, CUT
	db 10, FLAIL
	db 15, AQUA_JET
	db 20, HONE_CLAWS
	db 25, WATER_PULSE
	db 30, SWORDS_DANCE
	db 35, ROCK_BLAST
	db 38, DARK_PULSE
	db 40, MUD_BOMB
	db 45, AIR_SLASH
	db 48, DRAGON_PULSE
	db 50, SURF
	db 55, WATERFALL
	db 0 ; no more level-up moves

ClawitzerEvosAttacks:
	db 0 ; no more evolutions
	db 1, AQUA_JET
	db 1, HONE_CLAWS
	db 1, WATER_PULSE
	db 1, SWORDS_DANCE
	db 40, ROCK_BLAST
	db 43, DARK_PULSE
	db 47, MUD_BOMB
	db 50, AIR_SLASH
	db 53, DRAGON_PULSE
	db 56, SURF
	db 63, WATERFALL
	db 0 ; no more level-up moves

BuizelEvosAttacks:
	db EVOLVE_LEVEL, 26, FLOATZEL
	db 0 ; no more evolutions
	db 1, GROWL
	db 7, QUICK_ATTACK
	db 11, WATER_GUN
	db 14, PURSUIT
	db 18, SWIFT
	db 22, AQUA_JET
	db 27, DOUBLE_KICK
	db 33, WHIRLPOOL
	db 35, AGILITY
	db 39, AEROBLAST
	db 40, WATERFALL
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

FloatzelEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, PURSUIT
	db 1, SWIFT
	db 1, AQUA_JET
	db 29, DOUBLE_KICK
	db 36, WHIRLPOOL
	db 41, AGILITY
	db 45, AEROBLAST
	db 48, WATERFALL
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

ShellosEvosAttacks:
	db EVOLVE_LEVEL, 30, GASTRODON
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 2, MUD_SLAP
	db 4, DEFENSE_CURL
	db 7, WATER_PULSE
	db 11, MUD_BOMB
	db 16, HIDDEN_POWER
	db 20, ANCIENTPOWER
	db 23, RAIN_DANCE
	db 28, BODY_SLAM
	db 35, EARTH_POWER
	db 36, SCALD
	db 42, RECOVER
	db 45, EXPLOSION
	db 0 ; no more level-up moves

GastrodonEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_PULSE
	db 1, ANCIENTPOWER
	db 1, RAIN_DANCE
	db 1, BODY_SLAM
	db 39, EARTH_POWER
	db 40, SCALD
	db 48, RECOVER
	db 53, EXPLOSION
	db 0 ; no more level-up moves

FinneonEvosAttacks:
	db EVOLVE_LEVEL, 31, LUMINEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, WATER_GUN
	db 10, ATTRACT
	db 13, RAIN_DANCE
	db 17, GUST
	db 22, WATER_PULSE
	db 26, MEAN_LOOK
	db 29, SAFEGUARD
	db 33, RECOVER
	db 38, WHIRLPOOL
	db 42, THUNDERPUNCH
	db 45, AERIAL_ACE
	db 49, SIGNAL_BEAM
	db 0 ; no more level-up moves

LumineonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_PULSE
	db 1, MEAN_LOOK
	db 1, SAFEGUARD
	db 35, RECOVER
	db 42, WHIRLPOOL
	db 48, THUNDERPUNCH
	db 53, AERIAL_ACE
	db 59, SIGNAL_BEAM
	db 0 ; no more level-up moves

TirtougaEvosAttacks:
	db EVOLVE_LEVEL, 37, CARRACOSTA
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 9, BITE
	db 13, AQUA_JET
	db 17, ANCIENTPOWER
	db 21, CRUNCH
	db 24, PROTECT
	db 27, WATER_PULSE
	db 33, BARRIER
	db 34, CURSE
	db 39, DRAGON_DANCE
	db 40, WATERFALL
	db 42, ROCK_SLIDE
	db 46, RAIN_DANCE
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

CarracostaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, CRUNCH
	db 1, WATER_PULSE
	db 1, CURSE
	db 41, DRAGON_DANCE
	db 43, WATERFALL
	db 47, ROCK_SLIDE
	db 53, RAIN_DANCE
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 2, SUPERSONIC
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 13, FLAIL
	db 16, SHOCK_WAVE
	db 21, CONFUSE_RAY
	db 22, SPARK
	db 24, BUBBLEBEAM
	db 31, SIGNAL_BEAM
	db 32, TAKE_DOWN
	db 40, RECOVER
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, SPARK
	db 1, CONFUSE_RAY
	db 1, BUBBLEBEAM
	db 34, SIGNAL_BEAM
	db 36, TAKE_DOWN
	db 47, RECOVER
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

BurgelaEvosAttacks:
	db EVOLVE_LEVEL, 14, TANGELA
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, TACKLE
	db 6, LEAFAGE
	db 10, SLEEP_POWDER
	db 12, CONFUSION
	db 16, RAZOR_LEAF
	db 17, POISON_GAS
	db 2, LEECH_LIFE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db EVOLVE_ITEM, BETA_STONE, JUNGELA
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, RECOVER
	db 9, SLEEP_POWDER
	db 10, LEECH_LIFE
	db 16, RAZOR_LEAF
	db 17, POISON_GAS
	db 21, GROWTH
	db 26, MEGA_DRAIN
	db 30, FAINT_ATTACK
	db 31, STUN_SPORE
	db 35, ANCIENTPOWER
	db 36, HIDDEN_POWER
	db 37, GIGA_DRAIN
	db 39, LEECH_SEED
	db 48, GIGA_IMPACT
	db 49, AMNESIA
	db 51, POWER_WHIP
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db EVOLVE_ITEM, ESTRADIOL, JUNGELA
	db 0 ; no more evolutions
	db 1, RAZOR_LEAF
	db 1, GROWTH
	db 1, POISON_GAS
	db 1, MEGA_DRAIN
	db 26, STUN_SPORE
	db 30, FAINT_ATTACK
	db 35, ANCIENTPOWER
	db 36, HIDDEN_POWER
	db 37, GIGA_DRAIN
	db 42, STRENGTH
	db 49, GIGA_IMPACT
	db 52, POWER_WHIP
	db 0 ; no more level-up moves

JungelaEvosAttacks:
	db EVOLVE_ITEM, TESTOSTERONE, TANGROWTH
	db 0 ; no more evolutions
	db 1, RAZOR_LEAF
	db 1, GROWTH
	db 1, POISON_GAS
	db 1, MEGA_DRAIN
	db 26, STUN_SPORE
	db 30, FAINT_ATTACK
	db 35, GIGA_DRAIN
	db 36, HIDDEN_POWER
	db 37, ANCIENTPOWER
	db 42, STRENGTH
	db 49, GIGA_IMPACT
	db 52, POWER_WHIP
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, ICE_STONE, GLACEON
	db EVOLVE_ITEM, LEAF_STONE, LEAFEON
	db EVOLVE_ITEM, LOVE_STONE, SYLVEON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, TACKLE
	db 2, LEER
	db 8, CHARM
	db 10, DOUBLE_KICK
	db 11, FAINT_ATTACK
	db 15, SWIFT
	db 19, QUICK_ATTACK
	db 26, BITE
	db 30, MIRROR_MOVE
	db 36, FOCUS_ENERGY
	db 37, TAKE_DOWN
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, SWIFT
	db 1, FAINT_ATTACK
	db 9, WATER_GUN
	db 10, DOUBLE_KICK
	db 18, WATER_PULSE
	db 28, BITE
	db 30, AURORA_BEAM
	db 33, RECOVER
	db 40, HAZE
	db 44, BARRIER
	db 45, MIST
	db 51, SCALD
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SWIFT
	db 1, FAINT_ATTACK
	db 9, THUNDERSHOCK
	db 11, CHARM
	db 17, QUICK_ATTACK
	db 25, DOUBLE_KICK
	db 30, SPARK
	db 32, TWINEEDLE
	db 40, THUNDER_WAVE
	db 44, AGILITY
	db 51, SHOCK_WAVE
	db 53, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWIFT
	db 1, TAKE_DOWN
	db 1, FAINT_ATTACK
	db 9, EMBER
	db 10, DOUBLE_KICK
	db 11, CHARM
	db 26, BITE
	db 30, FLAME_WHEEL
	db 32, FIRE_SPIN
	db 40, SMOG
	db 43, FIRE_LASH
	db 44, SCARY_FACE
	db 48, RAGE
	db 52, FLAMETHROWER
	db 65, FIRE_BLAST
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TACKLE
	db 1, FAINT_ATTACK
	db 10, CONFUSION
	db 11, CHARM
	db 19, QUICK_ATTACK
	db 25, SWIFT
	db 30, PSYBEAM
	db 34, FUTURE_SIGHT
	db 41, PSYCH_UP
	db 47, PSYCHIC_M
	db 49, RECOVER
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, BITE
	db 1, MIRROR_MOVE
	db 1, FAINT_ATTACK
	db 11, PURSUIT
	db 19, QUICK_ATTACK
	db 25, CONFUSE_RAY
	db 31, FAINT_ATTACK
	db 32, ZEN_HEADBUTT
	db 40, DARK_PULSE
	db 44, MEAN_LOOK
	db 45, SCREECH
	db 49, RECOVER
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWIFT
	db 1, TAKE_DOWN
	db 1, FAINT_ATTACK
	db 5, ICY_WIND
	db 11, CHARM
	db 22, BITE
	db 28, ICE_SHARD
	db 30, ICICLE_CRASH
	db 43, MIRROR_COAT
	db 45, BARRIER
	db 47, HAIL
	db 55, BLIZZARD
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SWIFT
	db 6, RAZOR_LEAF
	db 11, CHARM
	db 16, QUICK_ATTACK
	db 20, LEECH_SEED
	db 27, MAGICAL_LEAF
	db 31, RECOVER
	db 33, GIGA_DRAIN
	db 47, SUNNY_DAY
	db 48, SWORDS_DANCE
	db 55, LEAF_BLADE
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, BITE
	db 1, DISRMNGVOICE
	db 1, FAINT_ATTACK
	db 3, FAIRY_WIND
	db 11, CHARM
	db 12, QUICK_ATTACK
	db 17, SWIFT
	db 31, LIGHT_SCREEN
	db 39, MOONBLAST
	db 45, PSYCH_UP
	db 0 ; no more level-up moves

BuzzeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, BITE
	db 1, SWIFT
	db 1, LEECH_LIFE
	db 5, STRING_SHOT
	db 6, FURY_CUTTER
	db 11, SING
	db 16, TWINEEDLE
	db 20, MEGA_DRAIN
	db 27, STUN_SPORE
	db 31, RECOVER
	db 33, GIGA_DRAIN
	db 47, X_SCISSOR
	db 48, SWORDS_DANCE
	db 55, MEGAHORN
	db 0 ; no more level-up moves

DurantEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, SMOKESCREEN
	db 3, FURY_CUTTER
	db 9, BITE
	db 14, AGILITY
	db 16, METAL_CLAW
	db 21, STRUGGLE_BUG
	db 28, CRUNCH
	db 34, IRON_HEAD
	db 36, DIG
	db 38, SCREECH
	db 41, BARRIER
	db 45, X_SCISSOR
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, MUD_SLAP
	db 1, ENDURE
	db 1, MUD_BOMB
	db 23, ICY_WIND
	db 24, ICE_SHARD
	db 29, TAKE_DOWN
	db 35, FLAIL
	db 36, MIST
	db 37, EARTHQUAKE
	db 45, BLIZZARD
	db 50, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db EVOLVE_LEVEL, 45, MAMOSWINE
	db 0 ; no more evolutions
	db 1, ICE_SHARD
	db 1, MUD_BOMB
	db 1, ICICLE_CRASH
	db 1, TAKE_DOWN
	db 40, MIST
	db 44, EARTHQUAKE
	db 45, THRASH
	db 54, BLIZZARD
	db 62, AMNESIA
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, ICICLE_CRASH
	db 1, DOUBLE_KICK
	db 1, EARTHQUAKE
	db 45, THRASH
	db 54, BLIZZARD
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, FAINT_ATTACK
	db 3, LICK
	db 7, CHARM
	db 10, FURY_STRIKES
	db 19, FAINT_ATTACK
	db 22, STUN_SPORE
	db 25, PLAY_ROUGH
	db 32, SLASH
	db 37, REST
	db 43, SNORE
	db 49, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db EVOLVE_LEVEL, 45, URSALUNA
	db 0 ; no more evolutions
	db 1, FAINT_ATTACK
	db 1, FURY_STRIKES
	db 1, FAINT_ATTACK
	db 1, PLAY_ROUGH
	db 32, SLASH
	db 38, SCARY_FACE
	db 39, REST
	db 46, CROSS_CHOP
	db 47, SNORE
	db 55, THRASH
	db 0 ; no more level-up moves

UrsalunaEvosAttacks:
	db 0 ; no more evolutions
	db 1, PLAY_ROUGH
	db 1, BULLDOZE
	db 1, REST
	db 1, SNORE
	db 48, EARTHQUAKE
	db 56, THRASH
	db 64, CROSS_CHOP
	db 0 ; no more level-up moves

SnoverEvosAttacks:
	db EVOLVE_LEVEL, 40, ABOMASNOW
	db 0 ; no more evolutions
	db 1, RAZOR_LEAF
	db 1, ICY_WIND
	db 1, SWAGGER
	db 1, MIST
	db 24, ICE_SHARD
	db 31, RECOVER
	db 36, LEAF_BLADE
	db 41, BLIZZARD
	db 0 ; no more level-up moves

AbomasnowEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWAGGER
	db 1, ICE_SHARD
	db 1, RECOVER
	db 1, LEAF_BLADE
	db 47, BLIZZARD
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 5, METAL_CLAW
	db 7, AGILITY
	db 12, WING_ATTACK
	db 21, FURY_STRIKES
	db 22, AIR_CUTTER
	db 33, SPIKES
	db 35, STEEL_WING
	db 36, DRILL_PECK
	db 38, SCREECH
	db 40, SLASH
	db 42, AIR_SLASH
	db 48, BARRIER
	db 49, NIGHT_SLASH
	db 0 ; no more level-up moves

BlitzleEvosAttacks:
	db EVOLVE_LEVEL, 27, ZEBSTRIKA
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, LEER
	db 8, SPARK
	db 11, SHOCK_WAVE
	db 15, THUNDER_WAVE
	db 18, SINGE
	db 22, PURSUIT
	db 29, STOMP
	db 36, AGILITY
	db 39, WILD_CHARGE
	db 43, THRASH
	db 0 ; no more level-up moves

ZebstrikaEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPARK
	db 1, THUNDER_WAVE
	db 1, SHOCK_WAVE
	db 1, SINGE
	db 31, STOMP
	db 42, AGILITY
	db 47, WILD_CHARGE
	db 53, THRASH
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, LEER
	db 10, CONFUSION
	db 15, FAIRY_WIND
	db 20, AGILITY
	db 25, PSYBEAM
	db 30, STOMP
	db 41, TAKE_DOWN
	db 45, DAZZLE_BEAM
	db 50, PSYCHIC_M
	db 55, RECOVER
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZEN_HEADBUTT
	db 1, FAIRY_WIND
	db 1, AGILITY
	db 1, STOMP
	db 40, MEGAHORN
	db 43, TAKE_DOWN
	db 49, DAZZLE_BEAM
	db 56, PSYCHIC_M
	db 63, RECOVER
	db 0 ; no more level-up moves

SandygastEvosAttacks:
	db EVOLVE_LEVEL, 42, PALOSSAND
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, LEECH_LIFE
	db 5, ASTONISH
	db 12, SMOKESCREEN
	db 17, MEGA_DRAIN
	db 23, BULLDOZE
	db 28, HYPNOSIS
	db 34, BARRIER
	db 35, GIGA_DRAIN
	db 42, SHADOW_BALL
	db 46, EARTH_POWER
	db 51, RECOVER
	db 56, SANDSTORM
	db 0 ; no more level-up moves

PalossandEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, SMOKESCREEN
	db 1, BULLDOZE
	db 1, GIGA_DRAIN
	db 43, SHADOW_BALL
	db 49, EARTH_POWER
	db 56, RECOVER
	db 62, SANDSTORM
	db 0 ; no more level-up moves

StuffulEvosAttacks:
	db EVOLVE_LEVEL, 27, BEWEAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 5, BIDE
	db 8, CHARM
	db 16, ENDURE
	db 18, PURSUIT
	db 20, STRENGTH
	db 22, FLAIL
	db 26, TAKE_DOWN
	db 32, CROSS_CHOP
	db 36, THRASH
	db 40, PAIN_SPLIT
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

BewearEvosAttacks:
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, ENDURE
	db 1, STRENGTH
	db 1, FLAIL
	db 28, TAKE_DOWN
	db 36, CROSS_CHOP
	db 42, THRASH
	db 48, PAIN_SPLIT
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

Oricorio_baileEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, ORICORIO_POM
	db EVOLVE_ITEM, MOON_STONE, ORICORIO_PAU
	db EVOLVE_ITEM, DUSK_STONE, ORICORIO_SENSU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, PECK
	db 10, BATON_PASS
	db 13, AIR_CUTTER
	db 20, CHARM
	db 23, FURY_STRIKES
	db 26, SWEET_KISS
	db 30, RECOVER
	db 33, MEAN_LOOK
	db 36, AIR_SLASH
	db 40, FLAMETHROWER
	db 43, MIRROR_MOVE
	db 46, AGILITY
	db 50, AEROBLAST
	db 0 ; no more level-up moves

Oricorio_pomEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ORICORIO_BAILE
	db EVOLVE_ITEM, MOON_STONE, ORICORIO_PAU
	db EVOLVE_ITEM, DUSK_STONE, ORICORIO_SENSU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, PECK
	db 10, BATON_PASS
	db 13, AIR_CUTTER
	db 20, CHARM
	db 23, FURY_STRIKES
	db 26, SWEET_KISS
	db 30, RECOVER
	db 33, MEAN_LOOK
	db 36, AIR_SLASH
	db 40, THUNDERBOLT
	db 43, MIRROR_MOVE
	db 46, AGILITY
	db 50, AEROBLAST
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 10, SMOG
	db 14, ROAR
	db 19, BITE
	db 28, FLAME_WHEEL
	db 33, FAINT_ATTACK
	db 42, FLAMETHROWER
	db 48, CRUNCH
	db 52, NASTY_PLOT
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SMOG
	db 1, ROAR
	db 1, BITE
	db 30, FLAME_WHEEL
	db 37, FAINT_ATTACK
	db 39, FIRE_BLAST
	db 41, NASTY_PLOT
	db 48, FLAMETHROWER
	db 56, CRUNCH
	db 0 ; no more level-up moves

Oricorio_pauEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ORICORIO_BAILE
	db EVOLVE_ITEM, THUNDERSTONE, ORICORIO_POM
	db EVOLVE_ITEM, DUSK_STONE, ORICORIO_SENSU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, PECK
	db 10, BATON_PASS
	db 13, AIR_CUTTER
	db 20, CHARM
	db 23, FURY_STRIKES
	db 26, SWEET_KISS
	db 30, RECOVER
	db 33, MEAN_LOOK
	db 36, AIR_SLASH
	db 40, PSYCHIC_M
	db 43, MIRROR_MOVE
	db 46, AGILITY
	db 50, AEROBLAST
	db 0 ; no more level-up moves

Oricorio_sensuEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ORICORIO_BAILE
	db EVOLVE_ITEM, THUNDERSTONE, ORICORIO_POM
	db EVOLVE_ITEM, MOON_STONE, ORICORIO_PAU
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, PECK
	db 10, BATON_PASS
	db 13, AIR_CUTTER
	db 20, CHARM
	db 23, FURY_STRIKES
	db 26, SWEET_KISS
	db 30, RECOVER
	db 33, MEAN_LOOK
	db 36, AIR_SLASH
	db 40, SHADOW_BALL
	db 43, MIRROR_MOVE
	db 46, AGILITY
	db 50, AEROBLAST
	db 0 ; no more level-up moves

OranguruEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 5, ENCORE
	db 18, PSYCH_UP
	db 22, FAINT_ATTACK
	db 26, NASTY_PLOT
	db 29, CALM_MIND
	db 31, ZEN_HEADBUTT
	db 43, PSYCHIC_M
	db 50, FUTURE_SIGHT
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 5, SPITE
	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 20, MEAN_LOOK
	db 23, OMINOUS_WIND
	db 27, PSYBEAM
	db 33, PAIN_SPLIT
	db 35, PURSUIT
	db 39, SHADOW_BALL
	db 44, PERISH_SONG
	db 53, POWER_GEM
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, MAGICAL_LEAF
	db 1, POWER_GEM
	db 1, SHADOW_BALL
	db 1, SPITE
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_LEVEL, 16, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, CONVERSION2
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 9, CONFUSION
	db 12, AGILITY
	db 16, SHOCK_WAVE
	db 18, PSYBEAM
	db 21, RECOVER
	db 27, SIGNAL_BEAM
	db 29, SWORDS_DANCE
	db 40, TRI_ATTACK
	db 42, SUBSTITUTE
	db 55, ZAP_CANNON
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON_Z
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, CONVERSION2
	db 1, PSYBEAM
	db 1, SHOCK_WAVE
	db 29, SIGNAL_BEAM
	db 39, SAFEGUARD
	db 40, SHOCK_WAVE
	db 44, TRI_ATTACK
	db 45, ZAP_CANNON
	db 66, HYPER_BEAM
	db 0 ; no more level-up moves

Porygon_zEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, CONVERSION2
	db 1, PSYBEAM
	db 1, SHOCK_WAVE
	db 29, SIGNAL_BEAM
	db 32, SHOCK_WAVE
	db 36, GLITCH_M
	db 40, ZAP_CANNON
	db 42, TRI_ATTACK
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_PULSE
	db 7, MIST
	db 11, ICE_SHARD
	db 13, SING
	db 14, CONFUSE_RAY
	db 15, RECOVER
	db 18, BODY_SLAM
	db 28, PERISH_SONG
	db 30, RAIN_DANCE
	db 33, ICE_BEAM
	db 43, SAFEGUARD
	db 45, SURF
	db 50, HYDRO_PUMP
	db 52, DRAGON_PULSE
	db 54, BLIZZARD
	db 0 ; no more level-up moves

AmauraEvosAttacks:
	db EVOLVE_LEVEL, 39, AURORUS
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, ROCK_THROW
	db 1, ICY_WIND
	db 1, AURORA_BEAM
	db 1, ANCIENTPOWER
	db 27, ROLLOUT
	db 34, ICICLE_CRASH
	db 36, ENCORE
	db 39, TRI_ATTACK
	db 40, HAIL
	db 46, LIGHT_SCREEN
	db 48, ICE_BEAM
	db 56, HYPER_BEAM
	db 62, BLIZZARD
	db 0 ; no more level-up moves

AurorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, AURORA_BEAM
	db 1, ANCIENTPOWER
	db 1, ROLLOUT
	db 1, ICICLE_CRASH
	db 40, TRI_ATTACK
	db 41, HAIL
	db 49, LIGHT_SCREEN
	db 53, ICE_BEAM
	db 63, HYPER_BEAM
	db 71, BLIZZARD
	db 0 ; no more level-up moves

Minior_meteorEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MINIOR_CORE
	db 0 ; no more evolutions
	db 1, ROLLOUT
	db 1, ANCIENTPOWER
	db 1, DOUBLE_EDGE
	db 1, EXPLOSION
	db 0 ; no more level-up moves

Minior_coreEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MINIOR_METEOR
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, ANCIENTPOWER
	db 1, POWER_GEM
	db 1, EXPLOSION
	db 0 ; no more level-up moves

DrampaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 5, TWISTER
	db 9, PROTECT
	db 13, GLARE
	db 21, DRAGON_RAGE
	db 24, LIGHT_SCREEN
	db 25, HIDDEN_POWER
	db 27, DRAGONBREATH
	db 28, SAFEGUARD
	db 34, EXTRASENSORY
	db 39, DRAGON_PULSE
	db 45, FLY
	db 49, HYPER_VOICE
	db 53, OUTRAGE
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, METRONOME
	db 1, TACKLE
	db 10, AMNESIA
	db 17, HEADBUTT
	db 18, SCREECH
	db 25, REST
	db 26, BELLY_DRUM
	db 28, SNORE
	db 30, SLEEP_TALK
	db 33, BODY_SLAM
	db 43, ROLLOUT
	db 44, CROSS_CHOP
	db 46, CRUNCH
	db 48, DOUBLE_EDGE
	db 53, GIGA_IMPACT
	db 55, IRON_HEAD
	db 0 ; no more level-up moves

MawileEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MEGA_MAWILE
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, FAIRY_WIND
	db 1, GROWL
	db 7, CHARM
	db 8, ENCORE
	db 10, BITE
	db 16, HORN_ATTACK
	db 20, FAINT_ATTACK
	db 24, BATON_PASS
	db 28, PLAY_ROUGH
	db 34, CRUNCH
	db 36, IRON_HEAD
	db 38, BARRIER
	db 40, PURSUIT
	db 44, RECOVER
	db 0 ; no more level-up moves

Mega_mawileEvosAttacks:
	db 0 ; no more evolutions
	db 1, MOONBLAST
	db 1, CRUNCH
	db 1, IRON_HEAD
	db 1, PLAY_ROUGH
	db 0 ; no more level-up moves

SkrelpEvosAttacks:
	db EVOLVE_LEVEL, 48, DRAGALGE
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, FAINT_ATTACK
	db 10, LEER
	db 12, BUBBLE
	db 13, ACID
	db 25, WATER_PULSE
	db 26, DOUBLE_TEAM
	db 32, TOXIC
	db 37, WATERFALL
	db 40, SLUDGE_BOMB
	db 44, HYDRO_PUMP
	db 47, DRAGON_PULSE
	db 0 ; no more level-up moves

DragalgeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_CLAW
	db 1, TOXIC
	db 1, SLUDGE_BOMB
	db 1, HYDRO_PUMP
	db 50, DRAGON_PULSE
	db 66, OUTRAGE
	db 0 ; no more level-up moves

DreepyEvosAttacks:
	db EVOLVE_LEVEL, 50, DRAKLOAK
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, BITE
	db 1, BUG_BUZZ
	db 1, QUICK_ATTACK
	db 0 ; no more level-up moves

DrakloakEvosAttacks:
	db EVOLVE_LEVEL, 60, DRAGAPULT
	db 0 ; no more evolutions
	db 1, OMINOUS_WIND
	db 1, DOUBLE_KICK
	db 1, THUNDERPUNCH
	db 1, DRAGON_DANCE
	db 54, TAKE_DOWN
	db 61, OUTRAGE
	db 66, DOUBLE_EDGE
	db 72, EXPLOSION
	db 0 ; no more level-up moves

DragapultEvosAttacks:
	db 0 ; no more evolutions
	db 1, OMINOUS_WIND
	db 1, DOUBLE_KICK
	db 1, OUTRAGE
	db 1, DRAGON_DANCE
	db 63, OUTRAGE
	db 70, DOUBLE_EDGE
	db 78, EXPLOSION
	db 0 ; no more level-up moves

BruxishEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 4, ASTONISH
	db 9, CONFUSION
	db 12, BITE
	db 17, AQUA_JET
	db 20, DISABLE
	db 25, PSYWAVE
	db 28, CRUNCH
	db 33, WATERFALL
	db 36, SCREECH
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LEECH_LIFE
	db 6, REFLECT
	db 8, LEECH_SEED
	db 14, LEECH_SEED
	db 18, SEED_BOMB
	db 21, CONFUSION
	db 22, STUN_SPORE
	db 25, RECOVER
	db 26, POISON_GAS
	db 27, PSYBEAM
	db 35, GIGA_DRAIN
	db 37, HIDDEN_POWER
	db 43, SOLARBEAM
	db 45, EXTRASENSORY
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_PULSE
	db 1, GIGA_DRAIN
	db 1, PSYBEAM
	db 1, SEED_BOMB
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, HAIL
	db 1, PSYCHIC_M
	db 1, CALM_MIND
	db 1, BLIZZARD
	db 0 ; no more level-up moves

ApplinEvosAttacks:
	db EVOLVE_ITEM, TART_APPLE, FLAPPLE
	db EVOLVE_ITEM, SWEET_APPLE, APPLETUN
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, DEFENSE_CURL
	db 15, ROLLOUT
	db 0 ; no more level-up moves

FlappleEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, GROWTH
	db 1, TWISTER
	db 1, WING_ATTACK
	db 4, ACID
	db 8, AERIAL_ACE
	db 12, LEECH_SEED
	db 16, PROTECT
	db 20, DRAGONBREATH
	db 24, DRAGON_DANCE
	db 28, DRAGON_PULSE
	db 36, BARRIER
	db 40, FLY
	db 44, OUTRAGE
	db 0 ; no more level-up moves

AppletunEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, GROWTH
	db 1, HEADBUTT
	db 1, STUN_SPORE
	db 4, CURSE
	db 8, STOMP
	db 12, LEECH_SEED
	db 16, PROTECT
	db 20, SEED_BOMB
	db 24, RECOVER
	db 28, ENERGY_BALL
	db 32, BODY_SLAM
	db 36, BARRIER
	db 40, DRAGON_PULSE
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, TACKLE
	db 3, ROCK_THROW
	db 8, SANDSTORM
	db 12, SCREECH
	db 19, ROCK_SLIDE
	db 27, SCARY_FACE
	db 28, THRASH
	db 30, DARK_PULSE
	db 32, PURSUIT
	db 40, CRUNCH
	db 45, EARTHQUAKE
	db 47, STONE_EDGE
	db 54, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, SANDSTORM
	db 1, ROCK_SLIDE
	db 1, SCARY_FACE
	db 1, THRASH
	db 31, DARK_PULSE
	db 34, PURSUIT
	db 44, CRUNCH
	db 52, EARTHQUAKE
	db 55, STONE_EDGE
	db 64, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_SLIDE
	db 1, THRASH
	db 1, CRUNCH
	db 1, EARTHQUAKE
	db 57, STONE_EDGE
	db 72, HYPER_BEAM
	db 78, GIGA_IMPACT
	db 0 ; no more level-up moves

ZacianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, IRON_HEAD
	db 1, MOONBLAST
	db 1, GIGA_IMPACT
	db 0 ; no more level-up moves

MewthreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZEN_HEADBUTT
	db 2, PSYCHIC_M
	db 3, HI_JUMP_KICK
	db 4, MIRROR_COAT
	db 0 ; no more level-up moves

PoppyEvosAttacks:
	db 0 ; no more evolutions
	db 1, BULLDOZE
	db 1, PLAY_ROUGH
	db 1, BITE
	db 1, BODY_SLAM
	db 0 ; no more level-up moves

DaisyEvosAttacks:
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, PSYCHIC_M
	db 1, ZEN_HEADBUTT
	db 1, NASTY_PLOT
	db 0 ; no more level-up moves

BoomerEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_BALL
	db 2, EXTRASENSORY
	db 3, OMINOUS_WIND
	db 4, REST
	db 0 ; no more level-up moves

KirbyEvosAttacks:
	db 0 ; no more evolutions
	db 1, BODY_SLAM
	db 2, FLY
	db 3, SLASH
	db 4, REST
	db 0 ; no more level-up moves

M_blockEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 2, GLITCH_M
	db 3, FLAMETHROWER
	db 4, BULLDOZE
	db 0 ; no more level-up moves

Bad_eggEvosAttacks:
	db 0 ; no more evolutions
	db 1, MINIMIZE
	db 2, GLITCH_M
	db 3, SIGNAL_BEAM
	db 4, SLUDGE_BOMB
	db 0 ; no more level-up moves

FuriousbEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_PULSE
	db 1, GLITCH_M
	db 1, GIGA_IMPACT
	db 1, SOLARBEAM
	db 0 ; no more level-up moves

