 db GRUBBIN

	db  47,  62,  45,  46,  55,  45
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 255 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/grubbin/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm BITE, DIG, HIDDEN_POWER, POISON_JAB, RAIN_DANCE, RETURN, SLEEP_TALK, SUBSTITUTE, THUNDERBOLT, TOXIC
	; end
