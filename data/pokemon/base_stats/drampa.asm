 db DRAMPA

	db  78,  60,  85,  36, 135,  91
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, DRAGON ; type
	db 70 ; catch rate
	db 170 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/drampa/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, CALM_MIND, EARTHQUAKE, ENERGY_BALL, FIRE_BLAST, FLAMETHROWER, FLY, GIGA_IMPACT, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, PLAY_ROUGH, RAIN_DANCE, RETURN, ROCK_SLIDE, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SURF, SWIFT, THUNDER, THUNDERBOLT, TOXIC
	; end
