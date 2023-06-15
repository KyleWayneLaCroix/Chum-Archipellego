 db M_BLOCK

	db  65, 155, 120, 105,  65,  90
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FAIRY ; type
	db 50 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/m_block/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm EARTHQUAKE, HYPER_BEAM
	; end
