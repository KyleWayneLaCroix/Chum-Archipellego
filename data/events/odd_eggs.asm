DEF NUM_ODD_EGGS EQU 16

MACRO prob
	DEF prob_total += \1
	dw prob_total * $ffff / 100
ENDM

OddEggProbabilities:
; entries correspond to OddEggs (below)
	table_width 2, OddEggProbabilities
DEF prob_total = 0
; LARVITAR
	prob 7
	prob 7
; JANGMO_O
	prob 7
	prob 7
; RALTS
	prob 7
	prob 7
; NOIBAT
	prob 7
	prob 7
; DREEPY
	prob 7
	prob 7
; APPLIN
	prob 7
	prob 7
; SKRELP
	prob 7
	prob 7
; BAD_EGG
	prob 1
	prob 1
	assert_table_length NUM_ODD_EGGS
	assert prob_total == 100, "OddEggProbabilities do not sum to 100%!"

OddEggs:
	table_width NICKNAMED_MON_STRUCT_LENGTH, OddEggs

	db LARVITAR
	db NO_ITEM
	db BITE, LEER, TACKLE, OUTRAGE
	dw 02048 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 30, 20, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 17 ; Max HP
	bigdw 9 ; Atk
	bigdw 6 ; Def
	bigdw 11 ; Spd
	bigdw 8 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

	db LARVITAR
	db NO_ITEM
	db THUNDERSHOCK, CHARM, SWEET_KISS, 0
	dw 00256 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 30, 20, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 17 ; Max HP
	bigdw 9 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	db "EGG@@@@@@@@"

	db JANGMO_O
	db NO_ITEM
	db TACKLE, ROLLING_KICK, PSYCH_UP, 0
	dw 04096 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 35, 20, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 7 ; Atk
	bigdw 7 ; Def
	bigdw 6 ; Spd
	bigdw 9 ; SAtk
	bigdw 10 ; SDef
	db "EGG@@@@@@@@"

	db JANGMO_O
	db NO_ITEM
	db TACKLE, ROLLING_KICK, PSYCH_UP, 0
	dw 00768 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 20, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 7 ; Atk
	bigdw 8 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db RALTS
	db NO_ITEM
	db GROWL, CONFUSION, MOONBLAST, 0
	dw 04096 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 15, 20, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 24 ; Max HP
	bigdw 8 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 9 ; SAtk
	bigdw 7 ; SDef
	db "EGG@@@@@@@@"

	db RALTS
	db NO_ITEM
	db GROWL, CONFUSION, MOONBLAST, 0
	dw 00768 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 15, 20, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 24 ; Max HP
	bigdw 8 ; Atk
	bigdw 7 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

	db NOIBAT
	db NO_ITEM
	db TACKLE, DRAGON_DANCE, DRAGON_PULSE, OUTRAGE
	dw 03584 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 35, 30, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 8 ; Atk
	bigdw 6 ; Def
	bigdw 11 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db NOIBAT
	db NO_ITEM
	db TACKLE, DRAGON_DANCE, DRAGON_PULSE, OUTRAGE
	dw 00512 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 30, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 8 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 14 ; SAtk
	bigdw 12 ; SDef
	db "EGG@@@@@@@@"

	db DREEPY
	db NO_ITEM
	db BITE, OMINOUS_WIND, DRAGON_PULSE, DRAGON_DANCE
	dw 02560 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 25, 10, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 12 ; Atk
	bigdw 8 ; Def
	bigdw 13 ; Spd
	bigdw 12 ; SAtk
	bigdw 10 ; SDef
	db "EGG@@@@@@@@"

	db DREEPY
	db NO_ITEM
	db BITE, OMINOUS_WIND, DRAGON_PULSE, DRAGON_DANCE
	dw 00512 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 25, 10, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 12 ; Atk
	bigdw 9 ; Def
	bigdw 14 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db APPLIN
	db NO_ITEM
	db DEFENSE_CURL, DRAGON_PULSE, OUTRAGE, DRAGON_DANCE
	dw 03072 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 30, 30, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 11 ; Atk
	bigdw 8 ; Def
	bigdw 14 ; Spd
	bigdw 11 ; SAtk
	bigdw 10 ; SDef
	db "EGG@@@@@@@@"

	db APPLIN
	db NO_ITEM
	db DEFENSE_CURL, DRAGON_PULSE, OUTRAGE, DRAGON_DANCE
	dw 00512 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 30, 30, 10, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 11 ; Atk
	bigdw 9 ; Def
	bigdw 15 ; Spd
	bigdw 12 ; SAtk
	bigdw 11 ; SDef
	db "EGG@@@@@@@@"

	db SKRELP
	db NO_ITEM
	db SMOKESCREEN, FAINT_ATTACK, SCALD, OUTRAGE
	dw 02560 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 35, 10, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 8 ; Atk
	bigdw 8 ; Def
	bigdw 8 ; Spd
	bigdw 8 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

	db SKRELP
	db NO_ITEM
	db SMOKESCREEN, FAINT_ATTACK, SCALD, OUTRAGE
	dw 00256 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 10, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 8 ; Atk
	bigdw 9 ; Def
	bigdw 9 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	db "EGG@@@@@@@@"


	db BAD_EGG
	db NO_ITEM
	db GLITCH_M, EXPLOSION, TOXIC, SUBSTITUTE
	dw 02560 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 15, 15 ; DVs
	db 35, 10, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 8 ; Atk
	bigdw 8 ; Def
	bigdw 8 ; Spd
	bigdw 8 ; SAtk
	bigdw 8 ; SDef
	db "EGG@@@@@@@@"

	db BAD_EGG
	db NO_ITEM
	db GLITCH_M, EXPLOSION, TOXIC, SUBSTITUTE
	dw 00256 ; OT ID
	dt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 10, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 1, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 8 ; Atk
	bigdw 9 ; Def
	bigdw 9 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	db "EGG@@@@@@@@"

	assert_table_length NUM_ODD_EGGS
