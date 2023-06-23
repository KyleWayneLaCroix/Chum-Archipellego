 db ZACIAN

	db  92, 170, 115, 148,  80, 115
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, STEEL ; type
	db 20 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 120 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zacian/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BITE, GIGA_IMPACT, IRON_HEAD, MOONBLAST, SUBMISSION, DIG, HYPER_BEAM, HYPER_VOICE, PLAY_ROUGH, SLEEP_TALK, SUBSTITUTE, SWIFT
	; end
