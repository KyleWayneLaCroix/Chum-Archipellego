 db GRAPPLOCT

	db  80, 118,  90,  42,  70,  80
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/grapploct/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, DIG, GIGA_IMPACT, HYDRO_PUMP, HYPER_BEAM, ICE_PUNCH, SLEEP_TALK, SUBMISSION, SUBSTITUTE, SURF, WATERFALL, WHIRLPOOL
	; end
