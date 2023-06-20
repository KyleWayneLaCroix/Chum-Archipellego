 db SUICUNE

	db 100,  75, 115,  85,  90, 115
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/suicune/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, BODY_SLAM, CALM_MIND, CUT, DIG, GIGA_IMPACT, HAIL, HEADBUTT, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, ICE_BEAM, IRON_HEAD, RAIN_DANCE, RETURN, SANDSTORM, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SURF, SWIFT, TOXIC, WATER_PULSE, WATERFALL, WHIRLPOOL, PSYCHIC_M, STRENGTH
	; end
