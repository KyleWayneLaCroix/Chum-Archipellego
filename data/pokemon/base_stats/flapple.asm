 db FLAPPLE

	db  70, 110,  80,  70,  95,  60
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DRAGON ; type
	db 45 ; catch rate
	db 170 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/flapple/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_PLANT, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm ENERGY_BALL, FLY, GIGA_DRAIN, GIGA_IMPACT, HYPER_BEAM, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY
	; end
