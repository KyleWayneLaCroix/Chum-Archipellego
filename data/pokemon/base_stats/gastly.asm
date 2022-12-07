 db GASTLY

	db  30,  35,  30,  80, 100,  35
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 62 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gastly/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm DARK_PULSE, DARK_PULSE, ENERGY_BALL, FIRE_PUNCH, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, ICE_PUNCH, OMINOUS_WIND, POISON_JAB, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, THUNDER, THUNDERBOLT, TOXIC, TOXIC
	; end
