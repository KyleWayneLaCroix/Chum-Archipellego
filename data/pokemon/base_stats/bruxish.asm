 db BRUXISH

	db  68, 105,  70,  92,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 80 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bruxish/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, CALM_MIND, GIGA_IMPACT, HIDDEN_POWER, ICE_BEAM, PSYCHIC_M, RAIN_DANCE, RETURN, SLEEP_TALK, SUBSTITUTE, SURF, TOXIC, WATERFALL, WATERFALL
	; end
