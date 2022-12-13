 db LITLEO

	db  62,  50,  58,  72,  73,  54
	;   hp  atk  def  spd  sat  sdf

	db FIRE, NORMAL ; type
	db 220 ; catch rate
	db 74 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/litleo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DARK_PULSE, DIG, FIRE_BLAST, FLAMETHROWER, HEADBUTT, HIDDEN_POWER, HYPER_VOICE, RAIN_DANCE, RETURN, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
