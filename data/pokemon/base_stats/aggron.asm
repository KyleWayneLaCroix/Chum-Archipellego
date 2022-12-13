 db AGGRON

	db  70, 110, 180,  50,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK ; type
	db 45 ; catch rate
	db 239 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aggron/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BODY_SLAM, CUT, DARK_PULSE, DIG, DOUBLE_EDGE, EARTHQUAKE, FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, ICE_BEAM, ICE_PUNCH, IRON_HEAD, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SURF, THUNDER, THUNDERBOLT, TOXIC, WATER_PULSE, WHIRLPOOL
	; end
