 db LAPRAS

	db 130,  85,  80,  60,  85,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 187 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lapras/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BLIZZARD, BODY_SLAM, BODY_SLAM, DOUBLE_EDGE, GIGA_IMPACT, HAIL, HEADBUTT, HIDDEN_POWER, HYDRO_PUMP, HYDRO_PUMP, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, ICE_BEAM, IRON_HEAD, PSYCHIC_M, RAIN_DANCE, RAIN_DANCE, RETURN, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, SURF, THUNDER, THUNDERBOLT, TOXIC, WATER_PULSE, WATER_PULSE, WATERFALL, WHIRLPOOL, ZEN_HEADBUTT
	; end
