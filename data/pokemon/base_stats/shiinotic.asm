 db SHIINOTIC

	db  60,  45,  80,  30,  90, 100
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FAIRY ; type
	db 75 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/shiinotic/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DAZZLE_BEAM, ENERGY_BALL, FLASH, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, MOONBLAST, RAIN_DANCE, RETURN, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
