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
	db         KYLE_LACROIX, 2

	db CREDITS_WAIT, 12

	db              CREATOR, 1
	db         KYLE_LACROIX, 2

	db CREDITS_WAIT, 12

	db              CREATOR, 1
	db         KYLE_LACROIX, 2

	db CREDITS_WAIT, 12

	db              CREATOR, 1
	db         KYLE_LACROIX, 2

	db CREDITS_WAIT, 12

	db            COPYRIGHT, 1

	db CREDITS_WAIT, 9

; Display "The End" graphic.
	db CREDITS_THEEND

	db CREDITS_WAIT, 20

	db CREDITS_END
