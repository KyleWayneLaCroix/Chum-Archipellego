 db TYRANITAR

	db 100, 134, 110,  61,  95, 100
	;   hp  atk  def  spd  sat  sdf

	db ROCK, DARK ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tyranitar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, BODY_SLAM, CUT, DARK_PULSE, DARK_PULSE, DIG, EARTHQUAKE, EARTHQUAKE, FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER, GIGA_IMPACT, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, HYPER_BEAM, ICE_BEAM, ICE_PUNCH, IRON_HEAD, RAIN_DANCE, RETURN, ROCK_SLIDE, ROCK_SLIDE, SANDSTORM, SANDSTORM, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SURF, THUNDER, THUNDERBOLT, TOXIC, WATER_PULSE, WHIRLPOOL
	; end
