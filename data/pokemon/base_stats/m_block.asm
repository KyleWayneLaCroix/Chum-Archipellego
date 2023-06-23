 db M_BLOCK

	db  65, 155, 120, 105,  65,  90
	;   hp  atk  def  spd  sat  sdf

	db FLYING, GLITCH ; type
	db 30 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/m_block/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, BODY_SLAM, CALM_MIND, DARK_PULSE, DAZZLE_BEAM, DIG, DOUBLE_EDGE, EARTHQUAKE, ENERGY_BALL, FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER, GIGA_DRAIN, GIGA_IMPACT, HAIL, HEADBUTT, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, ICE_PUNCH, IRON_HEAD, MOONBLAST, NIGHT_SLASH, OMINOUS_WIND, PLAY_ROUGH, POISON_JAB, SLEEP_TALK, PSYBEAM, PSYCHIC_M, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SHADOW_BALL, SHOCK_WAVE, SIGNAL_BEAM, SOLARBEAM, SUBMISSION, SUBSTITUTE, SUNNY_DAY, SWIFT, THUNDER, THUNDERBOLT, THUNDERPUNCH, TOXIC, WATER_PULSE, ZEN_HEADBUTT, SINGE, FLY
	; end
