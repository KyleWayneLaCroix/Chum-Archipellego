 db LARVESTA

	db  55,  85,  55,  60,  50,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIRE ; type
	db 65 ; catch rate
	db 72 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/larvesta/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SOLARBEAM, FIRE_BLAST, FLAMETHROWER, PSYCHIC_M, RETURN, SUNNY_DAY, SIGNAL_BEAM, SWIFT, TOXIC, OMINOUS_WIND, DOUBLE_EDGE, BODY_SLAM, HIDDEN_POWER
	; end
