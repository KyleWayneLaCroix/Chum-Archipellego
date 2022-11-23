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
	db EVOLVE_LEVEL, 32, DOOMSTONE
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

DoomstoneEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CRYPTIID
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

CryptiidEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	db EVOLVE_LEVEL, 34, LAMPENT
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LICK
	db 3, MINIMIZE
	db 4, SMOG
	db 9, FIRE_SPIN
	db 11, CONFUSE_RAY
	db 15, NIGHT_SHADE
	db 41, CURSE
	db 47, SHADOW_BALL
	db 54, PAIN_SPLIT
	db 0 ; no more level-up moves

LampentEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CHANDELURE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LICK
	db 1, MINIMIZE
	db 2, SMOG
	db 9, FIRE_SPIN
	db 11, CONFUSE_RAY
	db 15, NIGHT_SHADE
	db 43, CURSE
	db 51, SHADOW_BALL
	db 59, PAIN_SPLIT
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, CURSE
	db 1, EMBER
	db 1, FIRE_SPIN
	db 1, LICK
	db 1, MINIMIZE
	db 1, NIGHT_SHADE
	db 1, PAIN_SPLIT
	db 1, SHADOW_BALL
	db 1, SMOG
	db 0 ; no more level-up moves

HonedgeEvosAttacks:
	db EVOLVE_LEVEL, 36, DOUBLADE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, FURY_CUTTER
	db 9, SWORDS_DANCE
	db 13, PURSUIT
	db 27, SLASH
	db 32, BARRIER
	db 0 ; no more level-up moves

DoubladeEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, AEGISLASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, FURY_CUTTER
	db 11, SWORDS_DANCE
	db 13, PURSUIT
	db 21, WING_ATTACK
	db 27, SLASH
	db 32, BARRIER
	db 0 ; no more level-up moves

AegislashEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

RookideeEvosAttacks:
	db EVOLVE_LEVEL, 18, CORVISQUIRE
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 24, SCARY_FACE
	db 28, DRILL_PECK
	db 32, SWAGGER
	db 36, SKY_ATTACK
	db 0 ; no more level-up moves

CorvisquireEvosAttacks:
	db EVOLVE_LEVEL, 38, CORVIKNIGHT
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 28, SCARY_FACE
	db 34, DRILL_PECK
	db 41, SWAGGER
	db 46, SKY_ATTACK
	db 0 ; no more level-up moves

CorviknightEvosAttacks:
	db 0 ; no more evolutions
	db 1, STEEL_WING
	db 1, BARRIER
	db 1, LEER
	db 1, PECK
	db 28, SCARY_FACE
	db 34, DRILL_PECK
	db 42, SWAGGER
	db 51, SKY_ATTACK
	db 0 ; no more level-up moves

FarfetchdEvosAttacks:
	db EVOLVE_LEVEL, 28, LUXWAN
	db EVOLVE_LEVEL, 29, SIRFETCHD
	db 0 ; no more evolutions
	db 1, MIRROR_MOVE
	db 1, PECK
	db 1, QUICK_ATTACK
	db 2, SMOKESCREEN
	db 4, FOCUS_ENERGY
	db 5, LEER
	db 9, FURY_CUTTER
	db 12, CUT
	db 12, WING_ATTACK
	db 13, RAZOR_LEAF
	db 27, SWORDS_DANCE
	db 29, SLASH
	db 33, AGILITY
	db 36, SKY_ATTACK
	db 37, AEROBLAST
	db 41, SKY_ATTACK
	db 44, FALSE_SWIPE
	db 44, FLY
	db 0 ; no more level-up moves

LuxwanEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

SirfetchdEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, FURY_CUTTER
	db 1, LEER
	db 1, PECK
	db 1, SMOKESCREEN
	db 15, ROCK_SMASH
	db 21, CROSS_CHOP
	db 25, PROTECT
	db 41, ROCK_SMASH
	db 45, SWORDS_DANCE
	db 51, STRENGTH
	db 65, SKY_ATTACK
	db 0 ; no more level-up moves

YungoosEvosAttacks:
	db EVOLVE_LEVEL, 20, GUMSHOOS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 7, PURSUIT
	db 11, SMOKESCREEN
	db 16, BIDE
	db 19, BITE
	db 22, MUD_SLAP
	db 25, SUPER_FANG
	db 28, TAKE_DOWN
	db 31, SCARY_FACE
	db 34, CRUNCH
	db 37, HYPER_FANG
	db 43, THRASH
	db 46, REST
	db 0 ; no more level-up moves

GumshoosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, LEER
	db 4, PURSUIT
	db 5, SMOKESCREEN
	db 16, BIDE
	db 19, BITE
	db 23, MUD_SLAP
	db 27, SUPER_FANG
	db 31, TAKE_DOWN
	db 35, SCARY_FACE
	db 39, CRUNCH
	db 43, HYPER_FANG
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
	db 16, DOUBLE_KICK
	db 21, HEADBUTT
	db 25, TAKE_DOWN
	db 32, REVERSAL
	db 41, DOUBLE_EDGE
	db 0 ; no more level-up moves

DubwoolEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, GROWL
	db 1, MIRROR_MOVE
	db 1, TACKLE
	db 16, DOUBLE_KICK
	db 21, HEADBUTT
	db 27, TAKE_DOWN
	db 38, REVERSAL
	db 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

YamperEvosAttacks:
	db EVOLVE_LEVEL, 25, BOLTUND
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 11, BITE
	db 15, ROAR
	db 21, SPARK
	db 26, CHARM
	db 31, CRUNCH
	db 0 ; no more level-up moves

BoltundEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, TACKLE
	db 15, ROAR
	db 21, SPARK
	db 28, CHARM
	db 34, CRUNCH
	db 0 ; no more level-up moves

EmolgaEvosAttacks:
	db 0 ; no more evolutions
	db 4, QUICK_ATTACK
	db 6, LEER
	db 15, SPARK
	db 16, PURSUIT
	db 17, DOUBLE_TEAM
	db 29, AEROBLAST
	db 35, LIGHT_SCREEN
	db 37, ENCORE
	db 47, AGILITY
	db 0 ; no more level-up moves

GrubbinEvosAttacks:
	db EVOLVE_LEVEL, 20, CHARJABUG
	db 0 ; no more evolutions
	db 4, STRING_SHOT
	db 5, MUD_SLAP
	db 11, BITE
	db 17, SPARK
	db 19, AEROBLAST
	db 26, CRUNCH
	db 32, DIG
	db 0 ; no more level-up moves

CharjabugEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, VIKAVOLT
	db 0 ; no more evolutions
	db 2, STRING_SHOT
	db 3, MUD_SLAP
	db 7, BITE
	db 18, SPARK
	db 19, AEROBLAST
	db 31, CRUNCH
	db 41, DIG
	db 51, BARRIER
	db 0 ; no more level-up moves

VikavoltEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERBOLT
	db 1, BARRIER
	db 1, CRUNCH
	db 1, FLY
	db 2, STRING_SHOT
	db 3, MUD_SLAP
	db 7, BITE
	db 18, SPARK
	db 19, AEROBLAST
	db 25, DIG
	db 31, GUILLOTINE
	db 48, ZAP_CANNON
	db 51, FLY
	db 51, AGILITY
	db 0 ; no more level-up moves

BlipbugEvosAttacks:
	db EVOLVE_LEVEL, 10, DOTTLER
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

DottlerEvosAttacks:
	db EVOLVE_LEVEL, 30, ORBEETLE
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, LIGHT_SCREEN
	db 1, REFLECT
	db 0 ; no more level-up moves

OrbeetleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, LIGHT_SCREEN
	db 1, REFLECT
	db 4, CONFUSE_RAY
	db 12, AGILITY
	db 16, PSYBEAM
	db 21, HYPNOSIS
	db 32, MIRROR_COAT
	db 36, PSYCHIC_M
	db 0 ; no more level-up moves

SizzlipedeEvosAttacks:
	db EVOLVE_LEVEL, 28, CENTISKORCH
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SMOKESCREEN
	db 5, WRAP
	db 11, BITE
	db 15, FLAME_WHEEL
	db 31, STRENGTH
	db 35, FIRE_SPIN
	db 41, CRUNCH
	db 0 ; no more level-up moves

CentiskorchEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, EMBER
	db 1, SMOKESCREEN
	db 1, WRAP
	db 15, FLAME_WHEEL
	db 32, STRENGTH
	db 39, FIRE_SPIN
	db 46, CRUNCH
	db 0 ; no more level-up moves

SnomEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, FROSMOTH
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 0 ; no more level-up moves

FrosmothEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICY_WIND
	db 1, ATTRACT
	db 1, POWDER_SNOW
	db 4, STUN_SPORE
	db 12, MIST
	db 24, AURORA_BEAM
	db 41, BLIZZARD
	db 0 ; no more level-up moves

AronEvosAttacks:
	db EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 6, MUD_SLAP
	db 9, HEADBUTT
	db 12, METAL_CLAW
	db 19, ROAR
	db 23, BARRIER
	db 24, ROCK_SLIDE
	db 25, TAKE_DOWN
	db 28, PROTECT
	db 34, IRON_TAIL
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

LaironEvosAttacks:
	db EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 3, MUD_SLAP
	db 5, HEADBUTT
	db 11, METAL_CLAW
	db 19, ROAR
	db 24, BARRIER
	db 24, ROCK_SLIDE
	db 26, TAKE_DOWN
	db 29, PROTECT
	db 37, IRON_TAIL
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, DEFENSE_CURL
	db 3, MUD_SLAP
	db 5, HEADBUTT
	db 11, METAL_CLAW
	db 19, ROAR
	db 24, BARRIER
	db 24, ROCK_SLIDE
	db 26, TAKE_DOWN
	db 29, PROTECT
	db 38, IRON_TAIL
	db 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

