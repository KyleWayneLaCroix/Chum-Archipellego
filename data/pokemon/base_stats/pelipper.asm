 db PELIPPER

	db  60,  50, 100,  65,  95,  70
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 154 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pelipper/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, FLY, GIGA_IMPACT, HAIL, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, ICE_BEAM, RAIN_DANCE, RETURN, SHOCK_WAVE, SLEEP_TALK, SUBSTITUTE, SURF, SWIFT, TOXIC, WATER_PULSE, WHIRLPOOL
	; end
