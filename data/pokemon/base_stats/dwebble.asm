 db DWEBBLE

	db  50,  65,  85,  55,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 190 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dwebble/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CUT, DIG, EARTHQUAKE, HIDDEN_POWER, POISON_JAB, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, STRENGTH, SUBSTITUTE, TOXIC
	; end
