 db VOLCARONA

	db  85,  60,  65, 100, 135, 105
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 15 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/volcarona/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER, SOLARBEAM, FIRE_BLAST, FLAMETHROWER, PSYCHIC_M, RETURN, SUNNY_DAY, SIGNAL_BEAM, SWIFT, TOXIC, OMINOUS_WIND, DOUBLE_EDGE, BODY_SLAM
	; end
