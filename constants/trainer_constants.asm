DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
DEF CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

	trainerclass CASEY
	const CASEY_1

	trainerclass JORDAN    ; 1
	const JORDAN1
	const JORDAN2

	trainerclass KYLE      ; 2
	const KYLE1

	trainerclass LEE       ; 3
	const LEE1

	trainerclass MER       ; 4
	const MADDIE1
	const MERBRIAN
	const MARTHA2

	trainerclass RIVAL1 ; 9
	const RIVAL1_1

	trainerclass RIVAL2 ; 2a
	const RIVAL2_1

	trainerclass RYAN ; d
	const RYAN1

	trainerclass SANHA
	const SANHA1

	trainerclass SARAH ; 5
	const SARAH1

	trainerclass FURRY ; 3
	const VICTORIA1
	const HOLLOWAY

	trainerclass LOAFER ; 4
	const SAM1

	trainerclass HEROOFTIME ; 44
	const LINK
	const GLITCH_LINK
	const LINK_2

	trainerclass KEYBLADER ; 45
	const SORA
	const OAK

	trainerclass GORON
	const DARU
	const KOGO
	const ZUDO
	const TODO
	const GRAMRO

	trainerclass ARTIST
	const ANGELO

	trainerclass BATTLE_GIRL
	const VIDEL

	trainerclass BIKER ; 2d
	const BIKER_BENNY
	const KAZU
	const DWAYNE


	trainerclass BIRD_KEEPER ; 18
	const ROD
	const ABE
	const BRYAN
	const THEO

	trainerclass BLACKBELT_T ; 32
	const DANIEL
	const YOSHI
	const KENJI

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass BOARDER ; 3a
	const RONALD

	trainerclass BUG_CATCHER ; 24
	const DON
	const JIM
	const ED
	const WADE1
	const BUG_CATCHER_BENNY
	const AL
	const JOSH

	trainerclass BUG_MANIAC
	const ARNIE

	trainerclass BURGLAR ; 2f
	const DUNCAN

	trainerclass CAL ; c
	const CAL1

	trainerclass CAMPER ; 36
	const ROLAND
	const TODD1
	const IVAN

	trainerclass CEO ; 33
	const LONGO

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass COOLTRAINERF ; 1c
	const GWEN
	const LOIS

	trainerclass COOLTRAINERM ; 1b
	const NICKY
	const AARON

	trainerclass COUPLE
	const JO_AND_JOE

	trainerclass DETECTIVE_F
	const JANE

	trainerclass DETECTIVE_M
	const GUM

	trainerclass ENGINEER
	const DONNY

	trainerclass FANCY_LAD
	const HAYDEN

	trainerclass FEDORA_MAN ; 20
	const NICK_B
	const JORDANP

	trainerclass FERAL_CHILD
	const GAU

	trainerclass FIREBREATHER ; 30
	const OTIS
	const DICK
	const NED
	const BURT

	trainerclass FISHER ; 25
	const JUSTIN
	const RALPH
	const ARNOLD
	const GORO
	const HENRY
	const MARVIN
	const TULLY1
	const ANDRE

	trainerclass GHOST_T ; 50
	const CG_GHOST

	trainerclass GIRL_BOSS
	const LINA

	trainerclass GLITCH_T ; 1f
	const GLITCH_1
	const GLITCH_2
	const GLITCH_3
	const GLITCH_4
	const GLITCH_5
	const TROPHY
	const GLITCH_7

	trainerclass GRAMPS ; 3b
	const WILLIS

	trainerclass GRANNY ; 3e
	const BEVERLY1

	trainerclass GUITARIST ; 2b
	const CLYDE

	trainerclass HEX_MANIAC
	const HANNA

	trainerclass HIKER ; 2c
	const COURTNEY
	const HORACE
	const PHILLIP
	const LEONARD
	const ANTHONY1
	const BENJAMIN
	const ERIK
	const MICHAEL
	const PARRY

	trainerclass IT_GUY ; 14
	const MIKE_B

	trainerclass JUGGLER ; 31
	const IRWIN1

	trainerclass KARATE_KING
	const JET

	trainerclass KAREN
	const KAREN1

	trainerclass KIMONO_GIRL ; 3c
	const SUI   ; vaporeon
	const AKANE ; flareon
	const RIKO  ; jolteon
	const KIMI  ; umbreon
	const KARI  ; espeon
	const HIKA  ; glaceon
	const HANA  ; leafeon
	const SEN   ; sylveon
	const HACHI ; honeon

	trainerclass LADY
	const PEACOCK

	trainerclass LASS ; 19
	const CARRIE
	const BRIDGET
	const JASMINEH

	trainerclass MAD_SCIENTIST
	const BROWN

	trainerclass MEDIUM ; 39
	const MARTHA
	const GRACE
	const WELL

	trainerclass NINJA_F
	const HINATA

	trainerclass NINJA_M
	const NARUTO

	trainerclass OFFICER ; 41
	const KEITH

	trainerclass PROFESSOR
	const BANYAN

	trainerclass PASTOR ; 11
	const JOELEO

	trainerclass PHOTOGRAPHER ; 38
	const JULIAN
	const NICO
	const PBRIAN
	const TROY

	trainerclass PICNICKER ; 35
	const LIZZY
	const GINA1
	const BROOKE
	const KIM
	const CINDY


	trainerclass PSYCHIC_T ; 34
	const NATHAN
	const FRANKLIN

	trainerclass PYRO
	const DENA
	const MANNY

	trainerclass RED ; 3f
	const RED1

	trainerclass RUFFIAN
	const GRENDO
	const RUFF_BRIAN

	trainerclass RUIN_MANIAC
	const NIEL
	const ELVIN

	trainerclass SAFARI
	const INDY

	trainerclass SAGE
	const KOTANI

	trainerclass SAILOR ; 28
	const EUGENE

	trainerclass SCIENTIST
	const TYSE

	trainerclass SENPAI_KOUHAI
	const YUU_TOU

	trainerclass SIGHTSEER_F
	const JILL

	trainerclass SIGHTSEER_M
	const JACK

	trainerclass SKATER_BOY
	const TONY

	trainerclass SKIER ; 21
	const ROXANNE

	trainerclass SUPERVISOR ; 13
	const JOSH1
	const STEV
	const SCOT

	trainerclass SWIMMER_F ; 27
	const ELAINE

	trainerclass SWIMMER_M ; 26
	const HAROLD

	trainerclass TAMER
	const RINGLE

	trainerclass TEACHER ; 22
	const COLETTE
	const JIN_YANG
	const SHIRLEY
	const ASHLEY

	trainerclass TWINS ; 3d
	const AMYANDMAY

	trainerclass UNDEAD ;
	const CLAYWHOLE

	trainerclass WAIFU
	const MIKU

	trainerclass WEIRDO ; 1e
	const NICK
	const ANDREW
	const CALVIN
	const JACK_SIMON
	const LOGAN
	const BRENT

	trainerclass WHITE_GIRL ; 1d
	const AIMEE
	const TAYLOR1
	const JULIE
	const JACLYN
	const BRENDA
	const BOOZER

	trainerclass WORKER ; 17
	const CGHQ_Q
	const KIPP
	const ALAN

	trainerclass YOUNGSTER ; 16
	const JOEY1
	const MIKEY
	const ALBERT

	trainerclass BALL_BRIAN ; 46
	const BALLBRIAN_1
	const BALLBRIAN_2
	const BALLBRIAN_3
	const BALLBRIAN_4
	const BALLBRIAN_5

	trainerclass MAD_DOG ; 49
	const BRIAN_1
	const BRIANEON

	trainerclass BRIAN_F
	const BRIAN_F_1
	const BRIAN_F_2

	trainerclass BRIAN_M
	const BRIAN_M_1
	const BRIAN_M_2
	const BRIAN_M_3

	trainerclass BRIAN_64 ;
	const BRIAN_64_1
	const BRIAN_64_2
	const BRIAN_64_3

	trainerclass BUG_BRIAN ;
	const BUGBRIAN_1
	const BUGBRIAN_2

	trainerclass ROCK_BRIAN ; 48
	const ROCKBRIAN_1
	const ROCKBRIAN_2
	const ROCKBRIAN_3

	trainerclass TREE_BRIAN ; 47
	const TREEBRIAN_1
	const TREEBRIAN_2
	const TREEBRIAN_3
	const TREEBRIAN_4

	trainerclass OCTOROK_T
	const OCTOROK_1
	const OCTOROK_2
	const OCTOROK_3
	const OCTOROK_4
	const OCTOROK_5
	const OCTOROK_6
	const OCTOROK_7
	const OCTOROK_8
	const OCTOROK_9
	const OCTOROK_10
	const OCTOROK_11
	const OCTOROK_12
	const OCTOROK_13

	trainerclass SHOPKEEPER_T
	const SHOPKEEPER_1

	trainerclass MOBLIN
	const MOBLIN_1
	const MOBLIN_2
	const MOBLIN_3
	const MOBLIN_4
	const MOBLIN_5
	const WILKEN
	const MOBLIN_7
	const MOBLIN_8
	const MOBLIN_9
	const MOBLIN_10
	const MOBLIN_11

	trainerclass ARMOS
	const ARMOS_1
	const ARMOS_2
	const ARMOS_3
	const ARMOS_4

DEF KRIS EQU __trainer_class__

DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
