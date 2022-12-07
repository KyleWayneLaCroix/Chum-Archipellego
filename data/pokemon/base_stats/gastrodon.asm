 db GASTRODON

	db 111,  83,  68,  39,  92,  82
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 75 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gastrodon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BODY_SLAM, BODY_SLAM, DIG, EARTHQUAKE, FLASH, GIGA_IMPACT, HAIL, HIDDEN_POWER, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, ICE_BEAM, RAIN_DANCE, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, TOXIC, WATER_PULSE, WATER_PULSE, WATERFALL, WHIRLPOOL
	; end
