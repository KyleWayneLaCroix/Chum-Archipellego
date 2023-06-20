 db MEWTHREE

	db 125, 150,  95, 130, 100,  95
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mewthree/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm PSYCHIC_M, ZEN_HEADBUTT, BLIZZARD, BODY_SLAM, CALM_MIND, DARK_PULSE, DAZZLE_BEAM, DOUBLE_EDGE, FIRE_PUNCH, ICE_PUNCH, THUNDERPUNCH, GIGA_IMPACT, POISON_JAB, PLAY_ROUGH, RETURN, SUBMISSION, SUBSTITUTE, SWIFT, TOXIC
	; end
