 db TANGROWTH

	db 100, 100, 125,  50, 110,  50
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 30 ; catch rate
	db 187 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tangrowth/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, CUT, EARTHQUAKE, ENERGY_BALL, FLASH, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, POISON_JAB, RETURN, ROCK_SLIDE, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
