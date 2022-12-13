 db REUNICLUS

	db 110,  65,  75,  30, 125,  85
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 50 ; catch rate
	db 221 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/reuniclus/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, ENERGY_BALL, FIRE_PUNCH, FLASH, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, ICE_PUNCH, PSYBEAM, PSYCHIC_M, RAIN_DANCE, RETURN, ROCK_SLIDE, SHADOW_BALL, SLEEP_TALK, STRENGTH, SUBSTITUTE, THUNDER, TOXIC, ZEN_HEADBUTT
	; end
