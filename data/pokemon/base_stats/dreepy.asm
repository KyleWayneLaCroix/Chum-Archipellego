 db DREEPY

	db  28,  60,  30,  82,  40,  30
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GHOST ; type
	db 45 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dreepy/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
