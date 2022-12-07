 db METANG

	db  60,  75, 100,  50,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db STEEL, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/metang/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, CUT, EARTHQUAKE, FLASH, HIDDEN_POWER, HYPER_BEAM, HYPER_BEAM, ICE_PUNCH, IRON_HEAD, IRON_HEAD, PSYCHIC_M, PSYCHIC_M, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SHADOW_BALL, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC, ZEN_HEADBUTT, ZEN_HEADBUTT
	; end
