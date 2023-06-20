 db GRENMAR

	db  75,  90,  60,  90, 105,  60
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIRE ; type
	db 90 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/grenmar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FLAMETHROWER, HEADBUTT, HYDRO_PUMP, WATER_PULSE, ZEN_HEADBUTT, SINGE, STRENGTH, SURF, SWIFT, SUBSTITUTE, SHADOW_BALL, RETURN, RAIN_DANCE, SLEEP_TALK, PLAY_ROUGH, IRON_HEAD, HIDDEN_POWER, ENERGY_BALL, DOUBLE_EDGE, DAZZLE_BEAM, BODY_SLAM, FIRE_BLAST, FIRE_PUNCH, CALM_MIND
	; end
