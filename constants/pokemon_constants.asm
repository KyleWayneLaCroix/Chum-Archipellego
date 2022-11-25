; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
    const SPIRRIP           ; 01
    const DOOMSTONE         ; 02
    const CRYPTIID          ; 03
    const LITWICK           ; 04
    const LAMPENT           ; 05
    const CHANDELURE        ; 06
    const HONEDGE           ; 07
    const DOUBLADE          ; 08
    const AEGISLASH         ; 09
    const ROOKIDEE          ; 0A
    const CORVISQUIRE       ; 0B
    const CORVIKNIGHT       ; 0C
    const FARFETCHD         ; 0D
    const LUXWAN            ; 0E
    const SIRFETCHD         ; 0F
    const YUNGOOS           ; 10
    const GUMSHOOS          ; 11
    const WOOLOO            ; 12
    const DUBWOOL           ; 13
    const YAMPER            ; 14
    const BOLTUND           ; 15
    const EMOLGA            ; 16
    const GRUBBIN           ; 17
    const CHARJABUG         ; 18
    const VIKAVOLT          ; 19
    const BLIPBUG           ; 1A
    const DOTTLER           ; 1B
    const ORBEETLE          ; 1C
    const SIZZLIPEDE        ; 1D
    const CENTISKORCH       ; 1E
    const SNOM              ; 1F
    const FROSMOTH          ; 20
    const ARON              ; 21
    const LAIRON            ; 22
    const AGGRON            ; 23
    const NOIBAT            ; 24
    const NOIVERN           ; 25
    const WOOBAT            ; 26
    const SWOOBAT           ; 27
    const RALTS             ; 28
    const KIRLIA            ; 29
    const GARDEVOIR         ; 2A
    const GALLADE           ; 2B
    const HATENNA           ; 2C
    const HATTREM           ; 2D
    const HATTERENE         ; 2E
    const ZIGZAGOON         ; 2F
    const LINOONE           ; 30
    const OBSTAGOON         ; 31
    const MUDBRAY           ; 32
    const MUDSDALE          ; 33
    const DEERLING          ; 34
    const SAWSBUCK          ; 35
    const ROCKRUFF          ; 36
    const LYCANROC_MIDDAY   ; 37
    const LYCANROC_DUSK     ; 38
    const LYCANROC_MIDNIGHT ; 39
    const BARBOACH          ; 3A
    const WHISCASH          ; 3B
    const GASTLY            ; 3C
    const HAUNTER           ; 3D
    const GENGAR            ; 3E
    const MEGA_GENGAR       ; 3F
    const UNOWN             ; 40
    const DWEBBLE           ; 41
    const CRUSTLE           ; 42
    const LOTAD             ; 43
    const LOMBRE            ; 44
    const LUDICOLO          ; 45
    const HOPPIP            ; 46
    const SKIPLOOM          ; 47
    const JUMPLUFF          ; 48
    const MORELULL          ; 49
    const SHIINOTIC         ; 4A
    const ALOMOMOLA         ; 4B
    const SPHEAL            ; 4C
    const SEALEO            ; 4D
    const WALREIN           ; 4E
    const DEWPIDER          ; 4F
    const ARAQUANID         ; 50
    const MAREANIE          ; 51
    const TOXAPEX           ; 52
    const BELDUM            ; 53
    const METANG            ; 54
    const METAGROSS         ; 55
    const JOLTIK            ; 56
    const GALVANTULA        ; 57
    const SHROOMISH         ; 58
    const BRELOOM           ; 59
    const MUNNA             ; 5A
    const MUSHARNA          ; 5B
    const SOLOSIS           ; 5C
    const DUOSION           ; 5D
    const REUNICLUS         ; 5E
    const DITTO             ; 5F
    const TRUBBISH          ; 60
    const GARBODOR          ; 61
    const SALANDIT          ; 62
    const SALAZZLE          ; 63
    const STUNKY            ; 64
    const SKUNTANK          ; 65
    const GRENMAR           ; 66
    const YANMA             ; 67
    const YANMEGA           ; 68
    const CHERUBI           ; 69
    const CHERRIM           ; 6A
    const BOUNSWEET         ; 6B
    const STEENEE           ; 6C
    const TSAREENA          ; 6D
    const BOUFFALANT        ; 6E
    const FOMANTIS          ; 6F
    const LURANTIS          ; 70
    const SCYTHER           ; 71
    const SCIZOR            ; 72
    const KLEAVOR           ; 73
    const HERACROSS         ; 74
    const KOFFING           ; 75
    const WEEZING           ; 76
    const GRIMER            ; 77
    const MUK               ; 78
    const ESPURR            ; 79
    const MEOWSTIC_M        ; 7A
    const MEOWSTIC_F        ; 7B
    const PURRLOIN          ; 7C
    const LIEPARD           ; 7D
    const SKITTY            ; 7E
    const DELCATTY          ; 7F
    const LITLEO            ; 80
    const PYROAR            ; 81
    const GROWLITHE         ; 82
    const ARCANINE          ; 83
    const STANTLER          ; 84
    const WYRDEER           ; 85
    const CHATOT            ; 86
    const DRILBUR           ; 87
    const EXCADRILL         ; 88
    const MAKUHITA          ; 89
    const HARIYAMA          ; 8A
    const MEOWTH            ; 8B
    const PERRSERKER        ; 8C
    const WINGULL           ; 8D
    const PELIPPER          ; 8E
    const CROAGUNK          ; 8F
    const TOXICROAK         ; 90
    const CLOBBOPUS         ; 91
    const GRAPPLOCT         ; 92
    const JANGMO_O          ; 93
    const HAKAMO_O          ; 94
    const KOMMO_O           ; 95
    const LILLIPUP          ; 96
    const HERDIER           ; 97
