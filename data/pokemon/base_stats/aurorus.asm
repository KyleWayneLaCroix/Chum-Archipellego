 db AURORUS

	db 123,  77,  72,  58,  99,  92
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ICE ; type
	db 45 ; catch rate
	db 104 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 30 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aurorus/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BLIZZARD, BODY_SLAM, CALM_MIND, DARK_PULSE, EARTHQUAKE, FLASH, GIGA_IMPACT, HAIL, HAIL, HIDDEN_POWER, HYPER_BEAM, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, ICE_BEAM, IRON_HEAD, PSYCHIC_M, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, SUBSTITUTE, THUNDER, THUNDERBOLT, TOXIC, ZEN_HEADBUTT
	; end
