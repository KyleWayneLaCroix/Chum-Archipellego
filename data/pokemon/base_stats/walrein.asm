 db WALREIN

	db 110,  80,  90,  65,  95,  90
	;   hp  atk  def  spd  sat  sdf

	db ICE, WATER ; type
	db 45 ; catch rate
	db 239 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/walrein/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BLIZZARD, BODY_SLAM, BODY_SLAM, EARTHQUAKE, GIGA_IMPACT, HAIL, HAIL, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, ICE_BEAM, IRON_HEAD, RAIN_DANCE, RETURN, ROCK_SLIDE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, SURF, TOXIC, WATER_PULSE, WATER_PULSE, WATERFALL, WHIRLPOOL
	; end