NoibatEvosAttacks:
	db EVOLVE_LEVEL, 48, NOIVERN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, SUPERSONIC
	db 3, ABSORB
	db 5, LEECH_LIFE
	db 8, SCREECH
	db 9, GUST
	db 12, DOUBLE_TEAM
	db 14, BITE
	db 16, WING_ATTACK
	db 18, AGILITY
	db 31, RAZOR_WIND
	db 37, ROAR
	db 41, SUPER_FANG
	db 45, FLY
	db 0 ; no more level-up moves

NoivernEvosAttacks:
	db 0 ; no more evolutions
	db 1, MOONLIGHT
	db 1, SUPERSONIC
	db 1, TACKLE
	db 2, ABSORB
	db 5, LEECH_LIFE
	db 8, SCREECH
	db 9, GUST
	db 12, DOUBLE_TEAM
	db 14, BITE
	db 16, WING_ATTACK
	db 18, AGILITY
	db 31, RAZOR_WIND
	db 37, ROAR
	db 41, SUPER_FANG
	db 49, FLY
	db 0 ; no more level-up moves

WoobatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SWOOBAT
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 7, GUST
	db 21, ATTRACT
	db 29, AMNESIA
	db 32, FLY
	db 38, FUTURE_SIGHT
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

SwoobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 4, GUST
	db 21, ATTRACT
	db 29, AMNESIA
	db 32, FLY
	db 38, FUTURE_SIGHT
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	db EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, CONFUSION
	db 9, DOUBLE_TEAM
	db 12, TELEPORT
	db 18, PSYBEAM
	db 21, RECOVER
	db 22, RECOVER
	db 28, PSYCHIC_M
	db 35, FUTURE_SIGHT
	db 37, CHARM
	db 39, HYPNOSIS
	db 44, DREAM_EATER
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	db EVOLVE_LEVEL, 30, GARDEVOIR
	db EVOLVE_ITEM, SUN_STONE, GALLADE
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, CONFUSION
	db 5, DOUBLE_TEAM
	db 7, TELEPORT
	db 18, PSYBEAM
	db 23, RECOVER
	db 25, RECOVER
	db 31, PSYCHIC_M
	db 41, FUTURE_SIGHT
	db 43, CHARM
	db 45, HYPNOSIS
	db 53, DREAM_EATER
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, GROWL
	db 3, CONFUSION
	db 5, DOUBLE_TEAM
	db 7, TELEPORT
	db 18, PSYBEAM
	db 23, RECOVER
	db 25, RECOVER
	db 32, PSYCHIC_M
	db 45, FUTURE_SIGHT
	db 52, HYPNOSIS
	db 61, DREAM_EATER
	db 0 ; no more level-up moves

GalladeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, DREAM_EATER
	db 1, FUTURE_SIGHT
	db 1, GROWL
	db 1, HYPNOSIS
	db 1, LEER
	db 1, PSYBEAM
	db 1, PSYCHIC_M
	db 1, RECOVER
	db 3, CONFUSION
	db 4, DOUBLE_TEAM
	db 6, TELEPORT
	db 11, SLASH
	db 14, FURY_CUTTER
	db 25, RECOVER
	db 28, SWORDS_DANCE
	db 44, FALSE_SWIPE
	db 48, PROTECT
	db 0 ; no more level-up moves

HatennaEvosAttacks:
	db EVOLVE_LEVEL, 32, HATTREM
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

HattremEvosAttacks:
	db EVOLVE_LEVEL, 42, HATTERENE
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

HattereneEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	db EVOLVE_LEVEL, 20, LINOONE
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, LEER
	db 9, HEADBUTT
	db 11, SMOKESCREEN
	db 23, PIN_MISSILE
	db 26, THIEF
	db 29, TAKE_DOWN
	db 32, FLAIL
	db 36, DOUBLE_EDGE
	db 36, REST
	db 41, BELLY_DRUM
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db EVOLVE_LEVEL, 35, OBSTAGOON
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PIN_MISSILE
	db 1, TACKLE
	db 2, LEER
	db 5, HEADBUTT
	db 9, SMOKESCREEN
	db 28, TAKE_DOWN
	db 31, THIEF
	db 35, SLASH
	db 38, DOUBLE_EDGE
	db 38, FLAIL
	db 45, REST
	db 51, BELLY_DRUM
	db 0 ; no more level-up moves

ObstagoonEvosAttacks:
	db 0 ; no more evolutions
	db 1, CROSS_CHOP
	db 1, LEER
	db 1, LICK
	db 1, PIN_MISSILE
	db 1, SMOKESCREEN
	db 1, SUBMISSION
	db 1, TACKLE
	db 12, HEADBUTT
	db 23, REST
	db 28, TAKE_DOWN
	db 35, SCARY_FACE
	db 42, COUNTER
	db 56, DOUBLE_EDGE
	db 0 ; no more level-up moves

MudbrayEvosAttacks:
	db EVOLVE_LEVEL, 30, MUDSDALE
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, ROCK_SMASH
	db 12, DOUBLE_KICK
	db 16, STOMP
	db 21, BARRIER
	db 21, STRENGTH
	db 22, BIDE
	db 32, COUNTER
	db 37, EARTHQUAKE
	db 0 ; no more level-up moves

MudsdaleEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, ROCK_SMASH
	db 11, DOUBLE_KICK
	db 16, STOMP
	db 19, BARRIER
	db 21, STRENGTH
	db 22, BIDE
	db 36, COUNTER
	db 44, EARTHQUAKE
	db 0 ; no more level-up moves

DeerlingEvosAttacks:
	db EVOLVE_LEVEL, 34, SAWSBUCK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, SMOKESCREEN
	db 11, DOUBLE_KICK
	db 13, LEECH_SEED
	db 21, TAKE_DOWN
	db 24, ROLLING_KICK
	db 36, CHARM
	db 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

SawsbuckEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGAHORN
	db 1, TACKLE
	db 2, GROWL
	db 4, SMOKESCREEN
	db 11, DOUBLE_KICK
	db 13, LEECH_SEED
	db 21, TAKE_DOWN
	db 24, ROLLING_KICK
	db 36, CHARM
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

RockruffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, LYCANROC_MIDDAY
	db EVOLVE_HAPPINESS, TR_NITE, LYCANROC_DUSK
	db EVOLVE_ITEM, MOON_STONE, LYCANROC_MIDNIGHT
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 4, SMOKESCREEN
	db 8, DOUBLE_TEAM
	db 11, BITE
	db 14, ROCK_THROW
	db 26, ROAR
	db 33, ROCK_SLIDE
	db 38, CRUNCH
	db 38, SCARY_FACE
	db 0 ; no more level-up moves

Lycanroc_middayEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, DOUBLE_TEAM
	db 1, LEER
	db 1, QUICK_ATTACK
	db 1, TACKLE
	db 2, SMOKESCREEN
	db 7, BITE
	db 14, ROCK_THROW
	db 27, ROAR
	db 34, ROCK_SLIDE
	db 41, CRUNCH
	db 41, SCARY_FACE
	db 0 ; no more level-up moves

Lycanroc_duskEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 1, ANCIENTPOWER
	db 1, COUNTER
	db 1, DOUBLE_TEAM
	db 1, ENDURE
	db 1, LEER
	db 1, QUICK_ATTACK
	db 1, REVERSAL
	db 1, TACKLE
	db 2, SMOKESCREEN
	db 9, BITE
	db 13, ROCK_THROW
	db 28, ROAR
	db 35, ROCK_SLIDE
	db 41, CRUNCH
	db 42, SCARY_FACE
	db 0 ; no more level-up moves

Lycanroc_midnightEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, DOUBLE_TEAM
	db 1, ENDURE
	db 1, LEER
	db 1, REVERSAL
	db 1, TACKLE
	db 2, SMOKESCREEN
	db 7, BITE
	db 14, ROCK_THROW
	db 27, ROAR
	db 34, ROCK_SLIDE
	db 41, CRUNCH
	db 41, SCARY_FACE
	db 0 ; no more level-up moves

BarboachEvosAttacks:
	db EVOLVE_LEVEL, 30, WHISCASH
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 9, WATER_GUN
	db 18, AMNESIA
	db 21, MAGNITUDE
	db 26, REST
	db 26, SNORE
	db 31, WATERFALL
	db 34, EARTHQUAKE
	db 39, FUTURE_SIGHT
	db 44, FISSURE
	db 0 ; no more level-up moves

WhiscashEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 1, MUD_SLAP
	db 8, WATER_GUN
	db 18, AMNESIA
	db 21, MAGNITUDE
	db 26, REST
	db 26, SNORE
	db 34, WATERFALL
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
	db 13, CURSE
	db 15, NIGHT_SHADE
	db 18, CONFUSE_RAY
	db 21, TOXIC
	db 31, SHADOW_BALL
	db 33, DREAM_EATER
	db 38, DESTINY_BOND
	db 45, NIGHTMARE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_TRADE, -1, GENGAR
	db 0 ; no more evolutions
	db 1, LICK
	db 1, SMOG
	db 3, HYPNOSIS
	db 4, SPITE
	db 7, POISON_GAS
	db 12, MEAN_LOOK
	db 13, CURSE
	db 16, NIGHT_SHADE
	db 18, CONFUSE_RAY
	db 21, TOXIC
	db 35, SHADOW_BALL
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 58, NIGHTMARE
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MEGA_GENGAR
	db 0 ; no more evolutions
	db 1, DISABLE
	db 1, HAZE
	db 1, LICK
	db 1, PERISH_SONG
	db 1, SMOG
	db 3, HYPNOSIS
	db 4, SPITE
	db 7, POISON_GAS
	db 12, MEAN_LOOK
	db 13, CURSE
	db 16, NIGHT_SHADE
	db 18, CONFUSE_RAY
	db 21, TOXIC
	db 35, SHADOW_BALL
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 58, NIGHTMARE
	db 0 ; no more level-up moves

