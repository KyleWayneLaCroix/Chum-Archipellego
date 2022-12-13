 db MISDREAVUS

	db  60,  60,  60,  85,  85,  85
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 87 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/misdreavus/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, DARK_PULSE, FLASH, HEADBUTT, HIDDEN_POWER, OMINOUS_WIND, PSYBEAM, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SHOCK_WAVE, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, THUNDER, THUNDERBOLT, TOXIC
	; end
