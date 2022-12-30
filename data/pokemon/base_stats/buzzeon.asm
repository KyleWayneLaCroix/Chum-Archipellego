 db BUZZEON

	db  95, 130,  65, 110,  60,  65
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/buzzeon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BITE, BODY_SLAM, DIG, DOUBLE_EDGE, FLASH, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, POISON_JAB, RETURN, PLAY_ROUGH, SIGNAL_BEAM, GIGA_DRAIN, FLY, SUBSTITUTE, ZEN_HEADBUTT, SWIFT, TOXIC
	; end