Mega_gengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISABLE
	db 1, HAZE
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SMOG
	db 3, SPITE
	db 7, POISON_GAS
	db 8, MEAN_LOOK
	db 12, CURSE
	db 13, CONFUSE_RAY
	db 14, NIGHT_SHADE
	db 21, TOXIC
	db 32, SHADOW_BALL
	db 41, DREAM_EATER
	db 51, DESTINY_BOND
	db 61, NIGHTMARE
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

DwebbleEvosAttacks:
	db EVOLVE_LEVEL, 34, CRUSTLE
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 6, DEFENSE_CURL
	db 9, SMOKESCREEN
	db 28, ROCK_SLIDE
	db 29, SLASH
	db 37, FLAIL
	db 0 ; no more level-up moves

CrustleEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 3, DEFENSE_CURL
	db 5, SMOKESCREEN
	db 28, ROCK_SLIDE
	db 29, SLASH
	db 45, FLAIL
	db 0 ; no more level-up moves

LotadEvosAttacks:
	db EVOLVE_LEVEL, 14, LOMBRE
	db 0 ; no more evolutions
	db 1, LICK
	db 2, GROWL
	db 5, ABSORB
	db 6, WATER_GUN
	db 9, BUBBLE
	db 15, MIST
	db 16, FLAIL
	db 23, BUBBLEBEAM
	db 26, MEGA_DRAIN
	db 29, GIGA_DRAIN
	db 32, RAIN_DANCE
	db 0 ; no more level-up moves

LombreEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, LUDICOLO
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, LICK
	db 1, WATER_GUN
	db 2, GROWL
	db 5, ABSORB
	db 9, BUBBLE
	db 9, MIST
	db 12, MEGA_DRAIN
	db 24, BUBBLEBEAM
	db 36, GIGA_DRAIN
	db 37, THIEF
	db 43, RAIN_DANCE
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

LudicoloEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, BUBBLEBEAM
	db 1, FLAIL
	db 1, GIGA_DRAIN
	db 1, GROWL
	db 1, HYDRO_PUMP
	db 1, LICK
	db 1, MEGA_DRAIN
	db 1, MIST
	db 1, RAIN_DANCE
	db 1, WATER_GUN
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 4, RECOVER
	db 5, LEER
	db 9, TACKLE
	db 12, POISON_GAS
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 21, LEECH_SEED
	db 27, MEGA_DRAIN
	db 28, AEROBLAST
	db 28, COTTON_SPORE
	db 41, GIGA_DRAIN
	db 44, FLY
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 2, RECOVER
	db 3, LEER
	db 5, TACKLE
	db 12, POISON_GAS
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 23, LEECH_SEED
	db 31, MEGA_DRAIN
	db 32, AEROBLAST
	db 33, COTTON_SPORE
	db 49, GIGA_DRAIN
	db 53, FLY
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SPLASH
	db 2, RECOVER
	db 3, LEER
	db 5, TACKLE
	db 12, POISON_GAS
	db 14, STUN_SPORE
	db 16, SLEEP_POWDER
	db 23, LEECH_SEED
	db 34, AEROBLAST
	db 35, MEGA_DRAIN
	db 36, COTTON_SPORE
	db 54, GIGA_DRAIN
	db 58, FLY
	db 0 ; no more level-up moves

MorelullEvosAttacks:
	db EVOLVE_LEVEL, 24, SHIINOTIC
	db 0 ; no more evolutions
	db 1, ABSORB
	db 3, LICK
	db 8, FLASH
	db 14, MEGA_DRAIN
	db 14, MOONLIGHT
	db 17, SLEEP_POWDER
	db 18, CONFUSE_RAY
	db 28, GIGA_DRAIN
	db 36, SPORE
	db 43, DREAM_EATER
	db 0 ; no more level-up moves

ShiinoticEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 2, LICK
	db 4, FLASH
	db 14, MEGA_DRAIN
	db 14, MOONLIGHT
	db 17, CONFUSE_RAY
	db 17, SLEEP_POWDER
	db 31, GIGA_DRAIN
	db 41, SPORE
	db 51, DREAM_EATER
	db 0 ; no more level-up moves

AlomomolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, RECOVER
	db 9, BUBBLEBEAM
	db 17, RECOVER
	db 21, PROTECT
	db 37, HYDRO_PUMP
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
	db 21, BODY_SLAM
	db 24, AURORA_BEAM
	db 34, REST
	db 34, SNORE
	db 41, SURF
	db 42, BLIZZARD
	db 0 ; no more level-up moves

SealeoEvosAttacks:
	db EVOLVE_LEVEL, 44, WALREIN
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, GROWL
	db 1, POWDER_SNOW
	db 1, WATER_GUN
	db 4, ROLLOUT
	db 5, ENCORE
	db 17, SWAGGER
	db 21, BODY_SLAM
	db 24, AURORA_BEAM
	db 35, REST
	db 36, SNORE
	db 46, BLIZZARD
	db 46, SURF
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, DEFENSE_CURL
	db 1, GROWL
	db 1, POWDER_SNOW
	db 1, WATER_GUN
	db 5, ENCORE
	db 5, ROLLOUT
	db 21, BODY_SLAM
	db 22, SWAGGER
	db 24, AURORA_BEAM
	db 35, REST
	db 36, SNORE
	db 48, SURF
	db 51, BLIZZARD
	db 0 ; no more level-up moves

DewpiderEvosAttacks:
	db EVOLVE_LEVEL, 22, ARAQUANID
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, WATER_GUN
	db 8, MEAN_LOOK
	db 14, BUBBLEBEAM
	db 16, BITE
	db 21, HEADBUTT
	db 21, RECOVER
	db 29, CRUNCH
	db 34, LEECH_LIFE
	db 42, MIRROR_COAT
	db 0 ; no more level-up moves

AraquanidEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, WATER_GUN
	db 4, MEAN_LOOK
	db 14, BITE
	db 14, BUBBLEBEAM
	db 21, HEADBUTT
	db 22, RECOVER
	db 34, CRUNCH
	db 41, LEECH_LIFE
	db 54, MIRROR_COAT
	db 0 ; no more level-up moves

MareanieEvosAttacks:
	db EVOLVE_LEVEL, 38, TOXAPEX
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 3, PECK
	db 9, BITE
	db 28, RECOVER
	db 31, TOXIC
	db 38, PIN_MISSILE
	db 0 ; no more level-up moves

ToxapexEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 2, PECK
	db 4, BITE
	db 28, RECOVER
	db 32, TOXIC
	db 42, PIN_MISSILE
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	db EVOLVE_LEVEL, 20, METANG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 0 ; no more level-up moves

MetangEvosAttacks:
	db EVOLVE_LEVEL, 45, METAGROSS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, TAKE_DOWN
	db 11, CONFUSION
	db 11, METAL_CLAW
	db 27, PURSUIT
	db 29, SCARY_FACE
	db 37, PSYCHIC_M
	db 44, BARRIER
	db 48, AGILITY
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, TAKE_DOWN
	db 9, CONFUSION
	db 9, METAL_CLAW
	db 22, SCARY_FACE
	db 24, CROSS_CHOP
	db 27, PURSUIT
	db 37, PSYCHIC_M
	db 46, BARRIER
	db 51, AGILITY
	db 71, HYPER_BEAM
	db 0 ; no more level-up moves

JoltikEvosAttacks:
	db EVOLVE_LEVEL, 36, GALVANTULA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, LEECH_LIFE
	db 1, MEAN_LOOK
	db 2, STRING_SHOT
	db 5, THUNDER_WAVE
	db 11, FURY_CUTTER
	db 11, SCREECH
	db 26, SLASH
	db 35, AGILITY
	db 0 ; no more level-up moves

GalvantulaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, LEECH_LIFE
	db 1, MEAN_LOOK
	db 2, STRING_SHOT
	db 3, THUNDER_WAVE
	db 11, FURY_CUTTER
	db 12, SCREECH
	db 26, SLASH
	db 37, AGILITY
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	db EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 3, TACKLE
	db 7, STUN_SPORE
	db 11, LEECH_SEED
	db 15, MEGA_DRAIN
	db 21, HEADBUTT
	db 24, POISON_GAS
	db 33, GROWTH
	db 33, TOXIC
	db 37, GIGA_DRAIN
	db 47, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 2, TACKLE
	db 4, STUN_SPORE
	db 5, LEECH_SEED
	db 15, MEGA_DRAIN
	db 17, MACH_PUNCH
	db 21, HEADBUTT
	db 25, COUNTER
	db 39, MIND_READER
	db 0 ; no more level-up moves

MunnaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MUSHARNA
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, PSYWAVE
	db 11, PSYBEAM
	db 16, HYPNOSIS
	db 16, MOONLIGHT
	db 29, NIGHTMARE
	db 33, FUTURE_SIGHT
	db 36, PSYCHIC_M
	db 41, DREAM_EATER
	db 0 ; no more level-up moves

MusharnaEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, DREAM_EATER
	db 1, FUTURE_SIGHT
	db 1, HYPNOSIS
	db 1, MOONLIGHT
	db 1, PSYBEAM
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
	db 12, PSYBEAM
	db 14, HIDDEN_POWER
	db 17, LIGHT_SCREEN
	db 18, CHARM
	db 21, RECOVER
	db 32, FUTURE_SIGHT
	db 33, PAIN_SPLIT
	db 36, PSYCHIC_M
	db 0 ; no more level-up moves

DuosionEvosAttacks:
	db EVOLVE_LEVEL, 41, REUNICLUS
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, PROTECT
	db 1, PSYWAVE
	db 3, REFLECT
	db 4, ROLLOUT
	db 12, PSYBEAM
	db 14, HIDDEN_POWER
	db 17, LIGHT_SCREEN
	db 18, CHARM
	db 21, RECOVER
	db 34, FUTURE_SIGHT
	db 34, PAIN_SPLIT
	db 39, PSYCHIC_M
	db 0 ; no more level-up moves

ReuniclusEvosAttacks:
	db 0 ; no more evolutions
	db 1, CROSS_CHOP
	db 1, CONFUSION
	db 1, PROTECT
	db 1, PSYWAVE
	db 3, REFLECT
	db 4, ROLLOUT
	db 12, PSYBEAM
	db 14, HIDDEN_POWER
	db 17, LIGHT_SCREEN
	db 18, CHARM
	db 21, DIZZY_PUNCH
	db 21, RECOVER
	db 34, FUTURE_SIGHT
	db 34, PAIN_SPLIT
	db 39, PSYCHIC_M
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
	db 11, ACID
	db 18, SLUDGE
	db 24, TAKE_DOWN
	db 28, SLUDGE_BOMB
	db 35, AMNESIA
	db 35, TOXIC
	db 37, PAIN_SPLIT
	db 46, EXPLOSION
	db 0 ; no more level-up moves

GarbodorEvosAttacks:
	db 0 ; no more evolutions
	db 1, METAL_CLAW
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 11, ACID
	db 18, SLUDGE
	db 24, BODY_SLAM
	db 28, SLUDGE_BOMB
	db 37, TOXIC
	db 39, PAIN_SPLIT
	db 41, AMNESIA
	db 57, EXPLOSION
	db 0 ; no more level-up moves

SalanditEvosAttacks:
	db EVOLVE_LEVEL, 33, SALAZZLE
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POISON_GAS
	db 1, SCRATCH
	db 1, SCRATCH
	db 6, EMBER
	db 6, EMBER
	db 12, SMOG
	db 12, SMOG
	db 12, SWEET_SCENT
	db 12, SWEET_SCENT
	db 13, DRAGON_RAGE
	db 13, DRAGON_RAGE
	db 37, TOXIC
	db 37, TOXIC
	db 43, FLAMETHROWER
	db 43, FLAMETHROWER
	db 0 ; no more level-up moves

SalazzleEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISABLE
	db 1, DISABLE
	db 1, ENCORE
	db 1, ENCORE
	db 1, POISON_GAS
	db 1, POISON_GAS
	db 1, SCRATCH
	db 1, SCRATCH
	db 1, SWAGGER
	db 1, SWAGGER
	db 1, TACKLE
	db 1, TACKLE
	db 2, EMBER
	db 2, EMBER
	db 7, SWEET_SCENT
	db 7, SWEET_SCENT
	db 11, SMOG
	db 11, SMOG
	db 13, DRAGON_RAGE
	db 13, DRAGON_RAGE
	db 41, TOXIC
	db 41, TOXIC
	db 48, FLAMETHROWER
	db 48, FLAMETHROWER
	db 0 ; no more level-up moves

StunkyEvosAttacks:
	db EVOLVE_LEVEL, 34, SKUNTANK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 2, FOCUS_ENERGY
	db 3, POISON_GAS
	db 8, SCREECH
	db 13, SMOKESCREEN
	db 21, BITE
	db 23, SLASH
	db 25, ACID
	db 26, TOXIC
	db 46, EXPLOSION
	db 0 ; no more level-up moves

SkuntankEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 2, FOCUS_ENERGY
	db 2, POISON_GAS
	db 7, SCREECH
	db 12, SMOKESCREEN
	db 18, FLAMETHROWER
	db 21, BITE
	db 23, SLASH
	db 25, ACID
	db 26, TOXIC
	db 54, EXPLOSION
	db 0 ; no more level-up moves

GrenmarEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db EVOLVE_LEVEL, 33, YANMEGA
	db 0 ; no more evolutions
	db 1, FORESIGHT
	db 1, TACKLE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 21, PROTECT
	db 26, SUPERSONIC
	db 31, PURSUIT
	db 33, ANCIENTPOWER
	db 36, HYPNOSIS
	db 37, SWIFT
	db 42, WING_ATTACK
	db 46, SCREECH
	db 54, FLY
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, FORESIGHT
	db 1, TACKLE
	db 3, QUICK_ATTACK
	db 6, DOUBLE_TEAM
	db 17, PROTECT
	db 22, SUPERSONIC
	db 31, PURSUIT
	db 33, ANCIENTPOWER
	db 37, FLY
	db 42, SLASH
	db 45, SCREECH
	db 0 ; no more level-up moves

CherubiEvosAttacks:
	db EVOLVE_LEVEL, 25, CHERRIM
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, TACKLE
	db 7, GROWTH
	db 11, LEECH_SEED
	db 22, SUNNY_DAY
	db 31, TAKE_DOWN
	db 0 ; no more level-up moves

CherrimEvosAttacks:
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, TACKLE
	db 3, GROWTH
	db 11, LEECH_SEED
	db 18, SUNNY_DAY
	db 19, PETAL_DANCE
	db 34, TAKE_DOWN
	db 0 ; no more level-up moves

BounsweetEvosAttacks:
	db EVOLVE_LEVEL, 18, STEENEE
	db 0 ; no more evolutions
	db 1, SPLASH
	db 8, RAPID_SPIN
	db 12, RAZOR_LEAF
	db 16, SWEET_SCENT
	db 27, FLAIL
	db 0 ; no more level-up moves

SteeneeEvosAttacks:
	db EVOLVE_LEVEL, 28, TSAREENA
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, SPLASH
	db 4, RAPID_SPIN
	db 5, RAZOR_LEAF
	db 16, SWEET_SCENT
	db 28, STOMP
	db 0 ; no more level-up moves

TsareenaEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, SPLASH
	db 2, SWAGGER
	db 4, RAPID_SPIN
	db 5, RAZOR_LEAF
	db 16, SWEET_SCENT
	db 28, STOMP
	db 0 ; no more level-up moves

BouffalantEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PURSUIT
	db 1, TACKLE
	db 6, RAGE
	db 17, HORN_ATTACK
	db 21, SCARY_FACE
	db 31, FOCUS_ENERGY
	db 42, MEGAHORN
	db 43, REVERSAL
	db 51, THRASH
	db 54, SWORDS_DANCE
	db 0 ; no more level-up moves

FomantisEvosAttacks:
	db EVOLVE_LEVEL, 34, LURANTIS
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 11, GROWTH
	db 11, RAZOR_LEAF
	db 29, SLASH
	db 31, RECOVER
	db 31, SWEET_SCENT
	db 45, SUNNY_DAY
	db 0 ; no more level-up moves

LurantisEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 6, GROWTH
	db 7, RAZOR_LEAF
	db 29, SLASH
	db 31, RECOVER
	db 33, SWEET_SCENT
	db 53, SUNNY_DAY
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db EVOLVE_TRADE, HARD_STONE, KLEAVOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 2, LEER
	db 7, FOCUS_ENERGY
	db 11, PURSUIT
	db 14, FALSE_SWIPE
	db 22, AGILITY
	db 24, WING_ATTACK
	db 29, SLASH
	db 31, FURY_CUTTER
	db 32, RAZOR_WIND
	db 35, DOUBLE_TEAM
	db 46, SWORDS_DANCE
	db 49, FLY
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLY
	db 1, LEER
	db 1, QUICK_ATTACK
	db 1, WING_ATTACK
	db 6, FOCUS_ENERGY
	db 11, PURSUIT
	db 13, FALSE_SWIPE
	db 18, AGILITY
	db 23, METAL_CLAW
	db 31, FURY_CUTTER
	db 31, SLASH
	db 33, RAZOR_WIND
	db 36, BARRIER
	db 39, DOUBLE_TEAM
	db 48, SWORDS_DANCE
	db 0 ; no more level-up moves

KleavorEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, LEER
	db 1, TACKLE
	db 4, HORN_ATTACK
	db 5, ENDURE
	db 23, ROCK_SMASH
	db 24, COUNTER
	db 31, PIN_MISSILE
	db 33, TAKE_DOWN
	db 44, REVERSAL
	db 45, THRASH
	db 51, MEGAHORN
	db 51, SWORDS_DANCE
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 5, SMOG
	db 17, SMOKESCREEN
	db 21, SLUDGE
	db 31, HAZE
	db 33, TOXIC
	db 37, SLUDGE_BOMB
	db 41, EXPLOSION
	db 44, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, PSYBEAM
	db 1, SCREECH
	db 1, TACKLE
	db 3, SMOG
	db 12, SMOKESCREEN
	db 21, SLUDGE
	db 32, HAZE
	db 34, TOXIC
	db 41, SLUDGE_BOMB
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, POISON_GAS
	db 7, MUD_SLAP
	db 8, DEFENSE_CURL
	db 9, DISABLE
	db 18, SLUDGE
	db 21, MINIMIZE
	db 32, SCREECH
	db 35, SLUDGE_BOMB
	db 36, TOXIC
	db 38, SLUDGE_BOMB
	db 41, BARRIER
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, HAZE
	db 1, TACKLE
	db 3, POISON_GAS
	db 4, MUD_SLAP
	db 6, DEFENSE_CURL
	db 12, DISABLE
	db 19, MINIMIZE
	db 21, SLUDGE
	db 33, SCREECH
	db 36, SLUDGE_BOMB
	db 36, TOXIC
	db 41, SLUDGE_BOMB
	db 43, BARRIER
	db 0 ; no more level-up moves

