 db HEATMOR

	db  85,  97,  66,  65, 105,  66
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 90 ; catch rate
	db 169 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/heatmor/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, CUT, DIG, FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, RAIN_DANCE, RETURN, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
