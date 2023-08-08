MACRO mon_cry
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
; entries correspond to constants/pokemon_constants.asm
	table_width MON_CRY_LENGTH, PokemonCries
	mon_cry CRY_EKANS,       751,  320 ; SPIRRIP
	mon_cry CRY_EKANS,       621,  256 ; DOOMSTONE
	mon_cry CRY_METAPOD,     -76,  320 ; CRYPTIID
	mon_cry CRY_WOOPER,       48,  208 ; LITWICK Ax6
	mon_cry CRY_CLEFAIRY,    -46,  477 ; LAMPENT Ax6
	mon_cry CRY_ENTEI,       120, 1216 ; CHANDELURE Ax6
	mon_cry CRY_SPEAROW,      96,  192 ; ROOKIDEE
	mon_cry CRY_FEAROW,       64,  288 ; CORVISQUIRE
	mon_cry CRY_PIDGEOTTO,     0,  320 ; CORVIKNIGHT
	mon_cry CRY_SPEAROW,     221,  129 ; FARFETCH_D
	mon_cry CRY_SPEAROW,     226,  384 ; LUXWAN
	mon_cry CRY_SPEAROW,     221, -219 ; SIRFETCHD
	mon_cry CRY_GROWLITHE,   235,  160 ; YUNGOOS
	mon_cry CRY_GROWLITHE,   -21,  007 ; GUMSHOOS
	mon_cry CRY_MAREEP,        0,  584 ; WOOLOO
	mon_cry CRY_MAREEP,      -13,  384 ; DUBWOOL
	mon_cry CRY_GROWLITHE,   711,  288 ; YAMPER
	mon_cry CRY_GROWLITHE,    92,  128 ; BOLTUND
	mon_cry CRY_BULBASAUR,   252,    7 ; EMOLGA
	mon_cry CRY_WEEDLE,      252,  143 ; GRUBBIN
	mon_cry CRY_VENONAT,      78,  247 ; CHARJABUG
	mon_cry CRY_SQUIRTLE,    243,  193 ; VIKAVOLT
	mon_cry CRY_CATERPIE,    444,  208 ; BLIPBUG
	mon_cry CRY_METAPOD,     204,  161 ; DOTTLER
	mon_cry CRY_METAPOD,    4031,  371 ; ORBEETLE
	mon_cry CRY_EKANS,       774,  224 ; SIZZLIPEDE
	mon_cry CRY_EKANS,      3982,  256 ; CENTISKORCH
	mon_cry CRY_CATERPIE,    151,  251 ; SNOM
	mon_cry CRY_CATERPIE,    131,  160 ; FROSMOTH
	mon_cry CRY_GROWLITHE,   128,  176 ; ARON Celadonk
	mon_cry CRY_WEEDLE,       64,  144 ; LAIRON Celadonk
	mon_cry CRY_SLOWKING,    519,  434 ; AGGRON Celadonk
	mon_cry CRY_SQUIRTLE,    481,  304 ; NOIBAT
	mon_cry CRY_SQUIRTLE,    491,  272 ; NOIVERN
	mon_cry CRY_SQUIRTLE,   2982,  272 ; WOOBAT
	mon_cry CRY_SQUIRTLE,   2117,  368 ; SWOOBAT
	mon_cry CRY_GLIGAR,     4092,  272 ; RALTS SourApple
	mon_cry CRY_VILEPLUME,     8,  256 ; KIRLIA Celadonk
	mon_cry CRY_VILEPLUME,  3874,  355 ; GARDEVOIR Celadonk
	mon_cry CRY_VILEPLUME,  3888,  259 ; GALLADE
	mon_cry CRY_CLEFFA,      147,  272 ; HATENNA
	mon_cry CRY_CLEFFA,       46,  336 ; HATTREM
	mon_cry CRY_ODDISH,     4011,  226 ; HATTERENE
	mon_cry CRY_WEEDLE,     2059,  129 ; ZIGZAGOON Celadonk
	mon_cry CRY_WEEDLE,     1545,  433 ; LINOONE Celadonk
	mon_cry CRY_GOLEM,      3935,  256 ; OBSTAGOON
	mon_cry CRY_WEEPINBELL, 2834,  272 ; MUDBRAY
	mon_cry CRY_WEEPINBELL, -480,  352 ; MUDSDALE
	mon_cry CRY_AIPOM,      4031,  336 ; DEARLING
	mon_cry CRY_AIPOM,      -256,  288 ; SAWSBUCK
	mon_cry CRY_CYNDAQUIL,  3879,  224 ; ROCKRUFF
	mon_cry CRY_TOTODILE,   3558,  288 ; LYCANROC_MIDDAY
	mon_cry CRY_TOTODILE,   3300,  288 ; LYCANROC_DUSK
	mon_cry CRY_TOTODILE,   -796,  288 ; LYCAN_ROC_MIDNIGHT
	mon_cry CRY_SUNFLORA,  -4081,  256 ; BARBOACH
	mon_cry CRY_TOTODILE,      0,  384 ; WHISCASH
	mon_cry CRY_METAPOD,       0,  256 ; GASTLY
	mon_cry CRY_METAPOD,      48,  192 ; HAUNTER
	mon_cry CRY_MUK,           0,  383 ; GENGAR
	mon_cry CRY_MUK,           0,  383 ; MEGA_GENGAR
	mon_cry CRY_METAPOD,      16,  400 ; MISSINGNO
	mon_cry CRY_PARAS,         0,  256 ; DWEBBLE
	mon_cry CRY_PARAS,      3890,  383 ; CRUSTLE
	mon_cry CRY_SPINARAK,   4083,   96 ; LOTAD SourApple
	mon_cry CRY_FEAROW,     1664,  144 ; LOMBRE Celadonk
	mon_cry CRY_KRABBY,      208,  250 ; LUDICOLO SourApple
	mon_cry CRY_CLEFFA,       59,  200 ; HOPPIP
	mon_cry CRY_CLEFFA,       39,  312 ; SKIPLOOM
	mon_cry CRY_CLEFFA,        0,  384 ; JUMPLUFF
	mon_cry CRY_PARAS,      6398,  384 ; MORELULL
	mon_cry CRY_PARAS,      4002,  431 ; SHIINOTIC
	mon_cry CRY_CATERPIE,   2079,  383 ; ALOMOMOLA
	mon_cry CRY_SEEL,        304,   96 ; SPHEAL SourApple
	mon_cry CRY_CLEFFA,     3720,  320 ; SEALEO SourApple
	mon_cry CRY_WOOPER,     3714, 1152 ; WALREIN SourApple
	mon_cry CRY_GROWLITHE,   189,  240 ; DEWPIDER
	mon_cry CRY_KRABBY,      660,  194 ; ARAQUANID
	mon_cry CRY_FEAROW,      271,  256 ; MAREANIE
	mon_cry CRY_FEAROW,     2383,  288 ; TOXAPEX
	mon_cry CRY_CYNDAQUIL,  1036,  320 ; BELDUM SourApple
	mon_cry CRY_SLOWKING,   1711,  378 ; METANG SourApple
	mon_cry CRY_METAPOD,    3567,  602 ; METAGROSS SourApple
	mon_cry CRY_VENONAT,    3876,  208 ; LARVESTA
	mon_cry CRY_RAICHU,     4073,  240 ; VOLCARONA
	mon_cry CRY_HOOTHOOT,   2337,  183 ; SHROOMISH
	mon_cry CRY_HOOTHOOT,   3905,  232 ; BRELOOM
	mon_cry CRY_DROWZEE,     378,  144 ; MUNNA
	mon_cry CRY_DROWZEE,    2266,  224 ; MUSHARNA
	mon_cry CRY_METAPOD,    4032,  129 ; SOLOSIS
	mon_cry CRY_METAPOD,    4008,  320 ; DUOSION
	mon_cry CRY_METAPOD,    3992,  383 ; REUNICLUS
	mon_cry CRY_PIDGEY,      255,  383 ; DITTO
	mon_cry CRY_GRIMER,      498,  336 ; TRUBBISH
	mon_cry CRY_MUK,        4058,  383 ; GARBODOR
	mon_cry CRY_DUNSPARCE,  2691,  328 ; SALANDIT
	mon_cry CRY_DUNSPARCE,  2738,  360 ; SALAZZLE
	mon_cry CRY_SLOWPOKE,    -22,  452 ; STUNKY Ax6
	mon_cry CRY_BLASTOISE,   188,  205 ; SKUNTANK Ax6
	mon_cry CRY_SEEL,        205,  368 ; GRENMAR
	mon_cry CRY_TOTODILE,     49,  200 ; YANMA
	mon_cry CRY_TOTODILE,   4088,  216 ; YANMEGA
	mon_cry CRY_MARILL,      265,  200 ; CHERUBI
	mon_cry CRY_SUNFLORA,    -28,  256 ; CHERRIM
	mon_cry CRY_MARILL,     2363,  440 ; BOUNSWEET
	mon_cry CRY_ODDISH,     4005,  304 ; STEENEE
	mon_cry CRY_PARAS,       319,  256 ; TSAREENA
	mon_cry CRY_SQUIRTLE,      0,  320 ; BOUFFALANT
	mon_cry CRY_PSYDUCK,     150,  268 ; FOMANTIS
	mon_cry CRY_PSYDUCK,    1982,  275 ; LURANTIS
	mon_cry CRY_CATERPIE,      0,  256 ; SCYTHER
	mon_cry CRY_AMPHAROS,      0,  352 ; SCIZOR
	mon_cry CRY_EKANS,       511,  336 ; KLEAVOR
	mon_cry CRY_AMPHAROS,     53,  224 ; HERACROSS
	mon_cry CRY_BLASTOISE,   511,  124 ; COMBEE
	mon_cry CRY_BLASTOISE,   351,  256 ; VESPIQUEN
	mon_cry CRY_GOLEM,       230,  349 ; KOFFING
	mon_cry CRY_GOLEM,       255,  383 ; WEEZING
	mon_cry CRY_GRIMER,        0,  256 ; GRIMER
	mon_cry CRY_MUK,         239,  383 ; MUK
	mon_cry CRY_CLEFAIRY,   3967,  272 ; ESPURR
	mon_cry CRY_CLEFAIRY,   3132,  379 ; MEOWSTIC_M
	mon_cry CRY_CLEFAIRY,   3997,  379 ; MEOWSTIC_F
	mon_cry CRY_CLEFAIRY,   3721,  335 ; PURRLOIN
	mon_cry CRY_CLEFAIRY,   3893,  400 ; LIEPARD
	mon_cry CRY_CLEFAIRY,   2124,  208 ; SKITTY
	mon_cry CRY_CLEFAIRY,   1868,  272 ; DELCATTY
	mon_cry CRY_VULPIX,     2204,  144 ; LITLEO
	mon_cry CRY_VULPIX,     4003,  223 ; PYROAR
	mon_cry CRY_GROWLITHE,    32,  192 ; GROWLITHE
	mon_cry CRY_WEEDLE,        0,  256 ; ARCANINE
	mon_cry CRY_AIPOM,      -352,  384 ; STANTLER
	mon_cry CRY_AIPOM,       -81,  320 ; WYRDEER
	mon_cry CRY_CHATOT,        2,  288 ; CHATOT Ax6
	mon_cry CRY_TEDDIURSA,   -24,  179 ; DRILBUR Ax6
	mon_cry CRY_NIDOQUEEN,  -264,  333 ; EXCADRILL Ax6
	mon_cry CRY_MUK,          45,  160 ; MAKUHITA SourApple
	mon_cry CRY_MUK,        3618,  320 ; HARIYAMA SourApple
	mon_cry CRY_CLEFAIRY,   -424,  165 ; MEOWTH
	mon_cry CRY_CLEFAIRY,   -640,  463 ; PERRSERKER
	mon_cry CRY_VULPIX,    -1455,  241 ; CHOMP
	mon_cry CRY_PARAS,     -1280,  479 ; REGIMAGMA
	mon_cry CRY_DIGLETT,    -307,  293 ; CROAGUNK Ax6
	mon_cry CRY_SLOWKING,      2,  710 ; TOXICROAK Ax6
	mon_cry CRY_TOTODILE,    496,  336 ; CLOBBOPUS
	mon_cry CRY_TOTODILE,   -256,  352 ; GRAPPLOCT
	mon_cry CRY_BULBASAUR,  -160,  192 ; JANGMO_O
	mon_cry CRY_BULBASAUR,  -411,  304 ; HAKAMO_O
	mon_cry CRY_BULBASAUR,  -609,  416 ; KOMMO_O
	mon_cry CRY_VENONAT,    2096,  224 ; LILLIPUP
	mon_cry CRY_VENONAT,    1830,  272 ; HERDIER
	mon_cry CRY_VENONAT,    -232,  240 ; STOUTLAND
	mon_cry CRY_HOOTHOOT,    354,  256 ; SALANDIT2
	mon_cry CRY_HOOTHOOT,    354,  256 ; SALAZZLE2
	mon_cry CRY_BULBASAUR,  3965,  305 ; TYKER
	mon_cry CRY_RAICHU,     3855,  232 ; STRAIGER
	mon_cry CRY_PIDGEY,       -1,  655 ; TYMPOLE
	mon_cry CRY_PIDGEY,     -153,  736 ; PALPITOAD
	mon_cry CRY_GRIMER,      763,  673 ; SEISMITOAD
	mon_cry CRY_PIDGEY,     4029,  468 ; PIKIPEK
	mon_cry CRY_PIDGEOTTO,   -62,  448 ; TRUMBEAK
	mon_cry CRY_PIDGEOTTO,    -1,  399 ; TOUCANNON
	mon_cry CRY_CHARMANDER,   -6,  208 ; HEATMOR
	mon_cry CRY_CATERPIE,    110,  224 ; MOLAMBINO
	mon_cry CRY_EKANS,       275,  256 ; ANGORE
	mon_cry CRY_KRABBY,       53,  172 ; CLAUNCHER Ax6
	mon_cry CRY_SQUIRTLE,    -38,  151 ; CLAWITZER Ax6
	mon_cry CRY_BLASTOISE,   473,  180 ; BUIZEL Ax6 edited by chaos_lord2
	mon_cry CRY_PIDGEOTTO,  -202,  576 ; FLOATZEL Ax6
	mon_cry CRY_WEEDLE,      255,  170 ; SHELLOS walshyb
	mon_cry CRY_GASTRODON,  2096,   80 ; GASTRODON myRattata
	mon_cry CRY_CATERPIE,    112,  192 ; FINNEON
	mon_cry CRY_CATERPIE,      0,  383 ; LUMINEON
	mon_cry CRY_GROWLITHE,   000,  129 ; TIRTOUGA
	mon_cry CRY_GROWLITHE,   511,  192 ; CARRACOSTA
	mon_cry CRY_CYNDAQUIL,   969,  320 ; CHINCHOU
	mon_cry CRY_CYNDAQUIL,   720,  272 ; LANTURN
	mon_cry CRY_GOLEM,       251,  288 ; BURGELA
	mon_cry CRY_GOLEM,         0,  256 ; TANGELA
	mon_cry CRY_GOLEM,      -230,  256 ; TANGROWTH
	mon_cry CRY_GOLEM,       507,  320 ; JUNGELA
	mon_cry CRY_VENONAT,     136,  224 ; EEVEE
	mon_cry CRY_VENONAT,     170,  383 ; VAPOREON
	mon_cry CRY_VENONAT,      61,  256 ; JOLTEON
	mon_cry CRY_VENONAT,      16,  160 ; FLAREON
	mon_cry CRY_AIPOM,       162,  320 ; ESPEON
	mon_cry CRY_VENONAT,    -233,  240 ; UMBREON
	mon_cry CRY_TYPHLOSION,   20,  280 ; GLACEON FrostedGeulleisia
	mon_cry CRY_VENONAT,      61,  352 ; LEAFEON Polisheddevs
	mon_cry CRY_VENONAT,     176,  367 ; SYLVEON Polisheddevs
	mon_cry CRY_BLASTOISE,    57,  288 ; BUZZEON
	mon_cry CRY_SPINARAK,   -174,  434 ; DURANT
	mon_cry CRY_CYNDAQUIL,   510,  320 ; SWINUB
	mon_cry CRY_MAGCARGO,   -265,  256 ; PILOSWINE
	mon_cry CRY_MAGCARGO,   -490,  288 ; MAMOSWINE
	mon_cry CRY_TEDDIURSA,  1954,  110 ; TEDDIURSA
	mon_cry CRY_TEDDIURSA,  1600,  216 ; URSARING
	mon_cry CRY_TEDDIURSA,  1071,  264 ; URSALUNA
	mon_cry CRY_WOOPER,     3923,  431 ; SNOVER
	mon_cry CRY_WOOPER,     -595,  447 ; ABOMASNOW
	mon_cry CRY_AMPHAROS,   2217,  384 ; SKARMORY
	mon_cry CRY_WEEPINBELL,  447,  223 ; BLITZLE
	mon_cry CRY_WEEPINBELL,   -5,  256 ; ZEBSTRIKA
	mon_cry CRY_WEEPINBELL, 4031,  336 ; PONYTA
	mon_cry CRY_WEEPINBELL, 3756,  400 ; RAPIDASH
	mon_cry CRY_METAPOD,    -164,  208 ; SANDYGAST
	mon_cry CRY_METAPOD,    -595,  192 ; PALOSSAND 
	mon_cry CRY_TEDDIURSA,  1951,  158 ; STUFFUL
	mon_cry CRY_TEDDIURSA,  -396,  264 ; BEWEAR
	mon_cry CRY_CHATOT,       63,  320 ; ORICORIO_BAILE
	mon_cry CRY_CHATOT,       63,  320 ; ORICORIO_POM
	mon_cry CRY_CYNDAQUIL,    57,  320 ; HOUNDOUR
	mon_cry CRY_TOTODILE,   -266,  256 ; HOUNDOOM
	mon_cry CRY_CHATOT,       63,  320 ; ORICORIO_PAU
	mon_cry CRY_CHATOT,       63,  320 ; ORICORIO_SENSU
	mon_cry CRY_NIDOQUEEN,   -81,  336 ; ORANGURU
	mon_cry CRY_HOOTHOOT,    304,  232 ; MISDREAVUS
	mon_cry CRY_HOOTHOOT,   4432,  248 ; MISMAGIUS
	mon_cry CRY_WEEPINBELL,  170,  383 ; PORYGON
	mon_cry CRY_GIRAFARIG,   115,  576 ; PORYGON2
	mon_cry CRY_SEEL,        517,  592 ; PORYGONX
	mon_cry CRY_LAPRAS,        0,  256 ; LAPRAS
	mon_cry CRY_AMAURA,       -2,  317 ; AMAURA Ax6
	mon_cry CRY_BLASTOISE,   259,  234 ; AURORUS Ax6
	mon_cry CRY_VULPIX,     4063,  160 ; MINIOR
	mon_cry CRY_VULPIX,     4063,  160 ; MINIOR
	mon_cry CRY_BULBASAUR,  -196,  255 ; DRAMPA
	mon_cry CRY_GRIMER,       85,  129 ; SNORLAX
	mon_cry CRY_CLEFFA,     -124,  336 ; MAWILE
	mon_cry CRY_CLEFFA,     -124,  336 ; MEGA_MAWILE
	mon_cry CRY_CLEFAIRY,   -212,  385 ; SKRELP
	mon_cry CRY_SLUGMA,     4001,  241 ; DRAGALGE
	mon_cry CRY_BULBASAUR,  3935,  448 ; DREEPY
	mon_cry CRY_BULBASAUR,  1600,  336 ; DRAKLOAK
	mon_cry CRY_BULBASAUR,    -5,  352 ; DRAGAPULT
	mon_cry CRY_FEAROW,      238,  385 ; BRUXISH
	mon_cry CRY_DIGLETT,       0,  256 ; EXEGGCUTE
	mon_cry CRY_DROWZEE,       0,  256 ; EXEGGUTOR
	mon_cry CRY_MAGCARGO,      0,  384 ; SUICUNE
	mon_cry CRY_PSYDUCK,     408,  385 ; APPLIN
	mon_cry CRY_PSYDUCK,     510,  385 ; FLAPPLE
	mon_cry CRY_PSYDUCK,     -79,  385 ; APPLETUN
	mon_cry CRY_RAIKOU,       95,  208 ; LARVITAR
	mon_cry CRY_SPINARAK,   -475,  336 ; PUPITAR
	mon_cry CRY_RAIKOU,     -256,  384 ; TYRANITAR
	mon_cry CRY_MAGCARGO,   -241,  496 ; ZACIAN
	mon_cry CRY_PARAS,      -103,  639 ; MEWTHREE
	mon_cry CRY_GROWLITHE,  4014,  208 ; POPPY
	mon_cry CRY_GROWLITHE,  2175,  256 ; DAISY
	mon_cry CRY_WEEDLE,      -16,  512 ; BOOMER
	mon_cry CRY_PIDGEY,     -271,  677 ; KIRBY
	mon_cry CRY_NATU,       -489,  824 ; M_BLOCK
	mon_cry CRY_AMPHAROS,   -124,  999 ; BAD_EGG
	mon_cry CRY_HOOTHOOT,   -578,  368 ; FURIOUSB
	assert_table_length NUM_POKEMON
	mon_cry CRY_HOOTHOOT,      0,    0 ; 254
	mon_cry CRY_HOOTHOOT,      0,    0 ; 255
	assert_table_length $ff