EspurrEvosAttacks:
	db EVOLVE_LEVEL, 25, MEOWSTIC_M
	db EVOLVE_LEVEL, 26, MEOWSTIC_F
	db 0 ; no more evolutions
	db 1, LEER
	db 1, SCRATCH
	db 7, THIEF
	db 9, CONFUSION
	db 16, LIGHT_SCREEN
	db 17, PSYBEAM
	db 31, REFLECT
	db 0 ; no more level-up moves

Meowstic_mEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, MEAN_LOOK
	db 1, SCRATCH
	db 5, THIEF
	db 6, CONFUSION
	db 17, LIGHT_SCREEN
	db 17, PSYBEAM
	db 25, CHARM
	db 34, REFLECT
	db 42, PSYCHIC_M
	db 0 ; no more level-up moves

Meowstic_fEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, SCRATCH
	db 5, THIEF
	db 6, CONFUSION
	db 17, LIGHT_SCREEN
	db 17, PSYBEAM
	db 34, REFLECT
	db 34, SHADOW_BALL
	db 42, PSYCHIC_M
	db 51, FUTURE_SIGHT
	db 0 ; no more level-up moves

PurrloinEvosAttacks:
	db EVOLVE_LEVEL, 20, LIEPARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 2, GROWL
	db 9, SMOKESCREEN
	db 15, PURSUIT
	db 31, SLASH
	db 0 ; no more level-up moves

LiepardEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 5, SMOKESCREEN
	db 15, PURSUIT
	db 34, SLASH
	db 0 ; no more level-up moves

SkittyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, DELCATTY
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, LEER
	db 1, TACKLE
	db 4, FORESIGHT
	db 7, ATTRACT
	db 11, SING
	db 17, MIRROR_MOVE
	db 24, CHARM
	db 33, THIEF
	db 37, HEAL_BELL
	db 41, DOUBLE_EDGE
	db 0 ; no more level-up moves

DelcattyEvosAttacks:
	db 0 ; no more evolutions
	db 1, ATTRACT
	db 1, GROWL
	db 1, SING
	db 0 ; no more level-up moves

LitleoEvosAttacks:
	db EVOLVE_LEVEL, 35, PYROAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 5, EMBER
	db 8, GROWTH
	db 11, HEADBUTT
	db 21, TAKE_DOWN
	db 36, FLAMETHROWER
	db 39, CRUNCH
	db 0 ; no more level-up moves

PyroarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPER_BEAM
	db 1, LEER
	db 1, TACKLE
	db 3, EMBER
	db 5, GROWTH
	db 11, HEADBUTT
	db 21, TAKE_DOWN
	db 38, FLAMETHROWER
	db 42, CRUNCH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 3, ROAR
	db 7, EMBER
	db 11, LEER
	db 23, FLAME_WHEEL
	db 24, REVERSAL
	db 26, TAKE_DOWN
	db 36, AGILITY
	db 38, CRUNCH
	db 41, FLAMETHROWER
	db 41, OUTRAGE
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, AGILITY
	db 1, BITE
	db 1, CRUNCH
	db 1, DOUBLE_EDGE
	db 1, EMBER
	db 1, FLAME_WHEEL
	db 1, FLAMETHROWER
	db 1, LEER
	db 1, REVERSAL
	db 1, ROAR
	db 1, TAKE_DOWN
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db EVOLVE_LEVEL, 32, WYRDEER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, LEER
	db 9, LICK
	db 13, HYPNOSIS
	db 17, STOMP
	db 22, SMOKESCREEN
	db 28, TAKE_DOWN
	db 32, CONFUSE_RAY
	db 43, ROLLING_KICK
	db 0 ; no more level-up moves

WyrdeerEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

ChatotEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 5, GROWL
	db 9, MIRROR_MOVE
	db 13, SING
	db 31, MIRROR_MOVE
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db EVOLVE_LEVEL, 31, EXCADRILL
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, RAPID_SPIN
	db 7, MUD_SLAP
	db 15, METAL_CLAW
	db 21, DIG
	db 26, SLASH
	db 28, ROCK_SLIDE
	db 34, EARTHQUAKE
	db 36, SWORDS_DANCE
	db 37, SANDSTORM
	db 47, FISSURE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 2, RAPID_SPIN
	db 4, MUD_SLAP
	db 12, HORN_DRILL
	db 15, METAL_CLAW
	db 21, DIG
	db 26, SLASH
	db 28, ROCK_SLIDE
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
	db 18, ROAR
	db 29, BELLY_DRUM
	db 36, SEISMIC_TOSS
	db 38, ENDURE
	db 45, REVERSAL
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 1, TACKLE
	db 2, SMOKESCREEN
	db 4, KARATE_CHOP
	db 13, VITAL_THROW
	db 18, ROAR
	db 31, BELLY_DRUM
	db 41, SEISMIC_TOSS
	db 44, ENDURE
	db 54, REVERSAL
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERRSERKER
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 8, BITE
	db 23, PAY_DAY
	db 24, SCREECH
	db 38, SLASH
	db 45, SWAGGER
	db 0 ; no more level-up moves

PerrserkerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, GROWL
	db 1, SCRATCH
	db 12, PAY_DAY
	db 16, METAL_CLAW
	db 24, SWAGGER
	db 36, SCREECH
	db 42, SLASH
	db 54, THRASH
	db 0 ; no more level-up moves

WingullEvosAttacks:
	db EVOLVE_LEVEL, 28, PELIPPER
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, WATER_GUN
	db 6, SUPERSONIC
	db 11, WING_ATTACK
	db 17, MIST
	db 23, QUICK_ATTACK
	db 34, PURSUIT
	db 37, WING_ATTACK
	db 42, AGILITY
	db 43, FLY
	db 0 ; no more level-up moves

PelipperEvosAttacks:
	db 0 ; no more evolutions
	db 1, AGILITY
	db 1, FLY
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 1, WATER_GUN
	db 5, SUPERSONIC
	db 6, WING_ATTACK
	db 17, PROTECT
	db 18, MIST
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

CroagunkEvosAttacks:
	db EVOLVE_LEVEL, 37, TOXICROAK
	db 0 ; no more evolutions
	db 1, LICK
	db 2, MUD_SLAP
	db 7, POISON_STING
	db 15, PURSUIT
	db 24, SWAGGER
	db 36, TOXIC
	db 44, SLUDGE_BOMB
	db 0 ; no more level-up moves

ToxicroakEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, MUD_SLAP
	db 4, POISON_STING
	db 15, PURSUIT
	db 24, SWAGGER
	db 36, TOXIC
	db 51, SLUDGE_BOMB
	db 0 ; no more level-up moves

ClobbopusEvosAttacks:
	db EVOLVE_LEVEL, 35, GRAPPLOCT
	db 0 ; no more evolutions
	db 1, LEER
	db 1, ROCK_SMASH
	db 11, WRAP
	db 15, PROTECT
	db 21, ROCK_SMASH
	db 31, SUBMISSION
	db 41, REVERSAL
	db 0 ; no more level-up moves

GrapploctEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, OCTAZOOKA
	db 1, ROCK_SMASH
	db 1, WRAP
	db 15, PROTECT
	db 21, ROCK_SMASH
	db 31, SUBMISSION
	db 41, REVERSAL
	db 0 ; no more level-up moves

Jangmo_oEvosAttacks:
	db EVOLVE_LEVEL, 35, HAKAMO_O
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, LEER
	db 9, BIDE
	db 11, PROTECT
	db 18, SCARY_FACE
	db 22, HEADBUTT
	db 26, GROWTH
	db 31, SCREECH
	db 34, BARRIER
	db 51, OUTRAGE
	db 0 ; no more level-up moves

Hakamo_oEvosAttacks:
	db EVOLVE_LEVEL, 45, KOMMO_O
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, LEER
	db 5, BIDE
	db 5, PROTECT
	db 18, SCARY_FACE
	db 22, HEADBUTT
	db 26, GROWTH
	db 31, SCREECH
	db 34, BARRIER
	db 55, OUTRAGE
	db 0 ; no more level-up moves

Kommo_oEvosAttacks:
	db 0 ; no more evolutions
	db 1, BELLY_DRUM
	db 1, TACKLE
	db 2, LEER
	db 5, BIDE
	db 5, PROTECT
	db 18, SCARY_FACE
	db 22, HEADBUTT
	db 26, GROWTH
	db 31, SCREECH
	db 34, BARRIER
	db 62, OUTRAGE
	db 0 ; no more level-up moves

LillipupEvosAttacks:
	db EVOLVE_LEVEL, 16, HERDIER
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, BITE
	db 16, GROWTH
	db 16, TAKE_DOWN
	db 22, CRUNCH
	db 28, ROAR
	db 33, REVERSAL
	db 0 ; no more level-up moves

