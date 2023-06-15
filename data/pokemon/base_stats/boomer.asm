 db BOOMER

	db  55, 100,  60, 110, 125,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GHOST ; type
	db 50 ; catch rate
	db 158 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/boomer/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BITE, OMINOUS_WIND, SHADOW_BALL
	; end
