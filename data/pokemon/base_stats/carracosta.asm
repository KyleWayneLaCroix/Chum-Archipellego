 db CARRACOSTA

	db  74, 108, 133,  32,  83,  65
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 45 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/carracosta/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, BODY_SLAM, DIG, EARTHQUAKE, GIGA_IMPACT, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, ICE_BEAM, IRON_HEAD, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, TOXIC, WATER_PULSE, WATERFALL, WHIRLPOOL, ZEN_HEADBUTT
	; end
