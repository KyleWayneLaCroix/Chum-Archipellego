 db ARCANINE

	db  90, 110,  80,  95, 100,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 194 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/arcanine/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BITE, BODY_SLAM, DIG, DOUBLE_EDGE, FIRE_BLAST, FLAMETHROWER, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, IRON_HEAD, PLAY_ROUGH, RETURN, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC, SINGE
	; end