DEF JOHTO_POKEMON EQU const_value
    const STOUTLAND         ; 98
    const SALANDIT2         ; 99
    const SALAZZLE2         ; 9A
    const TYKER             ; 9B
    const STRAIGAR          ; 9C
    const TYMPOLE           ; 9D
    const PALPITOAD         ; 9E
    const SEISMITOAD        ; 9F
    const PIKIPEK           ; A0
    const TRUMBEAK          ; A1
    const TOUCANNON         ; A2
    const HEATMOR           ; A3
    const MOLAMBINO         ; A4
    const ANGORE            ; A5
    const CLAUNCHER         ; A6
    const CLAWITZER         ; A7
    const BUIZEL            ; A8
    const FLOATZEL          ; A9
    const SHELLOS           ; AA
    const GASTRODON         ; AB
    const FINNEON           ; AC
    const LUMINEON          ; AD
    const TIRTOUGA          ; AE
    const CARRACOSTA        ; AF
    const CHINCHOU          ; B0
    const LANTURN           ; B1
    const BURGELA           ; B2
    const TANGELA           ; B3
    const TANGROWTH         ; B4
    const JUNGELA           ; B5
    const EEVEE             ; B6
    const VAPOREON          ; B7
    const JOLTEON           ; B8
    const FLAREON           ; B9
    const ESPEON            ; BA
    const UMBREON           ; BB
    const GLACEON           ; BC
    const LEAFEON           ; BD
    const SYLVEON           ; BE
    const DURANT            ; BF
    const SWINUB            ; C0
    const PILOSWINE         ; C1
    const MAMOSWINE         ; C2
    const TEDDIURSA         ; C3
    const URSARING          ; C4
    const URSALUNA          ; C5
    const SNOVER            ; C6
    const ABOMASNOW         ; C7
    const SKARMORY          ; C8
    const BLITZLE           ; C9
    const ZEBSTRIKA         ; CA
    const PONYTA            ; CB
    const RAPIDASH          ; CC
    const SANDYGAST         ; CD
    const PALOSSAND         ; CE
    const STUFFUL           ; CF
    const BEWEAR            ; D0
    const ORICORIO_BAILE    ; D1
    const ORICORIO_POM      ; D2
    const HOUNDOUR          ; D3
    const HOUNDOOM          ; D4
    const ORICORIO_PAU      ; D5
    const ORICORIO_SENSU    ; D6
    const ORANGURU          ; D7
    const MISDREAVUS        ; D8
    const MISMAGIUS         ; D9
    const PORYGON           ; DA
    const PORYGON2          ; DB
    const PORYGON_Z         ; DC
    const LAPRAS            ; DD
    const AMAURA            ; DE
    const AURORUS           ; DF
    const MINIOR_METEOR     ; E0
    const MINIOR_CORE       ; E1
    const DRAMPA            ; E2
    const SNORLAX           ; E3
    const MAWILE            ; E4
    const MEGA_MAWILE       ; E5
    const SKRELP            ; E6
    const DRAGALGE          ; E7
    const DREEPY            ; E8
    const DRAKLOAK          ; E9
    const DRAGAPULT         ; EA
    const BRUXISH           ; EB
    const EXEGGCUTE         ; EC
    const EXEGGUTOR         ; ED
    const SUICUNE           ; EE
    const APPLIN            ; EF
    const FLAPPLE           ; F0
    const APPLETUN          ; F1
    const LARVITAR          ; F2
    const PUPITAR           ; F3
    const TYRANITAR         ; F4
    const ZACIAN            ; F5
    const BUZZWOLE          ; F6
    const POPPY             ; F7
    const DAISY             ; F8
    const BOOMER            ; F9
    const KIRBY             ; FA
    const M_BLOCK           ; FB
    const BAD_EGG           ; FC
    const FURIOUSB          ; FD
DEF NUM_POKEMON EQU const_value - 1
	const EGG        ; fe

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
DEF NUM_UNOWN EQU const_value - 1 ; 26