HerdierEvosAttacks:
	db EVOLVE_LEVEL, 32, STOUTLAND
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 4, BITE
	db 17, GROWTH
	db 18, TAKE_DOWN
	db 24, CRUNCH
	db 32, ROAR
	db 39, REVERSAL
	db 0 ; no more level-up moves

StoutlandEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 4, BITE
	db 17, GROWTH
	db 18, TAKE_DOWN
	db 24, CRUNCH
	db 33, ROAR
	db 43, REVERSAL
	db 0 ; no more level-up moves

Salandit2EvosAttacks:
	db EVOLVE_LEVEL, 33, SALAZZLE2
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

Salazzle2EvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

TykerEvosAttacks:
	db EVOLVE_LEVEL, 30, STRAIGAR
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

StraigarEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

TympoleEvosAttacks:
	db EVOLVE_LEVEL, 25, PALPITOAD
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 4, ACID
	db 5, SUPERSONIC
	db 13, BUBBLEBEAM
	db 21, RECOVER
	db 32, FLAIL
	db 32, RAIN_DANCE
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

PalpitoadEvosAttacks:
	db EVOLVE_LEVEL, 36, SEISMITOAD
	db 0 ; no more evolutions
	db 1, ACID
	db 1, BUBBLE
	db 1, GROWL
	db 2, SUPERSONIC
	db 13, BUBBLEBEAM
	db 22, RECOVER
	db 35, FLAIL
	db 36, RAIN_DANCE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

SeismitoadEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, GROWL
	db 2, SUPERSONIC
	db 13, BUBBLEBEAM
	db 16, ACID
	db 22, RECOVER
	db 36, FLAIL
	db 37, RAIN_DANCE
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

PikipekEvosAttacks:
	db EVOLVE_LEVEL, 14, TRUMBEAK
	db 0 ; no more evolutions
	db 1, PECK
	db 3, GROWL
	db 9, ROCK_SMASH
	db 13, SUPERSONIC
	db 25, SCREECH
	db 27, DRILL_PECK
	db 0 ; no more level-up moves

TrumbeakEvosAttacks:
	db EVOLVE_LEVEL, 28, TOUCANNON
	db 0 ; no more evolutions
	db 1, PECK
	db 2, GROWL
	db 5, ROCK_SMASH
	db 13, SUPERSONIC
	db 29, SCREECH
	db 32, DRILL_PECK
	db 0 ; no more level-up moves

ToucannonEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 2, GROWL
	db 5, ROCK_SMASH
	db 13, SUPERSONIC
	db 31, SCREECH
	db 34, DRILL_PECK
	db 0 ; no more level-up moves

HeatmorEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, TACKLE
	db 13, WRAP
	db 21, FIRE_SPIN
	db 38, SLASH
	db 45, AMNESIA
	db 49, FLAMETHROWER
	db 0 ; no more level-up moves

MolambinoEvosAttacks:
	db EVOLVE_LEVEL, 32, ANGORE
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

AngoreEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

ClauncherEvosAttacks:
	db EVOLVE_LEVEL, 37, CLAWITZER
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

ClawitzerEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

BuizelEvosAttacks:
	db EVOLVE_LEVEL, 26, FLOATZEL
	db 0 ; no more evolutions
	db 2, GROWL
	db 7, QUICK_ATTACK
	db 11, WATER_GUN
	db 14, PURSUIT
	db 18, SWIFT
	db 22, BUBBLEBEAM
	db 33, WHIRLPOOL
	db 35, AGILITY
	db 39, RAZOR_WIND
	db 41, WATERFALL
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

FloatzelEvosAttacks:
	db 0 ; no more evolutions
	db 2, GROWL
	db 4, QUICK_ATTACK
	db 11, WATER_GUN
	db 12, CRUNCH
	db 14, PURSUIT
	db 18, SWIFT
	db 22, BUBBLEBEAM
	db 36, WHIRLPOOL
	db 41, AGILITY
	db 45, RAZOR_WIND
	db 48, WATERFALL
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

ShellosEvosAttacks:
	db EVOLVE_LEVEL, 30, GASTRODON
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, WATER_GUN
	db 4, DEFENSE_CURL
	db 16, HIDDEN_POWER
	db 21, ANCIENTPOWER
	db 23, RAIN_DANCE
	db 28, BODY_SLAM
	db 42, RECOVER
	db 0 ; no more level-up moves

GastrodonEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, WATER_GUN
	db 2, DEFENSE_CURL
	db 16, HIDDEN_POWER
	db 21, ANCIENTPOWER
	db 24, RAIN_DANCE
	db 28, BODY_SLAM
	db 48, RECOVER
	db 0 ; no more level-up moves

FinneonEvosAttacks:
	db EVOLVE_LEVEL, 31, LUMINEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, WATER_GUN
	db 11, ATTRACT
	db 13, RAIN_DANCE
	db 17, GUST
	db 29, SAFEGUARD
	db 33, RECOVER
	db 38, WHIRLPOOL
	db 45, FLY
	db 0 ; no more level-up moves

LumineonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, WATER_GUN
	db 5, ATTRACT
	db 12, GUST
	db 13, RAIN_DANCE
	db 29, SAFEGUARD
	db 35, RECOVER
	db 42, WHIRLPOOL
	db 53, FLY
	db 0 ; no more level-up moves

TirtougaEvosAttacks:
	db EVOLVE_LEVEL, 37, CARRACOSTA
	db 0 ; no more evolutions
	db 1, BIDE
	db 1, DEFENSE_CURL
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 9, BITE
	db 9, PROTECT
	db 13, BUBBLEBEAM
	db 17, ANCIENTPOWER
	db 21, CRUNCH
	db 33, BARRIER
	db 34, CURSE
	db 41, WATERFALL
	db 42, ROCK_SLIDE
	db 46, RAIN_DANCE
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

CarracostaEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIDE
	db 1, DEFENSE_CURL
	db 1, WATER_GUN
	db 3, ROLLOUT
	db 9, BITE
	db 9, PROTECT
	db 13, BUBBLEBEAM
	db 17, ANCIENTPOWER
	db 21, CRUNCH
	db 33, BARRIER
	db 34, CURSE
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
	db 13, WATER_GUN
	db 16, FLAIL
	db 21, CONFUSE_RAY
	db 22, SPARK
	db 24, BUBBLEBEAM
	db 32, TAKE_DOWN
	db 41, RECOVER
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 2, SUPERSONIC
	db 2, THUNDER_WAVE
	db 12, WATER_GUN
	db 16, FLAIL
	db 22, SPARK
	db 23, CONFUSE_RAY
	db 26, BUBBLEBEAM
	db 36, TAKE_DOWN
	db 47, RECOVER
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

BurgelaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TANGELA
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db EVOLVE_LEVEL, 38, TANGROWTH
	db EVOLVE_ITEM, LEAF_STONE, JUNGELA
	db 0 ; no more evolutions
	db 1, WRAP
	db 9, SLEEP_POWDER
	db 11, ABSORB
	db 11, CONFUSION
	db 16, VINE_WHIP
	db 17, POISON_GAS
	db 21, WRAP
	db 21, GROWTH
	db 26, MEGA_DRAIN
	db 31, STUN_SPORE
	db 35, ANCIENTPOWER
	db 35, GIGA_DRAIN
	db 39, LEECH_SEED
	db 41, STRENGTH
	db 49, AMNESIA
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 7, SLEEP_POWDER
	db 8, ABSORB
	db 12, VINE_WHIP
	db 14, GROWTH
	db 15, POISON_GAS
	db 17, WRAP
	db 23, MEGA_DRAIN
	db 26, STUN_SPORE
	db 35, ANCIENTPOWER
	db 35, GIGA_DRAIN
	db 42, STRENGTH
	db 0 ; no more level-up moves

JungelaEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_ITEM, SUN_STONE, ESPEON
	db EVOLVE_ITEM, MOON_STONE, UMBREON
	db EVOLVE_TRADE, NEVERMELTICE, GLACEON
	db EVOLVE_ITEM, LEAF_STONE, LEAFEON
	db EVOLVE_HAPPINESS, TR_ANYTIME, SYLVEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, LEER
	db 7, SMOKESCREEN
	db 11, DOUBLE_KICK
	db 11, GROWL
	db 11, THIEF
	db 15, SWIFT
	db 19, QUICK_ATTACK
	db 26, BITE
	db 31, MIRROR_MOVE
	db 31, CHARM
	db 35, BATON_PASS
	db 36, FOCUS_ENERGY
	db 37, DOUBLE_EDGE
	db 37, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, MIRROR_MOVE
	db 1, SWIFT
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 1, THIEF
	db 2, LEER
	db 6, SMOKESCREEN
	db 9, WATER_GUN
	db 11, DOUBLE_KICK
	db 17, QUICK_ATTACK
	db 28, BITE
	db 31, AURORA_BEAM
	db 33, RECOVER
	db 41, HAZE
	db 44, BARRIER
	db 45, MIST
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, BITE
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, MIRROR_MOVE
	db 1, SWIFT
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 1, THIEF
	db 2, LEER
	db 6, SMOKESCREEN
	db 17, QUICK_ATTACK
	db 25, DOUBLE_KICK
	db 32, PIN_MISSILE
	db 41, THUNDER_WAVE
	db 44, AGILITY
	db 53, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, MIRROR_MOVE
	db 1, SWIFT
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 1, THIEF
	db 2, LEER
	db 6, SMOKESCREEN
	db 9, EMBER
	db 11, DOUBLE_KICK
	db 17, QUICK_ATTACK
	db 24, FOCUS_ENERGY
	db 26, BITE
	db 32, FIRE_SPIN
	db 41, SMOG
	db 44, SCARY_FACE
	db 46, LEER
	db 48, RAGE
	db 52, FLAMETHROWER
	db 65, FIRE_BLAST
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, BITE
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, LEER
	db 1, MIRROR_MOVE
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 1, THIEF
	db 6, SMOKESCREEN
	db 11, CONFUSION
	db 19, QUICK_ATTACK
	db 25, SWIFT
	db 31, PSYBEAM
	db 34, FUTURE_SIGHT
	db 41, PSYCH_UP
	db 47, PSYCHIC_M
	db 49, RECOVER
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, BITE
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, LEER
	db 1, MIRROR_MOVE
	db 1, SWIFT
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 1, THIEF
	db 6, SMOKESCREEN
	db 11, PURSUIT
	db 19, QUICK_ATTACK
	db 25, CONFUSE_RAY
	db 44, MEAN_LOOK
	db 45, SCREECH
	db 49, MOONLIGHT
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, LEER
	db 1, MIRROR_MOVE
	db 1, SWIFT
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 1, THIEF
	db 6, ICY_WIND
	db 6, SMOKESCREEN
	db 16, QUICK_ATTACK
	db 22, BITE
	db 43, MIRROR_COAT
	db 47, BARRIER
	db 55, BLIZZARD
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, BITE
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, LEER
	db 1, MIRROR_MOVE
	db 1, SWIFT
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 1, THIEF
	db 6, RAZOR_LEAF
	db 6, SMOKESCREEN
	db 16, QUICK_ATTACK
	db 21, LEECH_SEED
	db 31, RECOVER
	db 33, GIGA_DRAIN
	db 47, SUNNY_DAY
	db 47, SWORDS_DANCE
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, BITE
	db 1, CHARM
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, LEER
	db 1, MIRROR_MOVE
	db 1, TACKLE
	db 1, TAKE_DOWN
	db 1, THIEF
	db 5, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 17, SWIFT
	db 31, LIGHT_SCREEN
	db 45, PSYCH_UP
	db 0 ; no more level-up moves

DurantEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 3, FURY_CUTTER
	db 9, BITE
	db 12, BEAT_UP
	db 14, AGILITY
	db 16, METAL_CLAW
	db 28, CRUNCH
	db 36, DIG
	db 36, GUILLOTINE
	db 41, BARRIER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, POWDER_SNOW
	db 11, MUD_SLAP
	db 17, ENDURE
	db 23, ICY_WIND
	db 29, TAKE_DOWN
	db 35, FLAIL
	db 36, MIST
	db 37, EARTHQUAKE
	db 45, BLIZZARD
	db 51, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db EVOLVE_LEVEL, 45, MAMOSWINE
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, FLAIL
	db 1, HORN_ATTACK
	db 1, PECK
	db 1, TACKLE
	db 4, POWDER_SNOW
	db 11, MUD_SLAP
	db 12, ENDURE
	db 23, ICY_WIND
	db 29, TAKE_DOWN
	db 41, MIST
	db 44, EARTHQUAKE
	db 45, THRASH
	db 54, BLIZZARD
	db 62, AMNESIA
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, FLAIL
	db 1, PECK
	db 1, TACKLE
	db 4, POWDER_SNOW
	db 11, MUD_SLAP
	db 15, ENDURE
	db 31, ICY_WIND
	db 31, TAKE_DOWN
	db 37, AMNESIA
	db 39, MIST
	db 42, SCARY_FACE
	db 44, EARTHQUAKE
	db 45, THRASH
	db 54, BLIZZARD
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, SCRATCH
	db 1, THIEF
	db 3, LICK
	db 22, SWEET_SCENT
	db 32, SLASH
	db 36, CHARM
	db 37, REST
	db 43, SNORE
	db 49, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db EVOLVE_LEVEL, 45, URSALUNA
	db 0 ; no more evolutions
	db 1, LEER
	db 1, SCRATCH
	db 1, THIEF
	db 2, LICK
	db 22, SWEET_SCENT
	db 32, SLASH
	db 38, SCARY_FACE
	db 39, REST
	db 46, CROSS_CHOP
	db 47, SNORE
	db 55, THRASH
	db 0 ; no more level-up moves

UrsalunaEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

SnoverEvosAttacks:
	db EVOLVE_LEVEL, 40, ABOMASNOW
	db 0 ; no more evolutions
	db 1, LEER
	db 1, POWDER_SNOW
	db 6, RAZOR_LEAF
	db 11, ICY_WIND
	db 18, SWAGGER
	db 19, MIST
	db 41, BLIZZARD
	db 0 ; no more level-up moves

AbomasnowEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICE_PUNCH
	db 1, LEER
	db 1, POWDER_SNOW
	db 3, RAZOR_LEAF
	db 6, ICY_WIND
	db 18, SWAGGER
	db 19, MIST
	db 47, BLIZZARD
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, SMOKESCREEN
	db 9, METAL_CLAW
	db 14, SWIFT
	db 18, AGILITY
	db 21, WING_ATTACK
	db 33, SPIKES
	db 35, STEEL_WING
	db 36, DRILL_PECK
	db 41, SLASH
	db 42, FLY
	db 48, BARRIER
	db 52, SKY_ATTACK
	db 0 ; no more level-up moves

BlitzleEvosAttacks:
	db EVOLVE_LEVEL, 27, ZEBSTRIKA
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 4, LEER
	db 15, THUNDER_WAVE
	db 22, PURSUIT
	db 25, SPARK
	db 29, STOMP
	db 36, AGILITY
	db 43, THRASH
	db 0 ; no more level-up moves

ZebstrikaEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 2, LEER
	db 8, THUNDER_WAVE
	db 22, PURSUIT
	db 25, SPARK
	db 31, STOMP
	db 42, AGILITY
	db 53, THRASH
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 5, LEER
	db 11, CONFUSION
	db 21, AGILITY
	db 25, PSYBEAM
	db 31, STOMP
	db 35, RECOVER
	db 41, TAKE_DOWN
	db 51, PSYCHIC_M
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, GROWL
	db 1, LEER
	db 1, MEGAHORN
	db 1, QUICK_ATTACK
	db 1, TACKLE
	db 21, AGILITY
	db 25, PSYBEAM
	db 31, STOMP
	db 35, RECOVER
	db 43, TAKE_DOWN
	db 56, PSYCHIC_M
	db 0 ; no more level-up moves

SandygastEvosAttacks:
	db EVOLVE_LEVEL, 42, PALOSSAND
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, DEFENSE_CURL
	db 5, LICK
	db 12, SMOKESCREEN
	db 17, MEGA_DRAIN
	db 28, HYPNOSIS
	db 34, BARRIER
	db 35, GIGA_DRAIN
	db 42, SHADOW_BALL
	db 56, SANDSTORM
	db 0 ; no more level-up moves

PalossandEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, DEFENSE_CURL
	db 2, LICK
	db 8, SMOKESCREEN
	db 17, MEGA_DRAIN
	db 28, HYPNOSIS
	db 34, BARRIER
	db 35, GIGA_DRAIN
	db 43, SHADOW_BALL
	db 62, SANDSTORM
	db 0 ; no more level-up moves

StuffulEvosAttacks:
	db EVOLVE_LEVEL, 27, BEWEAR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 5, BIDE
	db 13, CROSS_CHOP
	db 16, ENDURE
	db 21, STRENGTH
	db 22, FLAIL
	db 26, TAKE_DOWN
	db 32, CROSS_CHOP
	db 36, THRASH
	db 41, PAIN_SPLIT
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

BewearEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, TACKLE
	db 5, BIDE
	db 13, CROSS_CHOP
	db 16, ENDURE
	db 21, STRENGTH
	db 22, FLAIL
	db 28, TAKE_DOWN
	db 36, CROSS_CHOP
	db 42, THRASH
	db 48, PAIN_SPLIT
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

Oricorio_baileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, PECK
	db 16, BATON_PASS
	db 36, FLY
	db 43, MIRROR_MOVE
	db 46, AGILITY
	db 0 ; no more level-up moves

Oricorio_pomEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, PECK
	db 16, BATON_PASS
	db 36, FLY
	db 43, MIRROR_MOVE
	db 46, AGILITY
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 11, SMOG
	db 14, ROAR
	db 19, BITE
	db 25, BEAT_UP
	db 42, FLAMETHROWER
	db 48, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 7, SMOG
	db 14, ROAR
	db 21, BITE
	db 26, BEAT_UP
	db 48, FLAMETHROWER
	db 56, CRUNCH
	db 0 ; no more level-up moves

Oricorio_pauEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, PECK
	db 16, BATON_PASS
	db 36, FLY
	db 43, MIRROR_MOVE
	db 46, AGILITY
	db 0 ; no more level-up moves

Oricorio_sensuEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, PECK
	db 16, BATON_PASS
	db 36, FLY
	db 43, MIRROR_MOVE
	db 46, AGILITY
	db 0 ; no more level-up moves

OranguruEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 18, PSYCH_UP
	db 43, PSYCHIC_M
	db 51, FUTURE_SIGHT
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 5, SPITE
	db 11, LICK
	db 14, CONFUSE_RAY
	db 21, MEAN_LOOK
	db 27, PSYBEAM
	db 33, PAIN_SPLIT
	db 39, SHADOW_BALL
	db 44, PERISH_SONG
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, LICK
	db 1, PSYWAVE
	db 1, SPITE
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, TACKLE
	db 2, CONVERSION
	db 9, SHARPEN
	db 11, PSYBEAM
	db 14, AGILITY
	db 18, BARRIER
	db 21, RECOVER
	db 27, THUNDER_WAVE
	db 41, HYPER_BEAM
	db 41, LOCK_ON
	db 42, TRI_ATTACK
	db 55, ZAP_CANNON
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, PORYGON_Z
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, TACKLE
	db 9, PSYBEAM
	db 11, DEFENSE_CURL
	db 11, AGILITY
	db 19, RECOVER
	db 41, LOCK_ON
	db 44, TRI_ATTACK
	db 45, ZAP_CANNON
	db 66, HYPER_BEAM
	db 0 ; no more level-up moves

Porygon_zEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION
	db 1, DEFENSE_CURL
	db 1, TACKLE
	db 8, PSYBEAM
	db 13, AGILITY
	db 19, RECOVER
	db 44, ZAP_CANNON
	db 46, LOCK_ON
	db 51, TRI_ATTACK
	db 66, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, WATER_GUN
	db 2, SING
	db 7, MIST
	db 15, CONFUSE_RAY
	db 15, RECOVER
	db 18, BODY_SLAM
	db 28, PERISH_SONG
	db 31, RAIN_DANCE
	db 33, ICE_BEAM
	db 43, SAFEGUARD
	db 45, SURF
	db 51, HYDRO_PUMP
	db 58, BLIZZARD
	db 0 ; no more level-up moves

AmauraEvosAttacks:
	db EVOLVE_LEVEL, 39, AURORUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POWDER_SNOW
	db 9, THUNDER_WAVE
	db 11, ROCK_THROW
	db 12, ICY_WIND
	db 15, TAKE_DOWN
	db 18, MIST
	db 21, AURORA_BEAM
	db 22, ANCIENTPOWER
	db 34, ICE_PUNCH
	db 36, ENCORE
	db 46, LIGHT_SCREEN
	db 48, ICE_BEAM
	db 56, HYPER_BEAM
	db 62, BLIZZARD
	db 0 ; no more level-up moves

AurorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POWDER_SNOW
	db 7, ROCK_THROW
	db 7, THUNDER_WAVE
	db 12, ICY_WIND
	db 15, TAKE_DOWN
	db 18, MIST
	db 21, AURORA_BEAM
	db 21, ANCIENTPOWER
	db 34, ICE_PUNCH
	db 37, ENCORE
	db 49, LIGHT_SCREEN
	db 53, ICE_BEAM
	db 63, HYPER_BEAM
	db 71, BLIZZARD
	db 0 ; no more level-up moves

Minior_meteorEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MINIOR_CORE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 8, ROLLOUT
	db 11, CONFUSE_RAY
	db 15, SWIFT
	db 17, ANCIENTPOWER
	db 29, TAKE_DOWN
	db 43, DOUBLE_EDGE
	db 51, EXPLOSION
	db 0 ; no more level-up moves

Minior_coreEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MINIOR_METEOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 8, ROLLOUT
	db 11, CONFUSE_RAY
	db 15, SWIFT
	db 17, ANCIENTPOWER
	db 29, TAKE_DOWN
	db 43, DOUBLE_EDGE
	db 51, EXPLOSION
	db 0 ; no more level-up moves

DrampaEvosAttacks:
	db 0 ; no more evolutions
	db 5, TWISTER
	db 9, PROTECT
	db 13, GLARE
	db 21, DRAGON_RAGE
	db 24, LIGHT_SCREEN
	db 28, SAFEGUARD
	db 45, FLY
	db 53, OUTRAGE
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, METRONOME
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, AMNESIA
	db 11, LICK
	db 16, BITE
	db 17, HEADBUTT
	db 21, SCREECH
	db 25, BELLY_DRUM
	db 25, REST
	db 28, SNORE
	db 31, SLEEP_TALK
	db 33, BODY_SLAM
	db 35, THIEF
	db 41, DEFENSE_CURL
	db 43, ROLLOUT
	db 44, CROSS_CHOP
	db 46, CRUNCH
	db 48, DOUBLE_EDGE
	db 53, HYPER_BEAM
	db 0 ; no more level-up moves

MawileEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, MEGA_MAWILE
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, LICK
	db 11, BITE
	db 16, SWEET_SCENT
	db 28, BATON_PASS
	db 34, CRUNCH
	db 38, BARRIER
	db 0 ; no more level-up moves

Mega_mawileEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, LICK
	db 9, BITE
	db 13, SWEET_SCENT
	db 26, BATON_PASS
	db 31, CRUNCH
	db 35, BARRIER
	db 0 ; no more level-up moves

SkrelpEvosAttacks:
	db EVOLVE_LEVEL, 48, DRAGALGE
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, TACKLE
	db 2, WATER_GUN
	db 11, LEER
	db 12, BUBBLE
	db 13, ACID
	db 26, DOUBLE_TEAM
	db 32, TOXIC
	db 37, WATERFALL
	db 41, SLUDGE_BOMB
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

DragalgeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, TACKLE
	db 1, WATER_GUN
	db 11, LEER
	db 12, ACID
	db 12, BUBBLE
	db 17, TWISTER
	db 26, DOUBLE_TEAM
	db 32, TOXIC
	db 37, WATERFALL
	db 41, SLUDGE_BOMB
	db 45, HYDRO_PUMP
	db 66, OUTRAGE
	db 0 ; no more level-up moves

DreepyEvosAttacks:
	db EVOLVE_LEVEL, 50, DRAKLOAK
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LICK
	db 1, QUICK_ATTACK
	db 0 ; no more level-up moves

DrakloakEvosAttacks:
	db EVOLVE_LEVEL, 60, DRAGAPULT
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LICK
	db 1, QUICK_ATTACK
	db 6, LOCK_ON
	db 24, AGILITY
	db 54, TAKE_DOWN
	db 66, DOUBLE_EDGE
	db 0 ; no more level-up moves

DragapultEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LICK
	db 1, QUICK_ATTACK
	db 6, LOCK_ON
	db 24, AGILITY
	db 54, TAKE_DOWN
	db 71, DOUBLE_EDGE
	db 0 ; no more level-up moves

BruxishEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 4, LICK
	db 9, CONFUSION
	db 12, BITE
	db 17, BUBBLEBEAM
	db 21, DISABLE
	db 25, PSYWAVE
	db 28, CRUNCH
	db 33, WATERFALL
	db 36, SCREECH
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HYPNOSIS
	db 11, REFLECT
	db 14, LEECH_SEED
	db 15, MEGA_DRAIN
	db 22, CONFUSION
	db 22, STUN_SPORE
	db 25, RECOVER
	db 26, POISON_GAS
	db 27, PSYBEAM
	db 31, SLEEP_POWDER
	db 35, GIGA_DRAIN
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 6, WATER_GUN
	db 11, BUBBLEBEAM
	db 18, RAIN_DANCE
	db 22, ROAR
	db 24, GUST
	db 33, AURORA_BEAM
	db 41, MIST
	db 42, CRUNCH
	db 51, MIRROR_COAT
	db 54, SURF
	db 63, HYDRO_PUMP
	db 84, BLIZZARD
	db 0 ; no more level-up moves

ApplinEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, FLAPPLE
	db EVOLVE_ITEM, MOON_STONE, APPLETUN
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, LICK
	db 0 ; no more level-up moves

FlappleEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, DEFENSE_CURL
	db 1, GROWTH
	db 1, LICK
	db 1, TWISTER
	db 4, ACID
	db 8, AEROBLAST
	db 12, LEECH_SEED
	db 16, PROTECT
	db 36, BARRIER
	db 41, FLY
	db 0 ; no more level-up moves

AppletunEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, DEFENSE_CURL
	db 1, GROWTH
	db 1, LICK
	db 1, SWEET_SCENT
	db 4, CURSE
	db 8, STOMP
	db 12, LEECH_SEED
	db 16, PROTECT
	db 24, RECOVER
	db 28, ACID
	db 32, BODY_SLAM
	db 36, BARRIER
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
	db 41, CRUNCH
	db 45, EARTHQUAKE
	db 54, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, BITE
	db 1, LEER
	db 1, ROCK_THROW
	db 1, TACKLE
	db 4, SANDSTORM
	db 7, SCREECH
	db 19, ROCK_SLIDE
	db 27, SCARY_FACE
	db 28, THRASH
	db 44, CRUNCH
	db 52, EARTHQUAKE
	db 64, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, BITE
	db 1, LEER
	db 1, ROCK_THROW
	db 1, TACKLE
	db 4, SANDSTORM
	db 7, SCREECH
	db 19, ROCK_SLIDE
	db 27, SCARY_FACE
	db 28, THRASH
	db 44, CRUNCH
	db 54, EARTHQUAKE
	db 72, HYPER_BEAM
	db 0 ; no more level-up moves

ZacianEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, METAL_CLAW
	db 1, QUICK_ATTACK
	db 11, SLASH
	db 22, SWORDS_DANCE
	db 55, CRUNCH
	db 0 ; no more level-up moves

BuzzwoleEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ICE_PUNCH
	db 11, REVERSAL
	db 15, FOCUS_ENERGY
	db 17, VITAL_THROW
	db 23, ENDURE
	db 29, LEECH_LIFE
	db 36, MEGA_PUNCH
	db 47, COUNTER
	db 51, CROSS_CHOP
	db 72, CROSS_CHOP
	db 0 ; no more level-up moves

PoppyEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

DaisyEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

BoomerEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

KirbyEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

M_blockEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

Bad_eggEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

FuriousbEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more level-up moves

