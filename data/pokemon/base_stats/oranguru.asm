 db ORANGURU

	db  90,  60,  80,  60,  90, 110
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/oranguru/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, CALM_MIND, EARTHQUAKE, ENERGY_BALL, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, PSYCHIC_M, PSYCHIC_M, RAIN_DANCE, RETURN, ROCK_SLIDE, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, THUNDER, THUNDERBOLT, TOXIC, ZEN_HEADBUTT, ZEN_HEADBUTT
	; end
