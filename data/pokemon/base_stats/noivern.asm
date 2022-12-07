 db NOIVERN

	db  85,  70,  80, 123,  97,  80
	;   hp  atk  def  spd  sat  sdf

	db FLYING, DRAGON ; type
	db 45 ; catch rate
	db 187 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/noivern/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm BITE, CUT, DARK_PULSE, FLAMETHROWER, FLY, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, HYPER_VOICE, PSYCHIC_M, RETURN, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC
	; end
