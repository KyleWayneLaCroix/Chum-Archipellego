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
    const ROOKIDEE          ; 07
    const CORVISQUIRE       ; 08
    const CORVIKNIGHT       ; 09
    const FARFETCHD         ; 0A
    const LUXWAN            ; 0B
    const SIRFETCHD         ; 0C
    const YUNGOOS           ; 0D
    const GUMSHOOS          ; 0E
    const WOOLOO            ; 0F
    const DUBWOOL           ; 10
    const YAMPER            ; 11
    const BOLTUND           ; 12
    const EMOLGA            ; 13
    const GRUBBIN           ; 14
    const CHARJABUG         ; 15
    const VIKAVOLT          ; 16
    const BLIPBUG           ; 17
    const DOTTLER           ; 18
    const ORBEETLE          ; 19
    const SIZZLIPEDE        ; 1A
    const CENTISKORCH       ; 1B
    const SNOM              ; 1C
    const FROSMOTH          ; 1D
    const ARON              ; 1E
    const LAIRON            ; 1F
    const AGGRON            ; 20
    const NOIBAT            ; 21
    const NOIVERN           ; 22
    const WOOBAT            ; 23
    const SWOOBAT           ; 24
    const RALTS             ; 25
    const KIRLIA            ; 26
    const GARDEVOIR         ; 27
    const GALLADE           ; 28
    const HATENNA           ; 29
    const HATTREM           ; 2A
    const HATTERENE         ; 2B
    const ZIGZAGOON         ; 2C
    const LINOONE           ; 2D
    const OBSTAGOON         ; 2E
    const MUDBRAY           ; 2F
    const MUDSDALE          ; 30
    const DEERLING          ; 31
    const SAWSBUCK          ; 32
    const ROCKRUFF          ; 33
    const LYCANROC_MIDDAY   ; 34
    const LYCANROC_DUSK     ; 35
    const LYCANROC_MIDNIGHT ; 36
    const BARBOACH          ; 37
    const WHISCASH          ; 38
    const GASTLY            ; 39
    const HAUNTER           ; 3A
    const GENGAR            ; 3B
    const MEGA_GENGAR       ; 3C
    const UNOWN             ; 3D
    const DWEBBLE           ; 3E
    const CRUSTLE           ; 3F
    const LOTAD             ; 40
    const LOMBRE            ; 41
    const LUDICOLO          ; 42
    const HOPPIP            ; 43
    const SKIPLOOM          ; 44
    const JUMPLUFF          ; 45
    const MORELULL          ; 46
    const SHIINOTIC         ; 47
    const ALOMOMOLA         ; 48
    const SPHEAL            ; 49
    const SEALEO            ; 4A
    const WALREIN           ; 4B
    const DEWPIDER          ; 4C
    const ARAQUANID         ; 4D
    const MAREANIE          ; 4E
    const TOXAPEX           ; 4F
    const BELDUM            ; 50
    const METANG            ; 51
    const METAGROSS         ; 52
    const LARVESTA          ; 53
    const VOLCARONA         ; 54
    const SHROOMISH         ; 55
    const BRELOOM           ; 56
    const MUNNA             ; 57
    const MUSHARNA          ; 58
    const SOLOSIS           ; 59
    const DUOSION           ; 5A
    const REUNICLUS         ; 5B
    const DITTO             ; 5C
    const TRUBBISH          ; 5D
    const GARBODOR          ; 5E
    const SALANDIT          ; 5F
    const SALAZZLE          ; 60
    const STUNKY            ; 61
    const SKUNTANK          ; 62
    const GRENMAR           ; 63
    const YANMA             ; 64
    const YANMEGA           ; 65
    const CHERUBI           ; 66
    const CHERRIM           ; 67
    const BOUNSWEET         ; 68
    const STEENEE           ; 69
    const TSAREENA          ; 6A
    const BOUFFALANT        ; 6B
    const FOMANTIS          ; 6C
    const LURANTIS          ; 6D
    const SCYTHER           ; 6E
    const SCIZOR            ; 6F
    const KLEAVOR           ; 70
    const HERACROSS         ; 71
    const COMBEE            ; 72
    const VESPIQUEN         ; 73
    const KOFFING           ; 74
    const WEEZING           ; 75
    const GRIMER            ; 76
    const MUK               ; 77
    const ESPURR            ; 78
    const MEOWSTIC_M        ; 79
    const MEOWSTIC_F        ; 7A
    const PURRLOIN          ; 7B
    const LIEPARD           ; 7C
    const SKITTY            ; 7D
    const DELCATTY          ; 7E
    const LITLEO            ; 7F
    const PYROAR            ; 80
    const GROWLITHE         ; 81
    const ARCANINE          ; 82
    const STANTLER          ; 83
    const WYRDEER           ; 84
    const CHATOT            ; 85
    const DRILBUR           ; 86
    const EXCADRILL         ; 87
    const MAKUHITA          ; 88
    const HARIYAMA          ; 89
    const MEOWTH            ; 8A
    const PERRSERKER        ; 8B
    const CHOMP             ; 8C
    const REGIMAGMA         ; 8D
    const CROAGUNK          ; 8E
    const TOXICROAK         ; 8F
    const CLOBBOPUS         ; 90
    const GRAPPLOCT         ; 91
    const JANGMO_O          ; 92
    const HAKAMO_O          ; 93
    const KOMMO_O           ; 94
    const LILLIPUP          ; 95
    const HERDIER           ; 96
    const STOUTLAND         ; 97
DEF JOHTO_POKEMON EQU const_value
    const SALANDIT2         ; 98
    const SALAZZLE2         ; 99
    const TYKER             ; 9A
    const STRAIGAR          ; 9B
    const TYMPOLE           ; 9C
    const PALPITOAD         ; 9D
    const SEISMITOAD        ; 9E
    const PIKIPEK           ; 9F
    const TRUMBEAK          ; A0
    const TOUCANNON         ; A1
    const HEATMOR           ; A2
    const MOLAMBINO         ; A3
    const ANGORE            ; A4
    const CLAUNCHER         ; A5
    const CLAWITZER         ; A6
    const BUIZEL            ; A7
    const FLOATZEL          ; A8
    const SHELLOS           ; A9
    const GASTRODON         ; AA
    const FINNEON           ; AB
    const LUMINEON          ; AC
    const TIRTOUGA          ; AD
    const CARRACOSTA        ; AE
    const CHINCHOU          ; AF
    const LANTURN           ; B0
    const BURGELA           ; B1
    const TANGELA           ; B2
    const TANGROWTH         ; B3
    const JUNGELA           ; B4
    const EEVEE             ; B5
    const VAPOREON          ; B6
    const JOLTEON           ; B7
    const FLAREON           ; B8
    const ESPEON            ; B9
    const UMBREON           ; BA
    const GLACEON           ; BB
    const LEAFEON           ; BC
    const SYLVEON           ; BD
    const BUZZEON           ; BE
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
    const MEWTHREE          ; F6
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
