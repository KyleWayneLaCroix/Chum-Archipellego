 db MUSHARNA

	db 116,  55,  85,  29, 107,  95
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 170 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/musharna/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, ENERGY_BALL, FLASH, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, MOONBLAST, PSYBEAM, PSYCHIC_M, RAIN_DANCE, RETURN, ROCK_SLIDE, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SWIFT, TOXIC, ZEN_HEADBUTT
	; end
