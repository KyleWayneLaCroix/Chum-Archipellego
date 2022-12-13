 db SAWSBUCK

	db  80, 100,  70,  95,  60,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, GRASS ; type
	db 75 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sawsbuck/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CUT, DOUBLE_EDGE, ENERGY_BALL, FLASH, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
