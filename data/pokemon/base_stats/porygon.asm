 db PORYGON

	db  65,  60,  70,  40,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 80 ; catch rate
	db 79 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/porygon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, DOUBLE_EDGE, FLASH, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, PSYBEAM, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SHOCK_WAVE, SIGNAL_BEAM, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, THUNDER, THUNDERBOLT, TOXIC, ZEN_HEADBUTT
	; end
