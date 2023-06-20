 db RAPIDASH

	db  65, 100,  70, 105,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 60 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/rapidash/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DAZZLE_BEAM, PSYBEAM, PSYCHIC_M, ZEN_HEADBUTT, BODY_SLAM, CALM_MIND, GIGA_IMPACT, HYPER_BEAM, PLAY_ROUGH, SLEEP_TALK, SUBSTITUTE, SWIFT
	; end
