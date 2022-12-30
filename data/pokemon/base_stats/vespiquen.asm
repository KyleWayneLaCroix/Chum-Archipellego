 db VESPIQUEN

	db  70,  80, 102,  40,  80, 102
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/vespiquen/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm DOUBLE_EDGE, DARK_PULSE, POISON_JAB, RAIN_DANCE, SLEEP_TALK, SUBSTITUTE, GIGA_IMPACT, HYPER_BEAM, TOXIC, TOXIC, HIDDEN_POWER, SWIFT
	; end
