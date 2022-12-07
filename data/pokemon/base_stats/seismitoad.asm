 db SEISMITOAD

	db 105,  95,  75,  74,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 45 ; catch rate
	db 229 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/seismitoad/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm DIG, EARTHQUAKE, GIGA_IMPACT, HAIL, HIDDEN_POWER, HYDRO_PUMP, HYDRO_PUMP, HYPER_BEAM, HYPER_VOICE, HYPER_VOICE, ICE_PUNCH, POISON_JAB, RAIN_DANCE, RAIN_DANCE, RETURN, ROCK_SLIDE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, TOXIC
	; end
