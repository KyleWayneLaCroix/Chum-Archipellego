 db CHERRIM

	db  70,  60,  70,  85,  87,  78
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 75 ; catch rate
	db 158 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cherrim/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ENERGY_BALL, FLASH, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, PLAY_ROUGH, RETURN, SLEEP_TALK, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, TOXIC
	; end
