CreditsScript:

; Clear the banner.
	db CREDITS_CLEAR

; Pokemon Crystal Version Staff
	db                STAFF, 1

	db CREDITS_WAIT, 8

; Play the credits music.
	db CREDITS_MUSIC

	db CREDITS_WAIT2, 10

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 0 ; Pichu

	db              CREATOR, 1
	db         KYLE_LWELYK, 2

	db CREDITS_WAIT, 25

	db              CREATOR, 1
	db         KYLE_LWELYK, 2

	db CREDITS_WAIT, 25

	db          INSPIRED_BY, 0
	db           BRO_ISLAND, 1
	db              CREATOR, 3
	db                BRIAN, 4

	db CREDITS_WAIT, 25

	db                USING, 0
	db         POLISHED_MAP, 1
	db           CREATED_BY, 3
	db                RANGI, 4

	db CREDITS_WAIT, 25

	db                USING, 0
	db      TILE_MAP_STUDIO, 1
	db           CREATED_BY, 3
	db                RANGI, 4

	db CREDITS_WAIT, 25

	db                USING, 0
	db               CRY_ED, 1
	db           CREATED_BY, 3
	db             DEV_ED_2, 4
	db           CHAOS_LORD, 5

	db CREDITS_WAIT, 25

	db                USING, 0
	db      CRYSTAL_TRACKER, 1
	db           CREATED_BY, 3
	db               DANNYE, 4

	db CREDITS_WAIT, 25

	db                USING, 0
	db             MIDI2ASM, 1
	db           CREATED_BY, 3
	db        TRITE_HEXAGON, 4

	db CREDITS_WAIT, 25

; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 2 ; Ditto

	db      POKEMON_SPRITES, 0
	db                NYUUK, 2
	db               UTYTFT, 3
	db         POCKET_ILLUST, 4

	db CREDITS_WAIT, 25

	db      POKEMON_SPRITES, 0
	db            EEVEE1999, 2
	db           CINNABOOPA, 3
	db          AXEL_COMICS, 4

	db CREDITS_WAIT, 25

	db      POKEMON_SPRITES, 0
	db           PIA_CARROT, 2
	db     POLISHED_CRYSTAL, 3
	db          KYLE_LWELYK, 4

	db CREDITS_WAIT, 25

	db      POKEMON_SPRITES, 0
	db      SPIRRIP_SPRITES, 2
	db        PEANUT_FIVERR, 3

	db CREDITS_WAIT, 25

	db      POKEMON_SPRITES, 0
	db       GSC_ESSENTIALS, 1
	db       SEE_CREDITS_MD, 2
	db     FOR_FULL_CREDITS, 3
	db       GSC_ESSENTIALS, 4
	db              PROJECT, 5

	db CREDITS_WAIT, 25

	db       OTHER_GRAPHICS, 0
	db     POLISHED_CRYSTAL, 2
	db         BRONZEWAGGER, 3
	db       JUSTIN_NUGGETS, 4

	db CREDITS_WAIT, 25

; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 1 ; Smoochum


	db         CREDIT_MUSIC, 0
	db    POKEMUSIC_DEMAKES, 2
	db        TRITE_HEXAGON, 3

	db CREDITS_WAIT, 25

	db         CREDIT_MUSIC, 0
	db          MEGALOVANIA, 2
	db          SHOCKSLAYER, 3

	db CREDITS_WAIT, 25


	db         CREDIT_MUSIC, 0
	db          KYLE_LWELYK, 2
	db                USING, 3
	db            MIDI2ASM, 4

	db CREDITS_WAIT, 25

	db                CRIES, 0
	db            CELADONK, 2
	db          AX6, 3
	db SOUR_APPLE, 4
	db WALSHYB, 5

	db CREDITS_WAIT, 25

	db                CRIES, 0
	db MY_RATTATA, 2
	db FROSTEDGEULLESISIA, 3
	db POLISHEDDEVS, 4

	db CREDITS_WAIT, 25

	db                CRIES, 0
	db KYLE_LWELYK, 2
	db USING, 3
	db CRY_ED, 4


	db CREDITS_WAIT, 25

	; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

	; Update the banner.
	db CREDITS_SCENE, 3 ; Igglybuff

	db SPECIAL_THANKS, 0
	db LDAIN, 1
	db RANGI, 2
	db AX6, 3
	db PRET, 4
	db AND_CREDIT, 5

	db CREDITS_WAIT, 25

	db SPECIAL_THANKS, 0
	db EVERYONE_ON, 1
	db PRET, 2
	db DISCORD, 3
	db AND_CREDIT, 4
	db WIKI, 5

	db CREDITS_WAIT, 25

	db TESTING, 0
	db RYAN_CREDIT, 3

	db CREDITS_WAIT, 25

	db SPECIAL_THANKS, 0
	db JORDAN_CREDIT, 2
	db RYAN_CREDIT, 3
	db MADDIE, 4

	db CREDITS_WAIT, 25

	db SPECIAL_THANKS, 0
	db LEE_AND_SARAH, 2
	db CASEY_CREDIT, 3
	db ASHLEY_CREDIT, 4
	

	db CREDITS_WAIT, 25

	db SPECIAL_THANKS, 0
	db BRIAN, 2
	db FOR_CREDIT, 3
	db GOOD_SPORT, 4

	
	db CREDITS_WAIT, 25

	db EXECUTIVE_PRODUCER, 1
	db POKEMON_ANIMATION, 2
	db POKEDEX_TEXT, 3
	db MOBILE_PRJ_LEADER, 4
	
	db CREDITS_WAIT, 25

	db            COPYRIGHT, 1

	db CREDITS_WAIT, 15

; Display "The End" graphic.
	db CREDITS_THEEND

	db CREDITS_WAIT, 20

	db CREDITS_END
