 db ALOMOMOLA

	db 165,  75,  80,  65,  40,  45
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 85 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/alomomola/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, CALM_MIND, HAIL, HIDDEN_POWER, HYDRO_PUMP, ICE_BEAM, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SURF, TOXIC, WATER_PULSE, WATERFALL, WHIRLPOOL
	; end
