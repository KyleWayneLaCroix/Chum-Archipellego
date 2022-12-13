 db GARBODOR

	db  80,  95,  82,  75,  60,  82
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 60 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/garbodor/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, DARK_PULSE, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, PSYCHIC_M, RAIN_DANCE, RETURN, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, THUNDERBOLT, TOXIC
	; end
