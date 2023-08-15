 db PORYGON_Z

	db  90,  80,  70,  95, 135,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GLITCH ; type
	db 35 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/porygon_z/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HYPER_BEAM, PSYBEAM, SHOCK_WAVE, SIGNAL_BEAM, BLIZZARD, DARK_PULSE, FLASH, GIGA_IMPACT, HIDDEN_POWER, ICE_BEAM, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, THUNDER, THUNDERBOLT, TOXIC, ZEN_HEADBUTT
	; end
