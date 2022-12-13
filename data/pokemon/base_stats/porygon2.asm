 db PORYGON2

	db  85,  80,  90,  60, 105,  95
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/porygon2/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, FLASH, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, PSYBEAM, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SHOCK_WAVE, SIGNAL_BEAM, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, THUNDER, THUNDERBOLT, TOXIC, ZEN_HEADBUTT
	; end
