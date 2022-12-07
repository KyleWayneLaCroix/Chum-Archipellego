 db TIRTOUGA

	db  54,  78, 103,  22,  53,  45
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 45 ; catch rate
	db 71 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tirtouga/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, BODY_SLAM, DIG, EARTHQUAKE, HIDDEN_POWER, HYDRO_PUMP, HYDRO_PUMP, ICE_BEAM, RAIN_DANCE, RAIN_DANCE, RETURN, ROCK_SLIDE, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, TOXIC, WATER_PULSE, WATERFALL, WATERFALL, WHIRLPOOL, ZEN_HEADBUTT
	; end
